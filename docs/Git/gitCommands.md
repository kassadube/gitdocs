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
#### config add helpfull alias
```bash
[alias]
	lg1 = log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all
	lg2 = log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all
	lg3 = log --graph --color --all --pretty=format:"%C(yellow)%H%C(green)%d%C(reset)%n%x20%cd%n%x20%cn%x20(%ce)%n%x20%s%n"
	lg4 = log --graph --pretty=format:"%x09%h | %<(10,trunc)%cd |%<(25,trunc)%d | %s" --date=short
	lg = !"git lg1"
	graphviz = "!f() { echo 'digraph git {' ; git log --pretty='format:  %h -> { %p }' \"$@\" | sed 's/[0-9a-f][0-9a-f]*/\"&\"/g' ; echo '}'; }; f"
	hist = log --pretty=format:\"%h %ad | %s%d [%an]\" --graph --date=short
	changed = git show --stat --oneline
	st = status
    ci = commit
    br = branch
    co = checkout
    df = diff
    dc = diff --cached
    lg = log -p
    who = shortlog -s --

	feature = "!git checkout develop && echo feature | git"
  	release = "!git checkout develop && echo release | git"
  	hotfix = "!git checkout master && echo hotfix | git"
  	support = "!git checkout master && echo support | git"

  	start = "!read BRANCH && git checkout -b $BRANCH_$1 && echo Starting"
  	finish = "!read BRANCH && git merge $BRANCH_$1 --no-ff && git checkout develop && git merge $BRANCH_$1 --no-ff && echo Merging"

  	publish = "!git push origin `git symbolic-ref --short HEAD` && echo Publishing"
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

git log --online
git log --pretty=oneline

```

show reflog

```bash

git reflog

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

```bash

* git log --no-merges --stat --reverse master..
# since forked from master 

```

Get commit that exists in one branch and not the other

```bash

* git log feature_gitflowdoc...develop
# xcxcxcxc

```
## Git Branch

create new local branch and checkout

```bash

* git checkout -b newbranchName

```

delete branch

```bash

git branch -d branchNametoDel
# delete from local
git push origin :branchNametoDel
# delete from remote

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

## Git diff

show difference only by filename

```bash

git diff branch/hash --name-only
git diff branch/hash --stat

```



















