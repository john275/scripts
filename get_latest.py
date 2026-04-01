#!/usr/bin/env python3

from pyzabbix import ZabbixAPI
import os.path
import sys
if not os.path.isfile("/Users/john/.zabbixpassword.it"):
    print('Passsword file does not exist.')
else:
    f = open("/Users/john/.zabbixpassword.it", "r")
    pw = f.readlines()

    zapi = ZabbixAPI("http://192.168.1.35/zabbix/")
    zapi.login("Admin", pw[0])

f={}
f["host"] = sys.argv[1]
h=zapi.host.get(filter=f)
for eh in h:
    f={}
    f['key_']=sys.argv[2]
    h={}
    h['hostids']=eh['hostid']
    i=zapi.item.get(filter=f,hostids=h)
    print(eh['name'],i[0]['lastvalue'])

zapi.logout