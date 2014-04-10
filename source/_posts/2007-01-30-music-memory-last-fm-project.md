---
title: 'Music and memory: A small (frustrated) last.fm project'
author: jesus gollonet
layout: post
permalink: /2007/01/30/music-memory-last-fm-project/
categories:
  - Music
  - output
  - Programming
  - Web
---
**Antecedent:**

A couple of months ago, having a look at some old stats in my last.fm profile, I realised how much I could remember a given time by just seeing the music I used to listen to ([that old (unfinished?) project by marcos weskamp and didier hilhorst][1] came to mind inmediately). 

**The source:** 

Last.fm keeps weekly data about what we listen to. We also can (could) construct a radio link based on <del datetime="2007-01-28T18:37:34+00:00">various</del> artists. For example:

<lastfm://artist/bibio/similarartists>

**The application**

A web page that, given some artists that I used to listen to in a given time (e.g: december 2005), constructs the url of a last.fm radio with those bands, so I can somehow &#8220;transport&#8221; myself to that time by listening to similar music&#8230; 

And I&#8217;ve done it, but&#8230;

Last friday, [the multiple artists station feature stopped working][2]. In fact, [I had some suspicion][3], but I thought that&#8230; nothing. I didn&#8217;t think of it and kept working.

So it is basically useless in its actual form, but it was finished (as a proof of concept, at least), so here it is: 

[Last.fm time machine][4] (if it had worked i&#8217;d have looked for a better name).

I&#8217;m not sure if the idea can take another direction to become useful. I&#8217;ve thought of having a look at [xspf][5] to see if I can generate playlists instead of radios, but by now I don&#8217;t really know. If you have any ideas&#8230;

At the very least, it&#8217;s been useful to clean the dust over my php, use the last.fm webservices, a little bit of ajax (thanks mr.[sofa naranja][6]) and above all, to finish something.

By the way, [avidos][7] let me stay in their hosting to do some tests while mine hadn&#8217;t php5, and [ignasi tudela][8] tried to help me with the design, but apart from using Georgia and taking his colors for the different seasons, I didn&#8217;t pay him much (deserved) attention, and you can see the results. Thanks to both.

 [1]: http://courses.interaction-ivrea.it/memory/html/project2/proj2_1.html
 [2]: http://www.last.fm/forum/34905/_/224122/1#f2900532
 [3]: http://www.jesusgollonet.com/blog/2007/01/11/song-tags-and-slight-disappointments-with-lastfm/
 [4]: http://www.jesusgollonet.com/lastfm/ "the project is here, but it doesn't work"
 [5]: http://www.xspf.org/
 [6]: http://sofanaranja.com/2005/08/24/mini-tutorial-de-ajax/
 [7]: http://www.avidos.net
 [8]: http://www.blip.cat