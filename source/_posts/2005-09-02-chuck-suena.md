---
title: 'ChucK suena&#8230;'
author: jesus gollonet
layout: post
permalink: /2005/09/02/chuck-suena/
enclosure:
  - |
    |
        http://www.jesusgollonet.com/blog/recursos/rt.mp3
        480176
        audio/mpeg
        
  - |
    |
        http://www.jesusgollonet.com/blog/recursos/sc.mp3
        699830
        audio/mpeg
        
categories:
  - ChucK
  - Music
  - output
  - Programming
---
Esto:

    
    //connect
    sinosc s1 => JCRev r1 => dac;
    sinosc s2 => dac;
    sinosc s3 => dac;
    // adjust gains
    .3 => s1.gain;
    .2 => s2.gain;
    .2 => s3.gain;
    // scale array 
    //int scale [7];
    [0, 2, 4, 5, 7, 9, 11] @=> int scale[];
    60 => int baseNote;
    // notes
    std.mtof(baseNote) => s1.freq;
    std.mtof(baseNote) => s2.freq;
    std.mtof(baseNote) => s3.freq;
    while (true) {
    	std.rand2(0, (scale.cap()-1)) => int noteNow;
    	scale[noteNow] => int noteInScale;
    	std.mtof((baseNote) + noteInScale) => s1.freq;
    	if (maybe) {
    		std.mtof(baseNote + noteInScale) => s2.freq;
    	} 
    	if (maybe) {
    		std.mtof((baseNote - 12) + noteInScale) => s3.freq;
    	}
    	.3::second => now;
    }
    
    

suena [así][1] en [ChucK][2].

[Otro ejemplo][3], esta vez usando samples en vez del motor de audio interno (el código está bastante feo como para compartirlo).

Y como me temo que va a haber más posts de estos, inauguramos categoría: [ChucK][4]

 [1]: http://www.jesusgollonet.com/blog/recursos/sc.mp3 "Oír archivo mp3"
 [2]: http://chuck.cs.princeton.edu/ "Concurrent, On-the-fly Audio Programming Language "
 [3]: http://www.jesusgollonet.com/blog/recursos/rt.mp3 "Oír archivo mp3"
 [4]: http://www.jesusgollonet.com/blog/index.php?cat=28 "Ver todos los posts sobre ChucK en este blog"