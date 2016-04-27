# Openstack Cheat Sheet

## Automatic Deployment

## keystore

## glance

## nova

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

## cinder

## neutron

## swift

## trove

## sahara

## manila

## magnum
