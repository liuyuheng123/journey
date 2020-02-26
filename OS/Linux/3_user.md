- System accounts are used by daemons to access files and directories. These will usually be disallowed from interactive login via shell or physical console login.

- Interactive accounts are used by end-users to access computing resources from either a shell or physical console login.


## Create a new user
```bash
adduser
```

## Disabling User Accounts
There are several methods to disable accounts on a system. These range from editing the /etc/passwd file by hand. Or even using the passwd command with the -lswitch. Both of these methods have one big drawback: if the user has ssh access and uses an RSA key for authentication, they can still login using this method.

Now let’s use the chage command, changing the password expiry date to a previous date. Also, it may be good to make a note on the account as to why we disabled it.
```bash
chage -E 2005-10-01 bjones
```

## Manage Groups
```bash
chgrp
groupadd
groups
usermod # update account attributes
```