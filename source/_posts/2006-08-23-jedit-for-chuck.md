---
title: JEdit for ChucK
author: jesus gollonet
layout: post
permalink: /2006/08/23/jedit-for-chuck/
categories:
  - ChucK
  - Programming
---
In my never ending search for a one-size-fits-all code editor, I&#8217;ve been trying [JEdit][1] for the last couple of weeks.

Reasons? With some plugins, it&#8217;s said to be [a good choice for ruby on rails][2]; toxi published [an edit mode][3] and [a lot of abbreviations][4] which speed up the work with [processing][5]; it&#8217;s multi-platform; and the most important thing, it is extremely configurable, while not being as fat as [eclipse][6].

Until the recent release of the [miniaudicle][7] for windows there were very few options for syntax highlighting of ChucK files in this platform, so, using a couple of edit modes from languages that I know better, the ChucK reference and some help from [chuck-users][8], I&#8217;ve made a [ChucK edit mode][9]. This means that now i have syntax coloring for keywords, ugens, methods and operators.

![screenshot of jedit with a chuck file][10]

*(Note: the awful colors correspond to the moment in which I decided to stop trying new ones. Don&#8217;t worry, they&#8217;re configurable too)*

To install it:

1.  put the file [chuck.xml][11] in C:\Documents and Settings\username\.jedit\modes.
2.  write this in the catalog file in the same folder: <MODE NAME=&#8221;chuck&#8221; FILE=&#8221;chuck.xml&#8221; FILE\_NAME\_GLOB=&#8221;*.ck&#8221; />

And that&#8217;s pretty much it. You should be seeing some nice color in your chuck files.

If you detect any error or improvable thing or want some additional help, just tell me: jesus {youknow} jesusgollonet.com

 [1]: http://www.jedit.org
 [2]: http://www.eadz.co.nz/blog/article/ruby-rails-jedit.html
 [3]: http://www.toxi.co.uk/blog/2005/08/using-jedit-as-external-code-editor.htm "Syntax coloring for processing in jedit"
 [4]: http://toxi.co.uk/p5/jedit/ "abbreviations for processing in jedit"
 [5]: http://www.processing.org
 [6]: http://www.eclipse.org/
 [7]: http://audicle.cs.princeton.edu/mini/ "A chuck editor. The official one."
 [8]: http://chuck.cs.princeton.edu/community/ "chuck mailing lists"
 [9]: http://www.jesusgollonet.com/blog/recursos/chuck.xml "Sintax coloring of chuck files for jedit"
 [10]: http://www.jesusgollonet.com/blog/imagenes/jedit_chuck.gif
 [11]: http://www.jesusgollonet.com/blog/recursos/chuck.xml "Sintax highlighting of chuck files for jedit"