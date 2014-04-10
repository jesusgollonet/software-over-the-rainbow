---
layout: post
title: "wordpress to octopress, subdomain and redirect"
date: 2013-12-15 01:59
comments: true
categories: This
---

I've started using [octopress](http://octopress.org "static blogging framework based on jekyll") for this blog. 

After using [middleman](http://middlemanapp.com "ruby static site generator") for a couple of projects, I prefer to use static site generators whenever possible: They are faster, lend themselves nicely to version control ([this one is on github](https://github.com/jesusgollonet/software-over-the-rainbow)), are managed with plain text, and, in this case, use ruby.

I've also moved to a subdomain [http://blog.jesusgollonet.com/](http://blog.jesusgollonet.com/) from a regular directory [http://jesusgollonet.com/blog](http://jesusgollonet.com/blog).

To avoid broken link blues, I've set up redirects so the old wordpress permalink urls map to the new subdomain.

Here's the `.htaccess` in my web root.

```aconf
RewriteEngine on
RewriteBase /

RewriteCond %{HTTP_HOST} !^blog\.jesusgollonet\.com$ [NC]
RewriteRule ^blog/(.*)$ http://blog.jesusgollonet.com/$1 [L,NC,R=301]
```

It sends to the subdomain all requests coming to `blog/`, appending any additional 'folders'. So [http://jesusgollonet.com/blog/2011/08/20/travel/](http://jesusgollonet.com/blog/2011/08/20/travel) leads to [http://blog.jesusgollonet.com/2011/08/20/travel/](http://blog.jesusgollonet.com/2011/08/20/travel/). 

Comments are always welcome [@jesusgollonet](https://twitter.com/jesusgollonet)


