# Git Commands


## Setup / Config

##### Show current configuration:
```
$ git config --list
```
##### Show repository configuration:
```
$ git config --local --list
```

##### Show global configuration:
```
$ git config --global --list

```

##### Show system configuration:
```
$ git config --system --list
```

<hr>

## Create

##### Clone an existing repository:

There are two ways:

Via SSH

```
$ git clone ssh://user@domain.com/repo.git
```

Via HTTP

```
$ git clone http://domain.com/user/repo.git
```

##### Create a new local repository:

```

$ git init

```

<hr>

## git log

short log

```git

    git log --oneline --decorate

```

To see a very compressed log where each commit is one line

```git

git log --pretty=oneline

```

Or maybe you want to see an ASCII art tree of all the branches, decorated with the names of tags and branches:

```git

git log --graph --oneline --decorate --all

```

log to a text file

```git

git log --all --oneline -50 > log50_latest_commits.txt
git log --graph --oneline --decorate --all > graph_commits.txt

```

```git
git log --no-merges --stat --reverse master..
//since forked from master 
```

Get commit that exists in one branch and not the other

```bash

* git log feature_gitflowdoc...develop

```
## Git Branch

create new local branch and checkout

```bash

* git checkout -b newbranchName

```

delete branch

```bash

git branch -d branchNametoDel
//delete from local
git push origin :branchNametoDel
// delete from remote

```

show all branches with there last commit

```bash

* git branch -avv

```

## Git Commit

delete last commit in a branch and move the changes back to staging.

```bash

 git reset HEAD~  

 ```





















