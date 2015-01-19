---
layout: post
title: "project specific dotfiles"
date: 2015-01-18 20:29
comments: true
published: true
categories: personal computing, programming
---

I've been using a project-specific shell file with functions to invoke tasks in my projects. In addition to saving time, this file ends up serving as a map and documentation of sorts, which reduces friction when switching between projects.

<!-- More -->

When working on a project there are often a bunch of tasks I run over and over (uploading files, restarting servers, running preprocessors, testing on a device or an emulator, compass watch…). Some of them are just one command, some might require a few steps and maybe multiple tools.

Generally speaking in programming, if there is an action that can be referred to as one thing, it should be a function, and you should be able to invoke it by name.

Taking this blog as an example, if I want to deploy it, I'd like to just write:

```bash
$ deploy
```

or preview locally: 

```bash
$ preview
```

or create a new post 

```bash
$ new_post "project specific dotfiles"
```

I don't want to think about steps or tools or order of execution required to accomplish the task. If I can name it, that name is all I should write to have it done (along with any extra specifiers if they are needed).

This, it turns out, can be easily accomplished with bash functions. I've been testing a few ways, and here's the setup I'm currently using:

## Setup

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

When I start working on a project I'll source this file: `source scripts/util.sh` and that will make each of this tasks available as a command invoked with the function name from the command line.

In this example, I'm doing little more than wrapping the rake commands, which might seem a bit silly. But this approach starts to pay off when you often switch stacks. I work as a freelancer and in the last 3 months I've worked on a couple of backbone apps, a composition with supercollider, a phonegap app, some node.js utilities... When switching between those there's always some or a lot of friction. I forget what build tool or db engine I was using, wether the server is integrated in grunt or where and how the project needed to be deployed and a thousand other things. There is nothing fun or interesting about finding that out so I'm very happy to remove that frustration.

Here are a few other examples from other projects: [1](https://github.com/jesusgollonet/resume.jesusgollonet.com/blob/master/scripts/util.sh), [2](https://github.com/jesusgollonet/freelance-utils/blob/master/scripts/util.sh),[3](https://github.com/jesusgollonet/filete/blob/master/sh/filete.sh)

## Some properties I like:

Despite the simplicity of the approach, this system has a few nice properties I'm enjoying:

- Commands are one or more descriptive words. Tools used are an implementation detail so it feels good to abstract them away.
- Command names are in the language of the project. This makes purposes clearer and improves focus on the task at hand. I'm going to namedrop DSLs here.
- It serves as a kind of pseudo documentation for the project, specially regarding the tools used, parameters needed, etc. 
- It reduces friction when switching projects, specially if you work with different stacks. 

## Why a shell script? 

Most of the projects I work on already use some sort of task runner (grunt, rake, gulp…), which could accomplish those tasks just fine. I prefer to use a plain script because:

- I tend to create these methods after having done tasks a couple of times by hand. If I want to put that in a shell script it’s often a matter of literally pasting what I just wrote inside a function. Task managers require varying degrees of syntactic ceremony. Which means more friction, which means I’m less likely to bother.
- Less dependencies. The only assumption is being on a unix system.
- It still works for projects that are not using or don't have an obvoius choice of task runner (grunt and rake are the default in web projects, but what would you use for e.g: a supercollider composition, or an openframeworks addon).
- Using functions allows me to just type a nice descriptive word without any extra noise (I prefer to write `deploy` to `./deploy` or `sh deploy.sh` or...).

## Some things I need to improve:

- I need to load the file explicitly when I start working. It would be great if those were available the moment I land on the root directory of a project.
- Functions loaded this way are global, which means if I load them for a project, switch to a different one and forget to load them for the second one, I'll execute the previous ones. That has never led to disaster, but it potentially could. And it makes for quite confusing errors. 
- The name and location of the script are a bit random. I'd like to find a more conventionally unix way. Maybe something like .projectrc, .bashrc.local or along the lines

So it has a few quirks, but I started using this system a few months ago and currently I don't spend more than a couple of hours working on any project new or old before I start populating this file. 

I'd be happy to hear about similar approaches or just any feedback on this one, so don't hesitate to get in touch on twitter [@jesusgollonet](http://twitter.com/jesusgollonet)
