#!/bin/sh

NAME=test
IMAGE_ID=6ba27a59-ecd7-47d4-8df4-925acb23bb87
FLOATING_IP=7517cbd2-2d07-44ad-8eaa-b9ec7098071a
FLAVOR_ID=2
KEYPAIR_NAME=server-230
NETWORK_ID=e478bc87-a067-402f-98e2-9bdc9b180d5e

# Create master node group template
cat > spark-master-node-group-template.json <<EOF
{
    "auto_security_group": true,
    "availability_zone": "",
    "description": "spark 1.6.0 master node group",
    "flavor_id": "${FLAVOR_ID}",
    "floating_ip_pool": "${FLOATING_IP}",
    "hadoop_version": "1.6.0",
    "image_id": "${IMAGE_ID}",
    "is_protected": false,
    "is_proxy_gateway": false,
    "is_public": true,
    "name": "${NAME}-master",
    "node_configs": {
        "HDFS": {}
    },
    "node_processes": [
        "namenode",
        "master"
    ],
    "plugin_name": "spark",
    "security_groups": [],
    "shares": [],
    "use_autoconfig": true,
    "volumes_per_node": 1,
    "volumes_size": 20
}
EOF

echo $NAME-master:
cat spark-master-node-group-template.json
sahara node-group-template-create --json spark-master-node-group-template.json 2>/dev/null

# Create worker node group template
cat > spark-worker-node-group-template.json <<EOF
{
    "auto_security_group": true,
    "availability_zone": "",
    "description": "spark 1.6.0 master node group",
    "flavor_id": "2",
    "floating_ip_pool": "${FLOATING_IP}",
    "hadoop_version": "1.6.0",
    "image_id": "${IMAGE_ID}",
    "is_protected": false,
    "is_proxy_gateway": false,
    "is_public": true,
    "name": "${NAME}-worker",
    "node_configs": {
        "HDFS": {}
    },
    "node_processes": [
        "datanode",
        "slave"
    ],
    "plugin_name": "spark",
    "security_groups": [],
    "shares": [],
    "use_autoconfig": true,
    "volumes_per_node": 1,
    "volumes_size": 20
}
EOF

echo $NAME-worker:
cat spark-worker-node-group-template.json
sahara node-group-template-create --json spark-worker-node-group-template.json

SPARK_MASTER_GROUP_ID=$(sahara node-group-template-list  2>/dev/null | grep -P -- "\s$NAME-master\s" | awk '{print $4}')
SPARK_WORKER_GROUP_ID=$(sahara node-group-template-list  2>/dev/null | grep -P -- "\s$NAME-worker\s" | awk '{print $4}')

# Create cluster template

cat >spark-cluster-template.json <<EOF
{
    "anti_affinity": [],
    "cluster_configs": {
        "HDFS": {
            "dfs.replication": 1
        },
        "Spark": {},
        "general": {
            "Enable XFS": true
        }
    },
    "description": "spark 1.6.0",
    "hadoop_version": "1.6.0",
    "is_protected": false,
    "is_public": true,
    "name": "${NAME}-cluster-template",
    "node_groups": [
        {
            "count": 1,
            "name": "${NAME}-master",
            "node_group_template_id": "${SPARK_MASTER_GROUP_ID}"
        },
        {
            "count": 1,
            "name": "${NAME}-worker",
            "node_group_template_id": "${SPARK_WORKER_GROUP_ID}"
        }
    ],
    "plugin_name": "spark",
    "shares": [],
    "use_autoconfig": true
}
EOF

echo $NAME-cluster-template:
cat spark-cluster-template.json
sahara cluster-template-create --json spark-cluster-template.json

# Create cluster
CLUSTER_TEMPLATE_ID=$(sahara cluster-template-list 2>/dev/null | grep -P "\s${NAME}-cluster-template\s" | awk '{print $4}')
cat >spark_cluster.json <<EOF
{
    "cluster_template_id": "${CLUSTER_TEMPLATE_ID}",
    "default_image_id": "${IMAGE_ID}",
    "description": "",
    "hadoop_version": "1.6.0",
    "is_protected": false,
    "is_public": true,
    "name": "${NAME}",
    "neutron_management_network": "${NETWORK_ID}",
    "plugin_name": "spark",
    "user_keypair_id": "${KEYPAIR_NAME}"
}
EOF

echo $NAME:
cat spark_cluster.json
sahara cluster-create --json spark_cluster.json
