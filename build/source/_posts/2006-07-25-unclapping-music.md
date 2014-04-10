---
title: Unclapping music
author: jesus gollonet
layout: post
permalink: /2006/07/25/unclapping-music/
enclosure:
  - |
    |
        http://www.jesusgollonet.com/blog/recursos/unclapping_music.mp3
        1662352
        audio/mpeg
        
categories:
  - ChucK
  - Music
  - output
  - Programming
---
So I have begun trying to learn [chuck][1] again.

To do it, I took [alex maclean][2]&#8216;s advice to the letter:

> &#8230;my best advice when looking for inspiration is to listen to your favorite pieces of music. Listen to the structure behind a piece and think about how you might write an algorithm to create that structure&#8230;

(From [Hacking perl in nightclubs][3])

And that&#8217;s what I came up with:  
![Steve reich's ][4]

[Clapping music][5] is a piece by [steve reich][6] in which two performers repeat a simple pattern clapping their hands, with a little shifting every eight repetitions (for a better explanation see the [wikipedia entry][5] or [watch a video][7]).

The structure is so simple that I thought It would be a good starting point for a chuck exercise&#8230; And that&#8217;s what I did. Each &#8220;clapper&#8221; is on a stereo channel. The shifting occurs every 4th repetition.

[See the code][8]

[Hear the result][9]

**Credits:**

Score image taken from [crownpoint][10]

Claps sound taken from [freesound][11] (thanks [noisecollector][12]).

 [1]: http://chuck.cs.princeton.edu/
 [2]: http://www.yaxu.org
 [3]: http://www.perl.com/pub/a/2004/08/31/livecode.html
 [4]: http://www.jesusgollonet.com/blog/imagenes/clapping_music_chuck.jpg
 [5]: http://en.wikipedia.org/wiki/Clapping_Music
 [6]: http://en.wikipedia.org/wiki/Steve_Reich
 [7]: http://www.stevereich.com/multimedia/clappingMedProg.html
 [8]: http://www.jesusgollonet.com/blog/recursos/unclapping_music.ck
 [9]: http://www.jesusgollonet.com/blog/recursos/unclapping_music.mp3 "Clapping music for chuck performers"
 [10]: http://www.crownpoint.com/artists/reich/clapping.html
 [11]: http://freesound.iua.upf.edu/samplesViewSingle.php?id=7765
 [12]: http://freesound.iua.upf.edu/usersViewSingle.php?id=4948