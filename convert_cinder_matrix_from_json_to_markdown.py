#!/usr/bin/env python3
#coding=utf-8
from collections import OrderedDict
import json
from pprint import pprint

target = 'cinder_matrix.json'

FIELDS = ["Driver",
          "Volume",
          "Snapshot",
          "Clone",
          "Replication",
          "Consistency Group",
          "Qos",
          "Extend(扩容)"]


def _convert_to_md_row(fields):
    return '|' + '|'.join(fields) + '|'


def _print_header(fields):
    print(_convert_to_md_row(fields))
    print(_convert_to_md_row(['----'] * len(fields)))


def do_convert(matrix_file='cinder_matrix.json'):
    _print_header(FIELDS)
    with open(matrix_file) as f:
        drivers = json.load(f)
        for driver in drivers:
            name = driver['Driver']
            volume = driver['Create Volume']
            snapshot = driver['Create Snapshot']
            clone = driver['Create Volume from Volume (Clone)']
            replication = driver['Volume Replication']
            cgroup = driver['Consistency Group']
            qos = driver['QoS']
            extend = driver['Extend Volume']
            print(_convert_to_md_row([name, volume, snapshot,
                                      clone, replication, cgroup,
                                      qos, extend]))


def main():
    do_convert()


if __name__ == "__main__":
    main()
