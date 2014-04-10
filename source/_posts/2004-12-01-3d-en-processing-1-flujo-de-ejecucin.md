---
title: '3d en processing: 1, Flujo de ejecución'
author: jesus gollonet
layout: post
permalink: /2004/12/01/3d-en-processing-1-flujo-de-ejecucin/
categories:
  - Processing
  - Programming
  - Tutorial
---
<p>Esta es la primera parte del <a href="http://www.jesusgollonet.com/blog/index.php?p=37">tutorial de 3d básico en processing</a>. Es una introducción general y he intentado q sirva independientemente del resto de los pasos: no contiene nada de 3d. </p>
<p>Para probar el código basta con copiarlo y pegarlo en el editor*.  Al principio de cada tutorial incluiré enlaces de las funciones utilizadas a la referencia en castellano de processing, amablemente traducida por <a href="http://www.robotua.com">Pedro Alpera</a>.</p>
<p>*Nota: Al pegar en el editor de processing  ejemplos  de código copiados de una página web éste se cuelga (probablemente por los datos de formato), por lo que es mejor copiar el código fuente en los applets o simplemente escribirlo.</p>
<h4>Funciones utilizadas</h4>
<p><a href="http://processing.org/reference/es/rect_.html">rect()</a><br />
<a href="http://processing.org/reference/es/fill_.html">fill()</a><br />
<a href="http://processing.org/reference/es/stroke_.html">stroke()</a></p>
<h4>1. Flujo de ejecución:</h4>
<p>Dado que en <a href="http://www.processing.org">processing</a> carecemos de la típica línea de tiempo de flash o director, el orden de ejecución del código sólo va a estar determinado por el orden en que lo escribamos (estamos hablando de código simple, sin funciones ni objetos). Lo primero que hayamos escrito se ejecutará  primero, y así sucesivamente.</p>
<p><a href="http://www.jesusgollonet.com/blog/recursos/tutorial_processing/11/index.html" title="ver sketch">Ejemplo 1</a>:</p>
<pre>
<code>
// SECUENCIALIDAD DEL CÓDIGO EN PROCESSING 00
// El cuadrado de arriba a la izquierda es el primero
// en ser dibujado, y queda más al fondo.
rect(15, 15, 50, 50); 
// el siguiente queda en la mitad
rect(25, 25, 50, 50); 
// y el de más abajo es el último y queda al frente
rect(35, 35, 50, 50); 
</code>
</pre>
<p>El resultado es el siguiente:<br />
<a href="http://www.jesusgollonet.com/blog/recursos/tutorial_processing/11/index.html" title="ver sketch"><img src="http://www.jesusgollonet.com/blog/recursos/tutorial_processing/ejemplo11.gif" alt="3 cuadrados blancos solapados sobre fondo gris" /></a></p>
<p>Aunque parezca trivial, no lo es. Si por ejemplo quisieramos crear un cuadrado y rellenarlo de un color, lo haríamos en ese orden, ¿no? </p>
<pre>
<code>
rect(15, 15, 50, 50);  // crea un cuadrado
fill(0); // lo rellena del color negro...?
</code>
</pre>
<p>Efectivamente, no. Como se comprobará si se prueba el ejemplo, el cuadrado permanece blanco (que es el color en el que se dibuja por defecto). En processing es necesario hacerlo al revés: primero se especifica una propiedad y luego el objeto al que ha de ser aplicada.</p>
<pre>
<code>
fill(0);   // ahora si, especificamos el color negro.
rect(15, 15, 50, 50);   // y se aplica a el cuadrado.
</code>
</pre>
<h4>2. Persistencia de las propiedades</h4>
<p>Una vez establecida una propiedad (como fill() o color() ), ésta se aplica a todos los objetos siguientes (hasta que se especifique lo contrario):</p>
<pre>
<code>
fill(0); //especificamos el color negro
rect(15,15, 34, 37); // creamos un cuadrado 
rect(25,25, 10, 50); // y otro. los dos son negros.
</code>
</pre>
<p>¿Cómo se especifica lo contrario? Pues simplemente llamando de nuevo a la misma propiedad y cambiando el valor&#8230;</p>
<pre>
<code>
fill(0); //especificamos el color negro
rect(15,15, 34, 37); // creamos un cuadrado 
rect(25,25, 10, 50); // y otro. los dos son negros.
fill(127); //ahora el relleno es gris
rect(10,10, 20, 20);  // y este cuadrado es gris
</code>
</pre>
<p>También se pueden anular algunas propiedades mediante comandos especiales (por ejemplo, noFill() para quitar el relleno o noStroke() para&#8230; bueno, creo que se entiende).</p>
<p>Un segundo ejemplo con todos los pasos combinados.<br />
<a href="http://www.jesusgollonet.com/blog/recursos/tutorial_processing/12/index.html" title="ver sketch">Ejemplo 2</a>:</p>
<pre>
<code>
// SECUENCIALIDAD DEL CÓDIGO EN PROCESSING 01
// Dado que el código es secuencial, 
// si queremos aplicar una propiedad a un
// objeto, tenemos que especificarla antes.
// Especificamos un color de relleno  
fill(150);   
// el primer cuadrado se rellena con ese color
rect(50, 25, 45, 45); 
// especificamos un color de linea
stroke(240); 
// Como no hemos cambiado el color de relleno,
// el siguiente cuadrado mantiene el gris del primero.
// El color de linea si ha cambiado.
rect(55, 30, 35, 35); 
 // Ahora cambiamos el color de relleno  
fill(200);
// El tercer cuadrado tiene un relleno distinto
// y mantiene el color de linea de el anterior.
rect(60, 35, 25, 25); 
// y finalmente quitamos el relleno
noFill();
// y creamos un último rectangulo
rect(45, 45, 50, 50);
</code>
</pre>
<p>El resultado es este:<br />
<a href="http://www.jesusgollonet.com/blog/recursos/tutorial_processing/12/index.html" title="ver sketch"><img src="http://www.jesusgollonet.com/blog/recursos/tutorial_processing/ejemplo12.gif" alt="4 cuadrados con bordes y rellenos de diferentes colores" /></a></p>
<p>Y eso es todo por ahora.</p>
<h4>Para saber más:</h4>
<p>Acabando este tutorial me encontré uno muy parecido en los foros de processing, y es que quizás sea un poco inútil hacer más tutoriales sobre una herramienta con tantos <a href="http://processing.org/learning/index.html">recursos</a> para <a href="http://processing.org/learning/tutorials/index.html">aprender</a>. En cualquier caso aquí está:<br />
<a href="http://processing.org/discourse/yabb/YaBB.cgi?board=TheoryandPractice;action=display;num=1078263491" title="miniTutorial sobre flujo de ejecución en los foros de processing">drawing statements and execution flow, part I </a></p>
<p>Hasta el siguiente.</p>
<p>Por supuesto, si tienen alguna duda, corrección, comentario o sugerencia, no duden en utilizar el formulario destinado a tal efecto. Justo debajo de esta línea :)</p>
