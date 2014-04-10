---
title: dithered screengrabbing
author: jesus gollonet
layout: post
permalink: /2011/10/02/dithered-screengrabbing/
categories:
  - output
  - Programming
tags:
  - dithering
  - openframeworks
---
Over the weekend, while researching ways to combine cocoa and openframeworks I stumbled upon this sweet [simple code to grab the pixels below an openframeworks app][1]. Thinking of what to do, I dusted off my old [ofxHalftoner][2]* to dither the content of the screen and to my surprise everything worked reasonably fast in real time. 

Here are some results:  
[<img src="http://farm7.static.flickr.com/6157/6199302468_93a4fc2525.jpg" width="500" height="417" alt="Screen shot 2011-10-01 at 1.07.09 AM" />][3]

[<img src="http://farm7.static.flickr.com/6179/6199302530_83a699f5a5.jpg" width="500" height="371" alt="Screen shot 2011-10-01 at 1.02.48 AM" />][4]

I also recorded some video. The quality of the dithering is poor due to the video compression, but you get the idea.

Here&#8217;s the app over [body magic][5] by the amazing [53os][6]

<object type="application/x-shockwave-flash" width="400" height="336" data="http://www.flickr.com/apps/video/stewart.swf?v=109786" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"> <param name="flashvars" value="intl_lang=en-us&photo_secret=8387cf9d89&photo_id=6200619079"></param> <param name="movie" value="http://www.flickr.com/apps/video/stewart.swf?v=109786"></param> <param name="bgcolor" value="#000000"></param> <param name="allowFullScreen" value="true"></param><embed type="application/x-shockwave-flash" src="http://www.flickr.com/apps/video/stewart.swf?v=109786" bgcolor="#000000" allowfullscreen="true" flashvars="intl_lang=en-us&photo_secret=8387cf9d89&photo_id=6200619079" height="336" width="400"></embed></object>

And then over [a docu about the opening of an op art exhibition from the 60s][7] published on [ubuweb][8], which seemed totally appropriate.

<object type="application/x-shockwave-flash" width="400" height="298" data="http://www.flickr.com/apps/video/stewart.swf?v=109786" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"> <param name="flashvars" value="intl_lang=en-us&photo_secret=006facc979&photo_id=6200547573"></param> <param name="movie" value="http://www.flickr.com/apps/video/stewart.swf?v=109786"></param> <param name="bgcolor" value="#000000"></param> <param name="allowFullScreen" value="true"></param><embed type="application/x-shockwave-flash" src="http://www.flickr.com/apps/video/stewart.swf?v=109786" bgcolor="#000000" allowfullscreen="true" flashvars="intl_lang=en-us&photo_secret=006facc979&photo_id=6200547573" height="298" width="400"></embed></object>




While writing this I&#8217;ve seen that creative apps [has written about it][9], which is very flattering for a quick hack. Thanks!

 [1]: http://forum.openframeworks.cc/index.php/topic,2946.0.html
 [2]: https://github.com/jesusgollonet/ofxHalftoner
 [3]: http://www.flickr.com/photos/jesusgollonet/6199302468/ "Screen shot 2011-10-01 at 1.07.09 AM by jesus gollonet, on Flickr"
 [4]: http://www.flickr.com/photos/jesusgollonet/6199302530/ "Screen shot 2011-10-01 at 1.02.48 AM by jesus gollonet, on Flickr"
 [5]: http://www.gooooooooooooooooooooooooooooooooooooooooooooooooooooogle.com/bodymagic.html
 [6]: http://www.gooooooooooooooooooooooooooooooooooooooooooooooooooooogle.com/
 [7]: http://ubuweb.com/historical/responsive_eye/index.html
 [8]: http://ubuweb.com/
 [9]: http://www.creativeapplications.net/openframeworks/realtime-dithered-screen-capture-openframeworks/