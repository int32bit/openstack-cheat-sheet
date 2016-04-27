# Openstack Cheat Sheet

## Official

* [Home](http://www.openstack.org/)
* [Github](https://github.com/openstack/openstack)
* [Docs](http://docs.openstack.org/)
* [Mailing lists](http://lists.openstack.org/cgi-bin/mailman/listinfo)
* [IRC(freenode)](https://wiki.openstack.org/wiki/IRC)
* [Code review](https://review.openstack.org)
* [Roadmap](https://www.openstack.org/software/roadmap/)
* [Wiki](https://wiki.openstack.org/wiki/Main_Page)
* [Blueprints](https://blueprints.launchpad.net/openstack)
* [Bugs](https://bugs.launchpad.net/openstack)

## Automatic Deployment

* [Devstack](http://docs.openstack.org/developer/devstack/)(Oneiric powered development environment for openstack.)
* [Fuel](https://www.mirantis.com/products/mirantis-openstack-software/)(The leading purpose-built open source deployment and management tool for OpenStack.)
* [RDO](https://www.rdoproject.org/)(A communiaty of people using and deploying OpenStack on CentOS, Fedora, and Red Hat Enterprise Linux.)
* [openstack-puppet](https://wiki.openstack.org/wiki/Puppet)(Bring scalable and reliable IT automation to OpenStack cloud deployments using puppet.)
* [openstack-ansible](https://github.com/openstack/openstack-ansible)(Ansible playbooks for deploying OpenStack.)
* [kolla](https://github.com/openstack/kolla)(Deploying OpenStack using Docker.)
* [TripleO](https://wiki.openstack.org/wiki/TripleO)(A program aimed at installing, upgrading and operating OpenStack clouds using OpenStack's own cloud facilities as the foundations.)
* [SaltStack](https://github.com/cloudbase/salt-openstack)(Deploying Openstack using saltstack.)

## Vender

* [Mirantis](https://www.mirantis.com/)(Mirantis is the pure play OpenStack company, providing all the software, services, training and support you need to run a production deployment of OpenStack at scale.)
* [UnitedStack](https://www.ustack.com/)(UnitedStack is one of the most important hybrid cloud service providers, and its services have been highly appreciated by customers from all kinds of fields including Internet, resource, finance and manufacture.)
* [Rackspace](https://www.rackspace.com/)(OpenStack founding father. The company started OpenStack officially, along with NASA in 2010.
* [Red Hat](https://www.redhat.com/en/insights/openstack)(The leading contributor to OpenStack code among vendors for the Icehouse release)
* [Nebula](https://www.nebula.com/)(Has been shut down)
* [easystack](http://www.easystack.cn/)(OpenStack cloud platform and services provider, founded in Feb.2014.)
* [UMCloud](http://www.umcloud.com/)(A joint venture of Mirantis and Ucloud in China.)

## Competitors

* [AWS](https://aws.amazon.com)(Offers reliable, scalable, and inexpensive cloud computing services.)
* [CloudStack](https://cloudstack.apache.org/)(Open source software designed to deploy and manage large networks of virtual machines, as highly scalable Infrastructure as a Service (IaaS) cloud computing platform.)
* [Vmware](http://www.vmware.com/)(The industry-leading virtualization software company.)
* [Docker](https://www.docker.com)(Docker containers and tooling make building and shipping applications dramatically easier and faster.)

## keystore

## glance

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

## cinder

## neutron

## swift

## trove

## sahara

### About image

* [sahara-image-elements](https://github.com/openstack/sahara-image-elements):Disk image elements for Sahara.
* [prepared images](http://sahara-files.mirantis.com/images/upstream/).
* [Building Images for Vanilla Plugin](http://docs.openstack.org/developer/sahara/userdoc/vanilla_imagebuilder.html).
* [Building Images for Cloudera Plugin](http://docs.openstack.org/developer/sahara/userdoc/cdh_imagebuilder.html).

## manila

## magnum
