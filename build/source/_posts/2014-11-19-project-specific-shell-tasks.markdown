---
layout: post
title: "project specific dotfiles"
date: 2014-11-19 19:29
comments: true
published: false
categories: 
---

I've been using a project-specific shell file with functions to automate tasks in my projects. This file serves as a small DSL and pseudo-documentation. I've found that being able to invoke tasks in the language of the project reduces cognitive friction, and greatly eases project switching, more so if you work with different stacks.

<!-- More -->

When working on a project there are often a bunch of tasks I run over and over (uploading files, restarting servers, running preprocessors, compass watch…), maybe a few directories I spend time on and so on. I'm used to using dotfiles to create shortcuts for frequent tasks and locations but those are global and I don’t want to pollute my global config files with information which only makes sense in the context of a specific project.

I’ve been searching for a project specific way to do the same thing dotfiles accomplish. I've been playing with a couple of arrangements and I've settled now on a very simple setup:

In the root of my project I'll have a shell script with a list of functions that wrap the commands I have to run. Here's an example from this blog

```bash
#!/bin/bash

echo "loading scripts for software over the rainbow"

function preview(){
    (cd build 
    bundle exec rake generate
    bundle exec rake preview)
}

function new_post(){
    (cd build
    bundle exec rake "new_post[$1]")
}

function deploy(){
    (cd build
    bundle exec rake deploy)
}
```

[https://github.com/jesusgollonet/software-over-the-rainbow/blob/master/scripts/util.sh](https://github.com/jesusgollonet/software-over-the-rainbow/blob/master/scripts/util.sh)

When I start working on a project I'll source this file: `source scripts/util.sh` (I actually use the alias `pslu` -project specific load utils- ) and that will make each of this tasks available as a command invoked with the function name from the command line.

So If I want to deploy I'll write

```bash
$ deploy
```

or get a list of posts

```bash
$ list_posts
```

or create a new post 

```bash
$ new_post "project specific dotfiles"
```

## Some properties I like:
Despite the simplicity of the approach, this system has a few nice properties I'm enjoying:

- Commands are one or more descriptive words, not the usual tool -argument pair. Tools used are an implementation detail so it feels good to abstract that away.
- Command names are in the language of the project. This makes purposes clearer and improves focus on the task at hand. I'm going to namedrop DSLs here.
- It serves as a kind of pseudo documentation for the project, specially regarding the tools used, parameters needed. 
- It reduces friction when switching projects, specially if you work with different stacks. 
If you stop working on a project and resume after a while, this script serves as a map of the kind of things that you can do. I can’t count how many times I’ve forgotten how a project had to be deployed.

## Why a shell script? 
Most of the projects I work on already use some sort of task runner (grunt, rake, gulp…), which could accomplish those tasks just fine. I prefer to use a plain script because:

- I tend to create these methods after having done tasks a couple of times by hand. If I want to put that in a shell script it’s often a matter of literally pasting what I just wrote inside a function. Task managers require varying degrees of syntactic ceremony. Which means more friction, which means I’m less likely to bother.
- Less dependencies. The only assumption is being on a unix system.
- It still works for projects that are not using or don't have an obvoius choice of task runner (grunt and rake are the default in web projects, but what would you use for e.g: a supercollider composition, or an openframeworks addon).
- Using functions allows me to just type a nice descriptive word without any extra noise (using ./, prefixing with a tool name).

## Some things I need to improve:
- right now I need to load the file explicitly when I start working. It would be great if those were available the moment I land on the root directory of a project.
- The functions loaded this way are global, which means if I load them for a project, switch to a different one and forget to load them for the second one, I'll execute the previous ones. That has never led to disaster, but it potentially could. And it makes for quite confusing errors. 
- the name and location of the script are a bit random. I'll probably rename it to something like .projectrc, .bashrc.local or something along the lines

So it has a few quirks, but I started using this system a few months ago and currently I don't spend more than a couple of hours working on any project new or old before I start populating this file.
