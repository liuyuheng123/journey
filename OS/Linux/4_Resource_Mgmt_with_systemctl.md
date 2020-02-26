```bash
systemctl [OPTIONS] COMMAND [NAME]

start
stop
restart
reload
status
is-active
list-units
enable
disable
cat
show
```

```bash
systemctl status
systemctl status firewalld
systemctl list-units --type=socket
systemctl is-active ksm.service
systemctl cat firewalld
```
