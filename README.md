[English](README.md)

# Openstack Cheat Sheet

## OpenStack项目

当前最新为Ocata版本, 数据来源于https://www.openstack.org/software/project-navigator, 点击查看[完整JSON数据](openstack_services_format.json)。

### 管理工具

|名称|LOGO|服务|年龄|部署率|成熟度|
|----|----|----|----|----|----|
|[Horizon](https://wiki.openstack.org/wiki/Horizon)|![horizon](https://www.openstack.org/software/images/mascots/horizon.png)|Dashboard|6年|87%|6/7|
|[OSclient (CLI)](https://wiki.openstack.org/wiki/OSclient)|![osclient-(cli)](https://www.openstack.org/software/images/mascots/osclient-(cli).png)|Command-line client|1年|0%|0/7|
|[Rally](https://wiki.openstack.org/wiki/Rally)|![rally](https://www.openstack.org/software/images/mascots/rally.png)|Benchmark service|1年|23%|0/7|
|[Senlin](https://wiki.openstack.org/wiki/Senlin)|![senlin](https://www.openstack.org/software/images/mascots/senlin.png)|Clustering service|1年|0%|0/7|
|[Vitrage](https://wiki.openstack.org/wiki/Vitrage)|![vitrage](https://www.openstack.org/software/images/mascots/vitrage.png)|RCA (Root Cause Analysis service)|1年|0%|0/7|
|[Watcher](https://wiki.openstack.org/wiki/Watcher)|![watcher](https://www.openstack.org/software/images/mascots/watcher.png)|Optimization Service|1年|0%|0/7|

### 网络 & 内容分发

|名称|LOGO|服务|年龄|部署率|成熟度|
|----|----|----|----|----|----|
|[Neutron](https://wiki.openstack.org/wiki/Neutron)|![neutron](https://www.openstack.org/software/images/mascots/neutron.png)|Networking|5年|93%|7/7|
|[Designate](https://wiki.openstack.org/wiki/Designate)|![designate](https://www.openstack.org/software/images/mascots/designate.png)|DNS Service|3年|16%|3/7|
|[Dragonflow](https://wiki.openstack.org/wiki/Dragonflow)|![dragonflow](https://www.openstack.org/software/images/mascots/dragonflow.png)|Neutron Plugin|2年|0%|0/7|
|[Kuryr](https://wiki.openstack.org/wiki/Kuryr)|![kuryr](https://www.openstack.org/software/images/mascots/kuryr.png)|Container plugin|1年|0%|1/7|
|[Octavia](https://wiki.openstack.org/wiki/Octavia)|![octavia](https://www.openstack.org/software/images/mascots/octavia.png)|Load Balancer|1年|0%|1/7|
|[Tacker](https://wiki.openstack.org/wiki/Tacker)|![tacker](https://www.openstack.org/software/images/mascots/tacker.png)|NFV Orchestration|1年|0%|1/7|
|[Tricircle](https://wiki.openstack.org/wiki/Tricircle)|![tricircle](https://www.openstack.org/software/images/mascots/tricircle.png)|Networking Automation for Multi-Region Deployments|1年|0%|0/7|

### 部署工具

|名称|LOGO|服务|年龄|部署率|成熟度|
|----|----|----|----|----|----|
|[Chef OpenStack](https://wiki.openstack.org/wiki/Chef)|![chef-openstack](https://www.openstack.org/software/images/mascots/chef-openstack.png)|Chef cookbooks for OpenStack|1年|0%|1/7|
|[Kolla](https://wiki.openstack.org/wiki/Kolla)|![kolla](https://www.openstack.org/software/images/mascots/kolla.png)|Container deployment|1年|12%|1/7|
|[OpenStack Charms](https://wiki.openstack.org/wiki/OpenStack)|![openstack-charms](https://www.openstack.org/software/images/mascots/openstack-charms.png)|Juju Charms for OpenStack|1年|0%|0/7|
|[OpenStack-Ansible](https://wiki.openstack.org/wiki/OpenStack-Ansible)|![openstack-ansible](https://www.openstack.org/software/images/mascots/openstack-ansible.png)|Ansible Playbooks for OpenStack|1年|0%|0/7|
|[Puppet OpenStack](https://wiki.openstack.org/wiki/Puppet)|![puppet-openstack](https://www.openstack.org/software/images/mascots/puppet-openstack.png)|Puppet Modules for OpenStack|1年|0%|0/7|
|[TripleO](https://wiki.openstack.org/wiki/TripleO)|![tripleo](https://www.openstack.org/software/images/mascots/tripleo.png)|Deployment service|1年|9%|0/7|

### 安全 & 认证

|名称|LOGO|服务|年龄|部署率|成熟度|
|----|----|----|----|----|----|
|[Keystone](https://wiki.openstack.org/wiki/Keystone)|![keystone](https://www.openstack.org/software/images/mascots/keystone.png)|Identity service|6年|96%|6/7|
|[Barbican](https://wiki.openstack.org/wiki/Barbican)|![barbican](https://www.openstack.org/software/images/mascots/barbican.png)|Key Management|4年|9%|4/7|
|[Congress](https://wiki.openstack.org/wiki/Congress)|![congress](https://www.openstack.org/software/images/mascots/congress.png)|Governance|2年|2%|1/7|
|[Mistral](https://wiki.openstack.org/wiki/Mistral)|![mistral](https://www.openstack.org/software/images/mascots/mistral.png)|Workflow service|1年|5%|1/7|

### 数据 & 分析

|名称|LOGO|服务|年龄|部署率|成熟度|
|----|----|----|----|----|----|
|[Trove](https://wiki.openstack.org/wiki/Trove)|![trove](https://www.openstack.org/software/images/mascots/trove.png)|Database as a Service|4年|13%|3/7|
|[Sahara](https://wiki.openstack.org/wiki/Sahara)|![sahara](https://www.openstack.org/software/images/mascots/sahara.png)|Big Data Processing Framework Provisioning|3年|10%|3/7|
|[Searchlight](https://wiki.openstack.org/wiki/Searchlight)|![searchlight](https://www.openstack.org/software/images/mascots/searchlight.png)|Indexing and Search|1年|0%|0/7|

### 存储 & 备份 & 恢复

|名称|LOGO|服务|年龄|部署率|成熟度|
|----|----|----|----|----|----|
|[Swift](https://wiki.openstack.org/wiki/Swift)|![swift](https://www.openstack.org/software/images/mascots/swift.png)|Object Store|7年|52%|6/7|
|[Cinder](https://wiki.openstack.org/wiki/Cinder)|![cinder](https://www.openstack.org/software/images/mascots/cinder.png)|Block Storage|5年|88%|7/7|
|[Manila](https://wiki.openstack.org/wiki/Manila)|![manila](https://www.openstack.org/software/images/mascots/manila.png)|Shared Filesystems|3年|14%|5/7|
|[Karbor](https://wiki.openstack.org/wiki/Karbor)|![karbor](https://www.openstack.org/software/images/mascots/karbor.png)|Application Data Protection as a Service|1年|0%|0/7|
|[Freezer](https://wiki.openstack.org/wiki/Freezer)|![freezer](https://www.openstack.org/software/images/mascots/freezer.png)|Backup, Restore, and Disaster Recovery|2年|0%|0/7|

### 计算

|名称|LOGO|服务|年龄|部署率|成熟度|
|----|----|----|----|----|----|
|[Nova](https://wiki.openstack.org/wiki/Nova)|![nova](https://www.openstack.org/software/images/mascots/nova.png)|Compute Service|7年|95%|7/7|
|[Glance](https://wiki.openstack.org/wiki/Glance)|![glance](https://www.openstack.org/software/images/mascots/glance.png)|Image Service|7年|95%|5/7|
|[Ironic](https://wiki.openstack.org/wiki/Ironic)|![ironic](https://www.openstack.org/software/images/mascots/ironic.png)|Bare Metal Provisioning Service|3年|21%|5/7|
|[Magnum](https://wiki.openstack.org/wiki/Magnum)|![magnum](https://www.openstack.org/software/images/mascots/magnum.png)|Container Orchestration Engine Provisioning|2年|11%|2/7|
|[Storlets](https://wiki.openstack.org/wiki/Storlets)|![storlets](https://www.openstack.org/software/images/mascots/storlets.png)|Computable Object Store|1年|0%|0/7|
|[Zun](https://wiki.openstack.org/wiki/Zun)|![zun](https://www.openstack.org/software/images/mascots/zun.png)|Container Management Service|1年|0%|1/7|

### 应用服务

|名称|LOGO|服务|年龄|部署率|成熟度|
|----|----|----|----|----|----|
|[Heat](https://wiki.openstack.org/wiki/Heat)|![heat](https://www.openstack.org/software/images/mascots/heat.png)|Orchestration|5年|67%|5/7|
|[Zaqar](https://wiki.openstack.org/wiki/Zaqar)|![zaqar](https://www.openstack.org/software/images/mascots/zaqar.png)|Messaging Service|3年|4%|4/7|
|[Murano](https://wiki.openstack.org/wiki/Murano)|![murano](https://www.openstack.org/software/images/mascots/murano.png)|Application Catalog|2年|11%|1/7|
|[Solum](https://wiki.openstack.org/wiki/Solum)|![solum](https://www.openstack.org/software/images/mascots/solum.png)|Software Development Lifecycle Automation|1年|2%|0/7|

### 监控 & 计量

|名称|LOGO|服务|年龄|部署率|成熟度|
|----|----|----|----|----|----|
|[Ceilometer](https://wiki.openstack.org/wiki/Ceilometer)|![ceilometer](https://www.openstack.org/software/images/mascots/ceilometer.png)|Metering & Data Collection Service|5年|55%|1/7|
|[CloudKitty](https://wiki.openstack.org/wiki/CloudKitty)|![cloudkitty](https://www.openstack.org/software/images/mascots/cloudkitty.png)|Billing and chargebacks|1年|0%|0/7|
|[Monasca](https://wiki.openstack.org/wiki/Monasca)|![monasca](https://www.openstack.org/software/images/mascots/monasca.png)|Monitoring|1年|0%|0/7|
|[aodh](https://wiki.openstack.org/wiki/aodh)|![aodh](https://www.openstack.org/software/images/mascots/aodh.png)|Alarming Service|1年|0%|0/7|
|[panko](https://wiki.openstack.org/wiki/panko)|![panko](https://www.openstack.org/software/images/mascots/panko.png)|Event, Metadata Indexing Service|7年|0%|0/7|

## OpenStack服务与AWS服务对比

|OpenStack|AWS|Service|Description|
|---------|---|-------|-----------|
|Keystone|AWS IAM|认证服务|身份验证、服务规则和服务令牌|
|Glance|AMI|镜像服务|镜像仓库，负责镜像的上传、注册、检索、元数据管理以及下载等功能|
|Nova|EC2|计算服务|管理计算资源，包括虚拟机以及裸机实例。|
|Neutron|Networking|网络服务|提供虚拟网络服务。|
|Cinder|EBS|块存储服务|为虚拟机提供弹性云硬盘功能。|
|Swift|S3|对象存储服务|对象存储服务，类似于百度网盘功能。|
|Mistral|Amazon SWF|工作流(Workflow)服务|任务编排以及定时任务管理，比如定时备份、定时开关机等。|
|Sahara|EMR|大数据服务|Hadoop/Spark集群的部署以及Job提交。|
|Trove|ElastiCache & RDS|数据库服务|提供弹性的数据库服务，支持Mysql、Redis等数据库。|
|Ceilometer|CloudWatch|资源监控服务|资源监控服务，收集各个组件的资源使用情况。|
|Heat|CloudFormation|资源编排服务|使用模板批量管理资源|
|Senlin|Auto Scaling|集群弹性伸缩服务|支持资源的弹性水平和垂直扩展功能|
|Zaqar|SQS & SNS|消息队列服务、消息推送服务|
|Ironic|-|裸机服务|管理裸机资源|AWS和OpenStack分别使用EC2和Nova管理裸机实例|
|Magnum|-|容器编排服务|创建和管理Swarm、k8s等容器编排服务|
|Zun|ECS(Amazon EC2 Container Service)|容器服务|提供容器管理服务|
|Designate|Route 53|DNS服务|提供了云域名系统|
|Barbican|-|密钥管理服务|-|
|Congress|-|policy as a service|基于异构云环境的策略声明、监控、实施、审计的框架|
|Horizon|AWS console|面板服务|控制台，为OpenStack的提供Web UI界面管理资源|
|Cloudkitty|Billing|计费服务|                                     
|Freezer|[Freezer](https://github.com/stevegury/freezer)（非官方）|备份服务|文件系统、数据库数据、虚拟机、磁盘自动增量备份到Swift中|
|Manila|EFS|文件共享服务|提供文件系统共享服务，如NFS|
|Murano|AWS Service Catalog|应用目录服务|类似应用商城，通过统一的框架和API实现应用程序快速部署和应用程序生命周期管理的功能，比如部署Apache HTTP服务
|Searchlight|-|搜索服务|OpenStack的资源在Elasticsearch建立索引，提供快速搜索OpenStack平台上的资源|
|Solum|-|-|在OpenStack IaaS平台上，构建PaaS层的持续集成/持续交付（CI/CD）应用，可以简单理解为是一个应用程序App的集成开发平台|
|Tacker||NFV Orchestrator service||
|Tricircle||networking automation|实现多区域OpenStack平台的Neutron网络管理|
|Vitrage|-|RCA (Root Cause Analysis) service，平台问题定位分析服务|用于组织、分析和扩展OpenStack的告警和事件，在真正的问题发生前找到根本原因|
|Watcher|-|资源优化服务|根据一定的策略、目标以及采集的数据生成资源优化策略|
|[Karbor](https://wiki.openstack.org/wiki/Karbor)||Application Data Protection as a Service||


## 官方资源

* [主页](http://www.openstack.org/)
* [git源码地址](http://git.openstack.org/cgit)
* [Github源码镜像](https://github.com/openstack/openstack)
* [组件项目](http://governance.openstack.org/reference/projects/index.html) (Big Tent Governance)
* [官方文档](http://docs.openstack.org/)
* [邮件列表](http://lists.openstack.org/cgi-bin/mailman/listinfo)
* [IRC(freenode)](https://wiki.openstack.org/wiki/IRC)
* [Code review](https://review.openstack.org)
* [Roadmap](https://www.openstack.org/software/roadmap/)
* [Wiki](https://wiki.openstack.org/wiki/Main_Page)
* [Blueprints](https://blueprints.launchpad.net/openstack)
* [Bugs](https://bugs.launchpad.net/openstack)
* [支持公司](https://www.openstack.org/foundation/companies/) (Companies Supporting The OpenStack Foundation)
* [贡献统计(来源于stacklytics)](http://stackalytics.com/) (Provide transparent and meaningful statistics regarding contributions to both OpenStack itself and projects related to OpenStack.)
* [社区开发文档](http://docs.openstack.org/infra/manual/developers.html)(一步步教你如何加入社区开发)
* [代码提交测试](http://docs.openstack.org/infra/manual/sandbox.html#sandbox)(新手代码提交测试，新手可以通过此熟悉代码提交流程)
* [git commit message规范](https://wiki.openstack.org/wiki/GitCommitMessages#Summary_of_GIT_commit_message_structure)(提交代码时必须遵循的message的规范)
* [Openstack代码规范](http://docs.openstack.org/developer/hacking/#creating-unit-tests)(**Openstack代码规范，开发人员必读**)
* [Openstack各个组件的成熟度和热度统计](http://www.openstack.org/software/project-navigator)
* [Openstack版本列表](https://releases.openstack.org/)(可以查看数字版本对应Openstack版本代号，如Nova版本的13.x.x对应mitaka版本)


## 成员

### 白金会员

Provide a significant portion of the funding to achieve the Foundation's mission of protecting, empowering and promoting the OpenStack community and software. Each Platinum Member's company strategy aligns with the OpenStack mission and is responsible for committing full-time resources toward the project. There are **eight Platinum Members** at any given time, each of which holds a seat on the Board of Directors.

* [AT&T](http://www.att.com/)
* [Canonical](https://www.openstack.org/foundation/companies/profile/canonical)
* [Hewlett Packard Enterprise](https://www.openstack.org/foundation/companies/profile/hewlett-packard-enterprise)
* [IBM](https://www.openstack.org/foundation/companies/profile/ibm)
* [Intel](http://www.intel.cn/content/www/cn/zh/homepage.html)
* [Rackspace](https://www.openstack.org/foundation/companies/profile/rackspace)
* [Red Hat, Inc.](https://www.openstack.org/foundation/companies/profile/page-0)
* [SUSE](https://www.openstack.org/foundation/companies/profile/suse)

### 黄金会员

Provide funding and pledge strategic alignment to the OpenStack mission. There can be up to twenty-four Gold Members at any given time, subject to board approval. 

* [Aptira](https://aptira.com/)
* [CCAT](https://www.openstack.org/foundation/companies/profile/ccat)
* [Cisco](https://www.openstack.org/foundation/companies/profile/cisco)
* [Dell](https://www.openstack.org/foundation/companies/profile/dell)
* [DreamHost](https://www.openstack.org/foundation/companies/profile/dreamhost)
* [EasyStack](https://www.openstack.org/foundation/companies/profile/easystack)
* [EMC](http://www.emc.com/en-us/index.htm)
* [Ericsson](https://www.openstack.org/foundation/companies/profile/ericsson)
* [Fujitsu](https://www.openstack.org/foundation/companies/profile/fujitsu)
* [Hitachi](https://www.openstack.org/foundation/companies/profile/Hitachi-Data-Systems)
* [Huawei](https://www.openstack.org/foundation/companies/profile/huawei)
* [inwinSTACK](https://www.openstack.org/foundation/companies/profile/inwinstack)
* [Juniper Networks](https://www.openstack.org/foundation/companies/profile/juniper-networks)
* [Mirantis](https://www.openstack.org/foundation/companies/profile/mirantis)
* [NEC](https://www.openstack.org/foundation/companies/profile/nec)
* [NetApp](https://www.openstack.org/foundation/companies/profile/netapp)
* [Symantec](https://www.openstack.org/foundation/companies/profile/symantec-8)
* [UnitedStack Inc.](https://www.openstack.org/foundation/companies/profile/unitedstack)
* [Virtuozzo](https://www.openstack.org/foundation/companies/profile/virtuozzo)
* [Yahoo Inc.](https://www.openstack.org/foundation/companies/profile/yahoo)

## 自动化部署

* [Devstack](http://docs.openstack.org/developer/devstack/)(Oneiric powered development environment for openstack.)
* [Fuel](https://www.mirantis.com/products/mirantis-openstack-software/)(The leading purpose-built open source deployment and management tool for OpenStack.)
* [RDO](https://www.rdoproject.org/)(A communiaty of people using and deploying OpenStack on CentOS, Fedora, and Red Hat Enterprise Linux.)
* [openstack-puppet](https://wiki.openstack.org/wiki/Puppet)(Bring scalable and reliable IT automation to OpenStack cloud deployments using puppet.)
* [openstack-ansible](https://github.com/openstack/openstack-ansible)(Ansible playbooks for deploying OpenStack.)
* [kolla](https://github.com/openstack/kolla)(Deploying OpenStack using Docker.)
* [TripleO](https://wiki.openstack.org/wiki/TripleO)(A program aimed at installing, upgrading and operating OpenStack clouds using OpenStacks own cloud facilities as the foundations.)
* [SaltStack](https://github.com/cloudbase/salt-openstack)(Deploying Openstack using saltstack.)
* [packstack](https://github.com/openstack/packstack) (Install utility to deploy openstack on multiple hosts.)

## 监控

* [cloudpulse](https://github.com/openstack/cloudpulse): Openstack服务状态监控
* [Vitrage](https://github.com/openstack/Vitrage): Openstack故障分析, 故障生成树
* [fuel-plugin-external-zabbix](https://github.com/openstack/fuel-plugin-external-zabbix): Fuel Openstack zabbix监控项目,包含所有的监控项
* [fuel-ostf](https://github.com/openstack/fuel-ostf): Fuel的集成测试、功能测试框架


## 竞争对手

* [AWS](https://aws.amazon.com)(Offers reliable, scalable, and inexpensive cloud computing services.)
* [CloudStack](https://cloudstack.apache.org/)(Open source software designed to deploy and manage large networks of virtual machines, as highly scalable Infrastructure as a Service (IaaS) cloud computing platform.)
* [Vmware](http://www.vmware.com/)(The industry-leading virtualization software company.)
* [Docker](https://www.docker.com)(Docker containers and tooling make building and shipping applications dramatically easier and faster.)

## 服务目录

|服务名称|服务类型|服务功能|监听端口|默认endpoints|
|------|------|------|------|------|
|ironic|baremetal|裸机服务|6385|http://${HOST}:6385
|ironic-inspector|裸机自动发现服务|5000|baremetal-introspection|http://${HOST}:5050
|cinder|volume|块存储服务|9776|http://${HOST}:8776/v2/%(tenant_id)s
|glance|image|镜像服务|9292|http://${HOST}:9292
|heat|orchestration|编排服务|8004|http://${HOST}:8004/v1/%(tenant_id)s
|heat-cfn|cloudformation|--|8000|http://${HOST}:8000/v1
|keystone|identity|认证服务|5000、35357|http://${HOST}:5000/v3
|magnum|container-infra|容器编排服务|9511|http://${HOST}:9511/v1
|mistral|workflow|工作流服务|9898|http://${HOST}:9898/v2
|neutron|network|网络服务|9696|http://${HOST}:9696
|nova|compute|计算服务|8774、8773、8775|http://${HOST}:8774/v2.1/%(tenant_id)s
|sahara|data-processing|大数据服务|8386|http://${HOST}:8386/v1.1/%(project_id)s
|swift|object-store|对象存储服务|8080|http://${HOST}:8080/v1/AUTH_%(tenant_id)s
|trove|database|数据库服务|8779|http://${HOST}:8779/v1.0/%(tenant_id)s|
|designate|dns|DNS服务|9001|http://${HOST}:9001/|
|barbican|key-manager|密钥服务|9311|http://${HOST}:9311/|
|zaqar|messaging|消息服务|8888|http://${HOST}:8888/|
|manila|share|文件共享服务|8786|http://${HOST}:8786/v1/%\(tenant_id\)s|
|aodh|alarming|告警服务|8042|http://${HOST}:8042|
|cloudkitty|rating|计费服务|8889|http://${HOST}:8889|
|ceilometer|metering|计量服务|8777|http://${HOST}:8777|

## 服务初始化模板--以cinder为例

初始化数据库:

```sql
CREATE DATABASE cinder;
GRANT ALL PRIVILEGES ON cinder.* TO 'cinder'@'localhost' IDENTIFIED BY 'CINDER_DBPASS';
GRANT ALL PRIVILEGES ON cinder.* TO 'cinder'@'%' IDENTIFIED BY 'CINDER_DBPASS';
```

创建账户:

```sh
openstack user create --domain default --password CINDER_PASS cinder
openstack role add --project service --user cinder admin
```

创建endpoints:

```sh
openstack service create --name cinder \
  --description "OpenStack Block Storage" volume

openstack endpoint create --region RegionOne \
  volume public 'http://controller:8776/v2/%(tenant_id)s'

openstack endpoint create --region RegionOne \
  volume admin 'http://controller:8776/v2/%(tenant_id)s'

openstack endpoint create --region RegionOne \
  volume internal 'http://controller:8776/v2/%(tenant_id)s'
```

## keystore

## glance

## nova

### 创建Ceph secret:

```sh
#!/bin/sh

USERNAME=${1:-admin}
UUID=${2:-$(uuidgen)}

# 生成secret.xml文件
cat > secret.xml <<EOF
<secret ephemeral='no' private='no'>
  <uuid>${UUID}</uuid>
  <usage type='ceph'>
    <name>client.${USERNAME} secret</name>
  </usage>
</secret>
EOF

# 基于xml文件创建secret
UUID=$(sudo virsh secret-define --file secret.xml | grep -Po '\w{8}-(\w{4}-){3}\w{12}')
if [ $? -ne 0 ]; then
    rm -f client."${USERNAME}".key secret.xml
    exit 1
fi

# 获取ceph client的密钥
KEY=$(ceph auth get-key client."${USERNAME}")
if [ $? -ne 0 ]; then
    sudo virsh secret-undefine "${UUID}"
    exit 1
fi

# 关联密钥到新创建的secret
sudo virsh secret-set-value --secret "${UUID}" --base64 "${KEY}" >/dev/null \
    && rm -f client."${USERNAME}".key secret.xml

echo "Secret $UUID create sucessfully!"
```

**👉[scripts/create_libvirt_ceph_secret.sh](scripts/create_libvirt_ceph_secret.sh).**

### Tips

列出所有的错误云主机:

```
nova list --status error --all-tenants
```

列出主机和映射的宿主机:

```
nova list --fields name,host
```

获取所有主机的id:

```
nova list --minimal | tail -n +4 | head -n -1 | cut -d ' ' -f 2
```

获取所有error状态的主机id:

```
nova list --minimal --status error --all-tenants | tail -n +4 | head -n -1 | cut -d ' ' -f 2
```

获取所有名称以"test"开头的主机:

```
nova list --name "^test"
```

获取所有主机挂载的volume id:

```
nova show --minimal 65e761b3-63b4-498f-9735-08e246c1e976 | grep 'os-extended-volumes:volumes_attached' | cut -d '|' -f 3 | jq '.[].id' | sed 's/"//g'
```

获取所有主机挂载的volume id以及设备名称:

```
nova show --minimal | grep 'os-extended-volumes:volumes_attached' | cut -d '|' -f 3 | jq '.[]|.id + " " + .device_name' | sed 's/"//g'
```


## cinder

获取所有error状态的实例:

```
cinder list --status error --all-tenants | tail -n +4 | head -n -1 | cut -d '|' -f 2
```

## neutron

## swift

## trove

## sahara

### 镜像列表

* [sahara-image-elements](https://github.com/openstack/sahara-image-elements)(Disk image elements for Sahara.)
* 如果不想自己做镜像，这里提供现成的镜像下载: [prepared images](http://sahara-files.mirantis.com/images/upstream/).
* [Building Images for Vanilla Plugin](http://docs.openstack.org/developer/sahara/userdoc/vanilla_imagebuilder.html).
* [Building Images for Cloudera Plugin](http://docs.openstack.org/developer/sahara/userdoc/cdh_imagebuilder.html).

## manila

## magnum
