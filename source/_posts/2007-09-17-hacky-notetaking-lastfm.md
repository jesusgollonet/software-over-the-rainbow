---
title: 'taking notes about what you are listening to on last.fm: the hacky way'
author: jesus gollonet
layout: post
permalink: /2007/09/17/hacky-notetaking-lastfm/
categories:
  - Music
  - Software
  - Thoughts
---
Some time ago, I wondered [how could I take some notes about the music I was listening to][1]. 

After having a look at the last.fm player source code* I instantly saw what a stupid thing I had suggested. In no way I&#8217;d be able to figure out that bunch of c++ classes (not that it made any sense to try, just to implement such a simple thing). 

I thought of some other alternatives, mostly involving desktop widgets, but as far as I could see, none of the options could cover both my local music and the last.fm player (for when I&#8217;m listening to radio). I gave up the idea.

But one day, while sending a recommendation to a friend via the player I realized that I could write some text in that text box. Could I send recommendations to myself? Yes. And how could I take those recommendations out of last.fm? Luckily, they offer an rss feed for manual recommendations in their [web services][2].

![auto recommendation on last.fm][3]

So I hacked together some code that parsed my recommendations and sent the ones with my username to my helipad notebook (not public, so I don&#8217;t have much to show). I set up a cron job and&#8230; You can see that I still use it in [my rss feed][4].

The code is so trivial (and so tied to helipad in my case) that I&#8217;m sure you can do it better quickly, but in case you are interested, I could try to clean some of the php mess and send it upon request. 

Although they are kind of personal, I&#8217;ve been thinking of publishing the notes directly here, since the rss feed is public anyway (and explicit sharing can improve your personal content, [I think][5])

As a side note, I think last.fm could get some value of implementing such a thing. On one hand users could get some sort of musical microblogging, like a contextual twitter. On the other hand, since the info is always from last.fm, it could really enrich artists, songs and album pages, and more seamlesly than the current shoutbox, in my humble opinion.

** yes, I learned how to use subversion. Now I can&#8217;t live without it.*

 [1]: http://www.jesusgollonet.com/blog/2007/01/14/lang_enwouldnt-it-be-nice-iflang_enlang_esno-estaria-bien-silang_es/
 [2]: http://www.audioscrobbler.net/data/webservices/
 [3]: http://jesusgollonet.com/blog/imagenes/last.fm-note.gif
 [4]: http://ws.audioscrobbler.com/1.0/user/jesusgollonet/manualrecs.rss
 [5]: http://www.jesusgollonet.com/blog/2006/11/13/sharing-is-for-oneself-bookmarks/