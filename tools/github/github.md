### ssh
[Adding a new SSH key to your GitHub account](https://help.github.com/en/articles/adding-a-new-ssh-key-to-your-github-account)


### Actions
Clone only 1 branch
```
git clone -b <branch> <remote_repo>
# >= 1.7.10
git clone --single-branch --branch <branchname> <remote-repo>
```

Clone to another dir name
```
git clone <remote_repo> <dir>
```

List branches
```
git branch
```

Create branch
```
git branch <branch_name>
```

Switch branch
```
git checkout <branch_name>
```

Get remote url
```
git remote -v
```

check-in
```
git add .
git commit -m "comment goes here"
git push
```
