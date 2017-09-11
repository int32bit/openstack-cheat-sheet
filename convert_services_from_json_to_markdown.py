#!/usr/bin/python3
#coding=utf-8
from collections import OrderedDict
import json
from pprint import pprint

JSON_FILE = 'openstack_services.json'
FIELDS = ["名称", "LOGO", "服务", "年龄", "部署率", "成熟度"]


def _convert_to_md_row(fields):
    return '|' + '|'.join(fields) + '|'


with open(JSON_FILE) as f:
    data = json.load(f)
    for group in data['grouped_components']:
        print("\n### %s\n" % group)
        print(_convert_to_md_row(FIELDS))
        print(_convert_to_md_row(['----'] * len(FIELDS)))
        for service in data['grouped_components'][group]:
            code_name = service['code_name']
            description = service['description'] or '-'
            name = "[%s](https://wiki.openstack.org/wiki/%s)" % (
                code_name, code_name.split()[0])
            service_name = service['name']
            age = str(service['age']) + '年'
            adoption = service['adoption'] + '%'
            maturity_points = service['maturity_points'] + '/7'
            logo = "![%s](https://www.openstack.org/software/images/mascots/%s.png)" % (
                service['slug'], service['slug'])
            print(_convert_to_md_row(
                [name, logo, service_name, age, adoption, maturity_points]))
