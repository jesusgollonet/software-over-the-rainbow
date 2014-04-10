---
title: Penner easing for c++
author: jesus gollonet
layout: post
permalink: /2007/09/24/penner-easing-cpp/
categories:
  - output
  - Programming
---
As [I said last week][1], I&#8217;m also using [robert penner&#8217;s easing equations][2] in [openFrameworks][3], so I&#8217;ve ported them to c++. 

This has been relatively straightforward, but, as with the actionscript to java conversion, I&#8217;ve run into some nuances between languages and I&#8217;ve definitely learned the hard way (read &#8220;wasting some hours of my life&#8221;) why [pre and post increment operators can be evil][4]. 

[Grab them here][5]

For usage, you can have a look at the openFrameworks app provided. If you want to have a quick glance at the types of movement, see the [easing applet (p5 version)][6].

Being this a programming exercise, it will have improvable things for sure. I&#8217;m thinking of some, but if you know anything, please let me know.

 [1]: http://www.jesusgollonet.com/blog/2007/09/16/penner-easing-processing-library/
 [2]: http://robertpenner.com/easing/
 [3]: http://openframeworks.cc
 [4]: http://www.adp-gmbh.ch/blog/2005/march/17.html
 [5]: http://jesusgollonet.com/openFrameworks/cppPennerEasing.zip
 [6]: http://jesusgollonet.com/processing/pennerEasing/