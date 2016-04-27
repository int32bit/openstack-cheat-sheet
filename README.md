# Openstack Cheat Sheet

## Automatic Deployment

* [Devstack](http://docs.openstack.org/developer/devstack/):Oneiric powered development environment for openstack.
* [Fuel](https://www.mirantis.com/products/mirantis-openstack-software/):The leading purpose-built open source deployment and management tool for OpenStack.
* [RDO](https://www.rdoproject.org/):A communiaty of people using and deploying OpenStack on CentOS, Fedora, and Red Hat Enterprise Linux.
* [openstack-puppet](https://wiki.openstack.org/wiki/Puppet):Bring scalable and reliable IT automation to OpenStack cloud deployments using puppet.
* [openstack-ansible](https://github.com/openstack/openstack-ansible):Ansible playbooks for deploying OpenStack.
* [kolla](https://github.com/openstack/kolla):Deploying OpenStack using Docker.
* [TripleO](https://wiki.openstack.org/wiki/TripleO):A program aimed at installing, upgrading and operating OpenStack clouds using OpenStack's own cloud facilities as the foundations

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
