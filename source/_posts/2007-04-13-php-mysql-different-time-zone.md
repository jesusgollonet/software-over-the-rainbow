---
title: php and mysql in different time zones
author: jesus gollonet
layout: post
permalink: /2007/04/13/php-mysql-different-time-zone/
categories:
  - Programming
  - Web
---
Just a quick code tip for working with dates in mysql and php. 

I&#8217;m building a script to regularly mirror my last.fm recent tracks to a mysql database of my own. I&#8217;m interested in experimenting with daily and hourly statistics.

One problem that has taken me some head scratching has been the fact that the [last.fm recentracks web service][1] gives me the date a given track was played in a timestamp of my current timezone (+02:00 , Europe/Paris, as I&#8217;ve just learnt), but my web server is on a different timezone (-05:00, America/Los_Angeles), so when I try to insert a date in the database, even though I&#8217;m giving it a timestamp, it gets interpreted as being 7 hours less than it actually is. So a track played at let&#8217;s say *31 Mar 2007, 23:55* would be stored as having been played at *31 Mar 2007, 16:55*. Not good.

Not wanting to fiddle with configurations or anything beyond my knowledge, I discovered that I could set the timezone in both php and mysql for a given script or db query. 

### Setting the timezone in php

If you want to know which timezone your server is in, you can guess it with

`<br />
date_default_timezone_get();<br />
`

Which should give you a string like &#8220;America/Los_Angeles&#8221; or any other of the [supported timezones list][2]

If it is different than your desired timezone, look for the one you want in the list and before doing any time operation, call:

`<br />
// set your timezone as gmt +02:00<br />
date_default_timezone_set("Europe/Paris");<br />
`

From then on, all your php code should understand timestamps and dates in that timezone.

### Then for mysql use CONVERT_TZ

Even though it is corrected in php, you&#8217;ll have to do it also when inserting information on you mysql db, because it will interpret timestamps again in its time zone. You can guess which is it by having a look at the system time zone variable.

In my case, after trying some hacky alternatives I discovered CONVERT_TZ in one of the latest comments in [this post][3]

From the [mysql manual][4]

`<br />
CONVERT_TZ(dt,from_tz,to_tz)<br />
`

> CONVERT\_TZ() converts a datetime value dt from the time zone given by from\_tz to the time zone given by to_tz and returns the resulting value. 

You have to pass it the timestamp, current timezone (&#8216;SYSTEM&#8217; is the server time zone) and target timezone and it happily converts between them.

So now my query would look like this:

    
    $query = "INSERT INTO recenttracks (artist, name, url, date, type) 
    	VALUES ( '$lastFmTrack->artist', 
    	'$lastFmTrack->name', 
    	'$lastFmTrack->url', 
    	<strong>CONVERT_TZ(FROM_UNIXTIME('$lastFmTrack->playDate'), 'SYSTEM', '+02:00'), </strong>
    	'$lastFmTrack->type')";
    
    
    

Basically that&#8217;s it. Hope it is useful for someone.

*Mind you, I&#8217;m nothing of an expert in php or mysql, this is just a method which worked for me. Corrections are welcome.*

 [1]: http://audioscrobbler.net/data/webservices/#User%20Profile%20Data
 [2]: http://es.php.net/manual/en/timezones.php
 [3]: http://www.modwest.com/help/kb6-256.html "how do I change mysql timezone"
 [4]: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html#function_convert-tz