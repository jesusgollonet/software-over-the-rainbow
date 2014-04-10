---
title: openframeworks, an introduction
author: jesus gollonet
layout: post
permalink: /2007/01/23/openframeworks-introduction/
categories:
  - Processing
  - Programming
---
Last week I went to a two-day [openframeworks][1] workshop run by [Zach Lieberman][2] at [hangar][3]. 

As said here before ([and][4] [else][5][where][6]), openframeworks is an open-source library to help other artists and students produce works through coding, written in C++. Yes, this might sound familiar. Its philosophy and intentions are very similar to [processing][7]&#8216;s. 

However, openframeworks is not an IDE, but a set of coherent wrappers around useful libraries. As zach puts it, it is more of a glue that puts together different pieces: 

*   [OpenGL][8] for graphics displaying,
*   [FreeImage ][9]for image manipulation, 
*   [Freetype ][10]for font displaying and manipulation,
*   [rtAudio][11] for audio.
*   [Quicktime][12] (mac or pc), [directShow][13] (pc) and (soon) [Video4Linux][14] (linux) for video grabbing and playing 

Some of the key concepts behind openframeworks:

*   Its focus is to **simplify** things. The main intention is that *&#8220;you don&#8217;t have to look at much code when you&#8217;re beginning&#8221;* (which is far from easy in c++). 
*   It&#8217;s conformed of **reusable pieces**, not stitched together. You can use any of its parts independently.
*   It pretends to give you **direct access to data** e.g: pixels of the image, low level audio

I&#8217;ve been using it for the last couple of months. I had never done anything with c++ nor I had any idea of where to start and openframeworks has definitely made the learning curve way smoother. Having been around for ages, c++ has lots of picky details to worry about (pointers vs variables, preprocessor, different compilers, uncompatible IDEs&#8230;.) so having some sort of blueprint which shares some of the programming concepts with processing makes you feel a little more like at home. 

Although it&#8217;s been used extensively to give workshops and classes, it&#8217;s in super-alpha state (even the installation process was being tested on our workshop). Zach is working with [Theo Watson][15] on a really-soon-to-publish release. Most of the stuff will work on win, mac and linux. 

So [stay tuned][1].

 [1]: http://www.openframeworks.cc
 [2]: http://www.thesystemis.com
 [3]: http://www.hangar.org
 [4]: http://www.michaelang.com/a/76/openframeworks.html
 [5]: http://www.pixelsumo.com/post/openframeworks
 [6]: http://createdigitalmotion.com/2006/09/11/openframeworks-interactive-art-in-c-made-easier/
 [7]: http://www.processing.org
 [8]: http://www.opengl.org/
 [9]: http://freeimage.sourceforge.net/
 [10]: http://www.freetype.org/index2.html
 [11]: http://www.music.mcgill.ca/~gary/rtaudio/
 [12]: http://developer.apple.com/quicktime/
 [13]: http://muonics.net/school/spring05/videoInput/
 [14]: http://linuxtv.org/v4lwiki/index.php/Main_Page
 [15]: http://muonics.net/