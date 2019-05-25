https://www.rundeck.com/open-source

## Start server
```
# Download war
# 第一次
nohpu java -jar rundeck-3.0.22-20190512.war &
# 后续
server/sbin/rundeckd
```

## Configs
##### Change all hostname to ip (or a name can be accessed)
```bash
find . -type -f |grep <hostname>
vi server/config/rundeck-config.properties
```

or add the hostname to your client hosts file.

##### Add Nodes
https://docs.rundeck.com/docs/manual/configure.html#resource-model-sources-configuration

https://docs.rundeck.com/docs/man5/resource-json.html
1. Create a file and add it to RD.
```json
{
  "yuhengl": {
    "nodename":"yuhengl",
    "hostname":"192.168.57.12",
    "username":"yuhengl"
  }
}
```
2. Add ssh key 

##### Add ssh sudo
```bash
visudo -f /etc/sudoers.d/yuhengl
Defaults:yuhengl !requiretty
```

## Add users
```bash
vi server/config/realm.properties
<username>: <password>[,<rolename> ...]
Ex:
admin1:admin1,user,admin
Restart RD
```

## log
```bash
var/log/service.log
```
