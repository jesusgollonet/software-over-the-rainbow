---
layout: post
title: "this undefined in es6 arrow functions"
date: 2015-04-21 09:44
comments: true
categories: javascript, es6, babeljs
---

If `this` is undefined inside your arrow functions, keep reading.

<!-- More -->

I've been using es6 through [htt://babeljs.io](babel.js) in a side project, mainly because after a short affaire with haskell, I wanted arrow functions.

One of the big features of arrow functions is that they are lexically scoped, which in short means that `this` is tied to the scope in which they were created, which means no more explicit binding of the scope for events or fugly `var self = this`'s.

I won't pretend I can explain lexical binding, but there are a lot of good references:

- [Undestanding ecmascript 6 arrow functions](http://www.nczonline.net/blog/2013/09/10/understanding-ecmascript-6-arrow-functions/)
- [es6 arrow functions this](http://codepen.io/somethingkindawierd/blog/es6-arrow-functions-this)

Except if you are using babel.js you might think they are wrong. 

Consider this piece of code from the second reference:

```javascript
// Arrow function, bound to scope where it's created,
// in this case it's the global object `window`.
var f = () => {
  console.log(this === window);
}
f(); // true
```

According to the lexical binding explanations that is correct. The function is created in the top scope, so in a browser `this` should be `window`.

But my browser console stubbornly says `false`, and tells me that `this` is undefined. Why is that?

As it turns out, there's an explanation in the babel.js FAQ:
> Babel assumes that all input code is an ES6 module. ES6 modules are implicitly strict mode so this means that top-level this is not window in the browser nor is it exports in node.
> 
> -- <cite>[Why is this being remapped to undefined?](https://babeljs.io/docs/faq/#why-is-this-being-remapped-to-undefined-)</cite>
