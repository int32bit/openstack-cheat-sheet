# Openstack Cheat Sheet

## Official

* [Home](http://www.openstack.org/)
* [Source Code](http://git.openstack.org/cgit)
* [Github](https://github.com/openstack/openstack)
* [Projects](http://governance.openstack.org/reference/projects/index.html) (Big Tent Governance)
* [Docs](http://docs.openstack.org/)
* [Mailing lists](http://lists.openstack.org/cgi-bin/mailman/listinfo)
* [IRC(freenode)](https://wiki.openstack.org/wiki/IRC)
* [Code review](https://review.openstack.org)
* [Roadmap](https://www.openstack.org/software/roadmap/)
* [Wiki](https://wiki.openstack.org/wiki/Main_Page)
* [Blueprints](https://blueprints.launchpad.net/openstack)
* [Bugs](https://bugs.launchpad.net/openstack)
* [Companies](https://www.openstack.org/foundation/companies/) (Companies Supporting The OpenStack Foundation)
* [Contributions(stacklytics)](http://stackalytics.com/) (Provide transparent and meaningful statistics regarding contributions to both OpenStack itself and projects related to OpenStack.)

## Members

### Platinum Members

Provide a significant portion of the funding to achieve the Foundation's mission of protecting, empowering and promoting the OpenStack community and software. Each Platinum Member's company strategy aligns with the OpenStack mission and is responsible for committing full-time resources toward the project. There are **eight Platinum Members** at any given time, each of which holds a seat on the Board of Directors.

* [AT&T](http://www.att.com/)
* [Canonical](https://www.openstack.org/foundation/companies/profile/canonical)
* [Hewlett Packard Enterprise](https://www.openstack.org/foundation/companies/profile/hewlett-packard-enterprise)
* [IBM](https://www.openstack.org/foundation/companies/profile/ibm)
* [Intel](http://www.intel.cn/content/www/cn/zh/homepage.html)
* [Rackspace](https://www.openstack.org/foundation/companies/profile/rackspace)
* [Red Hat, Inc.](https://www.openstack.org/foundation/companies/profile/page-0)
* [SUSE](https://www.openstack.org/foundation/companies/profile/suse)

### Gold Members

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

## Automatic Deployment

* [Devstack](http://docs.openstack.org/developer/devstack/)(Oneiric powered development environment for openstack.)
* [Fuel](https://www.mirantis.com/products/mirantis-openstack-software/)(The leading purpose-built open source deployment and management tool for OpenStack.)
* [RDO](https://www.rdoproject.org/)(A communiaty of people using and deploying OpenStack on CentOS, Fedora, and Red Hat Enterprise Linux.)
* [openstack-puppet](https://wiki.openstack.org/wiki/Puppet)(Bring scalable and reliable IT automation to OpenStack cloud deployments using puppet.)
* [openstack-ansible](https://github.com/openstack/openstack-ansible)(Ansible playbooks for deploying OpenStack.)
* [kolla](https://github.com/openstack/kolla)(Deploying OpenStack using Docker.)
* [TripleO](https://wiki.openstack.org/wiki/TripleO)(A program aimed at installing, upgrading and operating OpenStack clouds using OpenStack's own cloud facilities as the foundations.)
* [SaltStack](https://github.com/cloudbase/salt-openstack)(Deploying Openstack using saltstack.)
* [packstack](https://github.com/openstack/packstack) (Install utility to deploy openstack on multiple hosts.)

## Vender

* [Mirantis](https://www.mirantis.com/)(Mirantis is the pure play OpenStack company, providing all the software, services, training and support you need to run a production deployment of OpenStack at scale.)
* [UnitedStack](https://www.ustack.com/)(UnitedStack is one of the most important hybrid cloud service providers, and its services have been highly appreciated by customers from all kinds of fields including Internet, resource, finance and manufacture.)
* [Rackspace](https://www.rackspace.com/)(OpenStack founding father. The company started OpenStack officially, along with NASA in 2010.
* [Red Hat](https://www.redhat.com/en/insights/openstack)(The leading contributor to OpenStack code among vendors for the Icehouse release)
* [Nebula](https://www.nebula.com/)(Has been shut down)
* [easystack](http://www.easystack.cn/)(OpenStack cloud platform and services provider, founded in Feb.2014.)
* [UMCloud](http://www.umcloud.com/)(A joint venture of Mirantis and Ucloud in China.)
* [inwinSTACK](www.inwinstack.com)(The largest open source RD center in Taiwan, striving to do everything in open source.)

## Competitors

* [AWS](https://aws.amazon.com)(Offers reliable, scalable, and inexpensive cloud computing services.)
* [CloudStack](https://cloudstack.apache.org/)(Open source software designed to deploy and manage large networks of virtual machines, as highly scalable Infrastructure as a Service (IaaS) cloud computing platform.)
* [Vmware](http://www.vmware.com/)(The industry-leading virtualization software company.)
* [Docker](https://www.docker.com)(Docker containers and tooling make building and shipping applications dramatically easier and faster.)

## keystore

## glance

* [images registry](http://apps.openstack.org/#tab=glance-images): Download images, like `Ubuntu`, `CentOS`,`Sahara Apache Spark 1.0.0`,etc.

## nova

### Tips

List all `error` servers:

```
nova list --status error --all-tenants
```

List all servers and their mapped host:

```
nova list --fields name,host
```

List IDs of servers:

```
nova list --minimal | tail -n +4 | head -n -1 | cut -d ' ' -f 2
```

List IDs of servers with `error` status:

```
nova list --minimal --status error --all-tenants | tail -n +4 | head -n -1 | cut -d ' ' -f 2
```

List all the servers whose name starts with "test":

```
nova list --name "^test"
```

Attached volumes' ID:

```
nova show --minimal 65e761b3-63b4-498f-9735-08e246c1e976 | grep 'os-extended-volumes:volumes_attached' | cut -d '|' -f 3 | jq '.[].id' | sed 's/"//g'
```

Attached volumes' ID and the mapped device name:

```
nova show --minimal | grep 'os-extended-volumes:volumes_attached' | cut -d '|' -f 3 | jq '.[]|.id + " " + .device_name' | sed 's/"//g'
```


## cinder

List ID of `error` volumes:

```
cinder list --status error --all-tenants | tail -n +4 | head -n -1 | cut -d '|' -f 2
```

List all the snapshots of the volume specified by ID:

```
cinder snapshot-list --volume-id 2ad21c7d-dbef-49a9-ba6c-64c258101eb0 | grep -P "\w{8}-\w{4}" | cut -d ' ' -f 2
```

List all the snapshots of the volume specified by name:

```
cinder list | grep "YOUR_VOLUME_NAME" | awk '{system("cinder snapshot-list --volume-id " $2)}' | grep -P "\w{8}-\w{4}" | cut -d ' ' -f 2
```

Remove all the snapshots of the volume specified by name:

```
cinder list  | grep 'YOUR_VOLUME_NAME' | awk '{system("cinder snapshot-list | grep " $2)}' | awk '{system("cinder snapshot-delete " $2)}'
```

## neutron

## swift

## trove

## heat

* [heat templates](http://apps.openstack.org/#tab=heat-templates): Heat demo templates, like `Hello World`, `OpenShift-F19`,etc.

## murano

* [murano packages](http://apps.openstack.org/#tab=murano-apps): Murano packages, like `Apache HTTP Server`, `Docker & Kubernetes Bundle`, `Jenkins`, `Kubernetes Cluster`, etc.

## sahara

### About image

* [sahara-image-elements](https://github.com/openstack/sahara-image-elements)(Disk image elements for Sahara.)
* [prepared images](http://sahara-files.mirantis.com/images/upstream/).
* [Building Images for Vanilla Plugin](http://docs.openstack.org/developer/sahara/userdoc/vanilla_imagebuilder.html).
* [Building Images for Cloudera Plugin](http://docs.openstack.org/developer/sahara/userdoc/cdh_imagebuilder.html).

## manila

## magnum
