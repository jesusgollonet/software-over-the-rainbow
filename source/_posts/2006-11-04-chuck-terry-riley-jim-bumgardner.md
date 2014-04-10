---
title: On ChucK, Terry Riley, Jim Bumgardner and emulating old masters through code
author: jesus gollonet
layout: post
permalink: /2006/11/04/chuck-terry-riley-jim-bumgardner/
categories:
  - Art
  - ChucK
  - Music
  - Processing
  - Programming
---
So this morning I found that someone had already done an idea which I had been thinking of for some time (probably since I did the [Steve Reich&#8217;s Clapping Music version][1] in [ChucK][2]):

[Source code for &#8220;In C&#8221; by Terry Riley in ChucK][3]

No problem. With the amount of information we have a few clicks away, it&#8217;s impossible to maintain the naive belief that our ideas are original.

Having a look at the [programmer&#8217;s website][4] (ah, curiosity) I&#8217;ve discovered why the url sounded so familiar: He&#8217;s also the man behind [whitney music box][5], a well known series of animations inspired by the work of [john whitney][6], as described in his book [Digital Harmony: On the Complementarity of Music and Visual Art][7]. The [post explaining the work][8] is worth a look.

(on a deeper look, I&#8217;ve found more gems, such as the article [Processing as a first language, as compared to flash][9], his [processing gallery][10] or the [JSyd Java Synth][11])

Anyway, what I find particularly interesting is the exercise of trying to emulate in code art works which weren&#8217;t originally conceived for that. We know the construction rules (the score and/or the composer&#8217;s instructions) and the final result (the recording), so I see them as ideal programming practice problems. 

Because of its main focus on processes rather than final products, I&#8217;d say that some art of the 60&#8242;s and 70&#8242;s is specially suitable for this task. We&#8217;ve talked about minimal composers (reich, glass, riley), but I&#8217;m also thinking of process art (see [Casey Reas implementations of instructions by Sol Lewitt][12]) or even [John Cage][13] (whom [most famous work][14] has been also versioned by Jim Bumgardner in just[one line of chuck code][15]: (4*60+33)::second => now) .

**A couple of other examples:**

*   [Piano phase after Steve Reich with source code in JMusic (Java)][16]
*   [PD Repertory Project: Some live electronic music repertoire pieces in Pure Data (including works by Pierre Boulez, Steve Reich, Stockhausen and others)][17]
*   **(Update)** [The Riley-o-matic by Daniel Iglesia, more In C (implemented in, well, C)][18]

Do you know of more examples? Let me know in the comments.

 [1]: http://www.jesusgollonet.com/blog/2006/07/25/unclapping-music/
 [2]: http://chuck.cs.princeton.edu/
 [3]: http://electro-music.com/forum/viewtopic.php?t=14237&#038;sid=dbb3ada88a20169e90ee4ce45d79f105
 [4]: http://www.krazydad.com/
 [5]: http://www.coverpop.com/whitney/
 [6]: http://en.wikipedia.org/wiki/John_Whitney_%28animator%29
 [7]: http://www.amazon.com/Digital-Harmony-Complementarity-Music-Visual/dp/007070015X
 [8]: http://www.krazydad.com/blog/2006/04/23/visual-harmony/
 [9]: http://www.krazydad.com/blog/2006/02/15/processing-as-a-first-language/
 [10]: http://www.krazydad.com/p5/
 [11]: http://www.krazydad.com/blog/2006/07/27/jsyd-java-software-synthesizer-now-in-beta/
 [12]: http://artport.whitney.org/commissions/softwarestructures/text.html
 [13]: http://en.wikipedia.org/wiki/John_Cage
 [14]: http://en.wikipedia.org/wiki/Four_Minutes_Thirty_Three_Seconds
 [15]: http://electro-music.com/forum/viewtopic.php?t=13512
 [16]: http://jmusic.ci.qut.edu.au/jmtutorial/PianoPhase.html
 [17]: http://crca.ucsd.edu/~msp/pdrp/latest/doc/
 [18]: http://music.columbia.edu/~daniglesia/research/riley-o-matic/