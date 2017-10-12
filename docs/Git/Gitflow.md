# Introducing GitFlow

---

## what is git flow

GitFlow is a branching model for Git, created by Vincent Driessen.
it is very well suited to collaboration and scaling the development team.

## Key Benefits

### Parallel Development

One of the great things about GitFlow is that it makes parallel development very easy,by isolating new development from finished work. New development (such as features and non-emergency bug fixes) is done in feature branches, and is only merged back into main body of code when the developer(s) is happy that the code is ready for release.
Although interruptions are a BadThing(tm), if you are asked to switch from one task to another, all you need to do is commit your changes and then create a new feature branch for your new task. When that task is done, just checkout your original feature branch and you can continue where you left off.

### Collaboration

Feature branches also make it easier for two or more developers to collaborate on the same feature, because each feature branch is a sandbox where the only changes are the changes necessary to get the new feature working. That makes it very easy to see and follow what each collaborator is doing.

### Release Staging Area

As new development is completed, it gets merged back into the develop branch, which is a staging area for all completed features that haven’t yet been released. So when the next release is branched off of develop, it will automatically contain all of the new stuff that has been finished.

### Support For Emergency Fixes

GitFlow supports hotfix branches - branches made from a tagged release. You can use these to make an emergency change, safe in the knowledge that the hotfix will only contain your emergency fix. There’s no risk that you’ll accidentally merge in new development at the same time.

## **Implementation**

### Decentralized but centralized

The repository setup that we use and that works well with this branching model, is that with a central “truth” repo. Note that this repo is only considered to be the central one (since Git is a DVCS, there is no such thing as a central repo at a technical level). We will refer to this repo as origin, since this name is familiar to all Git users.

Each developer pulls and pushes to origin.

![](../img/centr-decentr@2x_.png)


## The main branches
The central repo holds two main branches with an infinite lifetime.

* master
* develop

The master branch at origin is the default branch when creating new repository at Git. Parallel to the master branch, another branch exists called develop.

<img src="../../img/main-branches@2x.png" width="350"/>


We consider origin/master to be the main branch where the source code of HEAD always reflects a production-ready state.