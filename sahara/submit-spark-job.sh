#!/bin/sh
JOB_NAME=int32bit-spark-wordcount.jar
BINARY_FILE=spark-wordcount.jar
INPUT=hdfs://int32bit-spark-spark-master-0:8020/user/ubuntu/hello.txt
OUTPUT=hdfs://int32bit-spark-spark-master-0:8020/user/ubuntu/output2
CLUSTER_UUID=27d3fc76-d913-4d64-8491-5fc0968efe90
MAIN_CLASS=sahara.edp.spark.SparkWordCount

# Upload job binary data
wget 'https://github.com/int32bit/openstack-cheat-sheet/raw/master/sahara/spark-wordcount.jar' -O ${BINARY_FILE}
sahara job-binary-data-create --name "${JOB_NAME}" --file "${BINARY_FILE}"

# Create job binary
DATA_ID=$(sahara job-binary-data-list 2>/dev/null | grep -P -- "\s${JOB_NAME}\s" | awk '{print $2}')
sahara job-binary-create --name "${JOB_NAME}" --url "internal-db://${DATA_ID}"

# Create job template
BINARY_ID=$(sahara job-binary-list | grep -P -- "\s${JOB_NAME}\s" | awk '{print $2}')
cat >spark-job-template.json <<EOF
{
    "description": "",
    "interface": [],
    "is_protected": false,
    "is_public": true,
    "libs": [],
    "mains": [
        "${BINARY_ID}"
    ],
    "name": "${JOB_NAME}-template",
    "type": "Spark"
}
EOF
sahara job-template-create --json spark-job-template.json

# Submit job
JOB_TEMPLATE_UUID=$(sahara job-template-list 2>/dev/null | grep -P -- "\s${JOB_NAME}-template\s" | awk '{print $2}')
cat >spark-job.json <<EOF
{
    "cluster_id": "${CLUSTER_UUID}",
    "is_protected": false,
    "is_public": true,
    "interface": {},
    "job_configs": {
        "args": [
            "${INPUT}",
            "${OUTPUT}"
        ],
        "configs": {
            "edp.hbase_common_lib": true,
            "edp.java.java_opts": "",
            "edp.java.main_class": "${MAIN_CLASS}",
            "edp.spark.adapt_for_swift": true,
            "edp.substitute_data_source_for_name": true,
            "edp.substitute_data_source_for_uuid": true
        }
    }
}
EOF

sahara job-create --job-template "${JOB_TEMPLATE_UUID}" --json spark-job.json
