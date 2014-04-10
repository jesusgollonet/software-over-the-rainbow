---
title: '3d en processing: 2, Sistemas de coordenadas'
author: jesus gollonet
layout: post
permalink: /2004/12/12/3d-en-processing-2-sistemas-de-coordenadas/
categories:
  - Processing
  - Programming
  - Tutorial
---
<p>Segunda parte del <a href="http://www.jesusgollonet.com/blog/index.php?p=37" title="Indice del tutorial">tutorial de 3d básico en processing</a>. En la <a href="http://www.jesusgollonet.com/blog/index.php?p=39" title="3d en processing: 1, Flujo de ejecución">primera parte</a> planteamos algunas cuestiones relacionadas con el orden de los comandos y cómo éste afecta a la ejecución. Ahora veremos cómo se traduce esto en el trabajo en 3d, y comprobaremos que es muy poco intuitivo.</p>
<h4>Funciones utilizadas:</h4>
<p><a href="http://processing.org/reference/es/box_.html">box();</a><br />
<a href="http://processing.org/reference/es/translate_.html">translate();</a><br />
<a href="http://processing.org/reference/es/rotate_.html">rotate();</a></p>
<h4>1. Creación de un objeto en 3d:</h4>
<p>Vamos a crear un objeto 3d básico en processing, por ejemplo una caja. No se me asusten los que vengan de actionscript. Es insultantemente fácil:</p>
<pre>
<code>
// Creamos una caja que mide 
// 20px de ancho(x), alto(y) y largo(z)
box (20, 20, 20);
</code>
</pre>
<p>Al probar el código observamos que la caja no se ha creado en el centro del sketch. En processing, igual que en actionscript, el origen de coordenadas (0, 0) está arriba a la izquierda. La caja se crea con centro en ese origen:<br />
<img src="http://www.jesusgollonet.com/blog/recursos/tutorial_processing/ejemplo21.gif" alt="Caja en 3d semioculta sobre fondo gris" /></p>
<h4>2. Transformaciones: translate() y rotate():</h4>
<p>¿Cómo cambiamos la caja de sitio? También muy fácil. Con la función <strong>translate()</strong>:</p>
<pre>
<code>
// los  parámetros de translate son 
// x=50 e y=50.
translate(50, 50);
box(20, 20, 20);
</code>
</pre>
<p><img src="http://www.jesusgollonet.com/blog/recursos/tutorial_processing/ejemplo22.gif" alt="Cuadrado blanco sobre fondo gris" /><br />
Ahora aparece en el centro. Aunque aparentemente es sólo un cuadrado, sigue siendo nuestra caja 3d. Si añadimos noFill() al principio podremos observarlo. </p>
<p>Creo que es buen momento para familiarizarse con translate() cambiando valores y observando los resultados (nótese que puede tener también 3 parámetros -x,  y, z-).</p>
<p>Si queremos rotar nuestro objeto simplemente tendremos que utilizar otra función: <strong>rotate()</strong> (o para restringir a coordenadas específicas rotateX(), rotateY o rotateZ()). Un ejemplo:</p>
<pre>
<code>
// primero nos situamos en el centro
// de la pantalla
translate(50, 50);
// utilizamos rotate para rotar la caja. 
// OJO: esta función no se expresa en 
// grados sino en radianes
rotate(1.0);
// creamos la caja.
box(20, 20, 20);
</code>
</pre>
<p><img src="http://www.jesusgollonet.com/blog/recursos/tutorial_processing/ejemplo23.gif" alt="Caja en 3d semioculta" /><br />
Ya vimos en el anterior tutorial la importancia del orden de los comandos en processing. ¿Qué pasa si invertimos las transformaciones aplicadas en el último ejemplo?</p>
<pre>
<code>
rotate(1.0);
translate(50, 50);
box(20, 20, 20);
</code>
</pre>
<p><img src="http://www.jesusgollonet.com/blog/recursos/tutorial_processing/ejemplo24.gif" alt="Caja en 3d semioculta" /><br />
Como se observa, la transformación no da el mismo resultado. En teoría debería ser igual rotar un objeto y luego desplazarlo que hacerlo al revés. El estado final debería ser el mismo. ¿Por qué pasa esto?</p>
<p>Vamos a retrasar la respuesta hasta haber planteado otro problema en la siguiente sección.</p>
<h4>3. Más de un objeto a la vez.</h4>
<p>Veamos cómo lo haríamos para crear 3 cajas en distintas posiciones. Comenzamos creando una caja en unas coordenadas específicas:</p>
<pre>
<code>
// VARIOS OBJETOS:
// Caja 1 (Negra)
// Para situar una primitiva 3d en un lugar
// en el espacio, hacemos una traslación del
// sistema de coordenadas con translate(x, y, z);
// color de linea rojo
stroke(255, 0, 0); 
// color de relleno negro
fill(0); 
// traslación de coordenadas.
// x=30, y=30, z=10;
translate (30, 30, 10);
// y creamos una caja
box (15, 10, 50);
</code>
</pre>
<p><img src="http://www.jesusgollonet.com/blog/recursos/tutorial_processing/ejemplo25.gif" alt="Caja en 3d semioculta" /><br />
En el mismo archivo creamos una segunda caja:</p>
<pre>
<code>
//Caja 2 (Gris)
// Si ahora hacemos otra caja y especificamos
// exactamente las mismas coordenadas en el 
// translate, la caja deberia aparecer en el mismo
// lugar, y por tanto solaparse con la anterior...
// caja gris
fill(127); 
translate (30, 30, 10);
box (15, 10, 50);
// ...pero no lo hace.
</code>
</pre>
<p><img src="http://www.jesusgollonet.com/blog/recursos/tutorial_processing/ejemplo26.gif" alt="Caja en 3d semioculta" /><br />
¿Qué ha pasado? Nuestra caja debería aparecer en el mismo lugar que la anterior pero aparece más abajo y a la derecha. </p>
<p>La razón es la siguiente: La función translate() no transforma las coordenadas de un objeto específico, sino las coordenadas del &#8220;universo&#8221; completo de la pantalla. De este modo cuando vamos alterando sucesivamente los parámetros x, y, z las transformaciones se van &#8220;acumulando&#8221;.</p>
<p>Para comprenderlo analicemos los movimientos en el sistema de coordenadas de nuestro ejemplo: </p>
<p>La caja negra está a 30 pixeles (tanto en x como en y) de el origen de coordenadas (esquina superior izquierda)  y 10 pixeles más &#8220;cerca&#8221; de nosotros (eje z) que éste. Si observamos detenidamente la segunda caja podemos ver que ésta ha efectuado las mismas transformaciones pero respecto al nuevo sistema de coordenadas (es decir, respecto a x=30, y= 30, z=10).  La posición de la nueva caja respecto al origen de coordenadas original es, pues:</p>
<pre>
x= 30+30= 60, 
y= 30+30= 60, 
z= 10+10= 20.
</pre>
<p>**Para comprobarlo podemos hacer un nuevo sketch que sólo contenga una caja con translate(60, 60, 20) y se observará que la posición de esta es igual a la de nuestra caja gris del ejemplo.</p>
<p>&#8230;y finalizando con nuestro sketch de 3 cajas, aplicaremos lo último aprendido. Sabemos que las coordenadas de nuestro sistema ahora tienen origen en la segunda caja. Si queremos colocar una nueva justo debajo, tan sólo tendremos que alterar el eje y:</p>
<pre>
<code>
 // Caja 3 (Blanca)
fill(255);
translate (0, 10, 0);
box (15, 10, 50);
</code>
</pre>
<p>El sketch completo junto con el código fuente puede observarse <a href="http://www.jesusgollonet.com/blog/recursos/tutorial_processing/21/index.html" title="ver sketch">aquí</a>:<br />
<a href="http://www.jesusgollonet.com/blog/recursos/tutorial_processing/21/index.html" title="ver sketch"><img src="http://www.jesusgollonet.com/blog/recursos/tutorial_processing/ejemplo27.gif" alt="Caja en 3d semioculta" /></a></p>
<h4>Comentarios:</h4>
<p>Acabamos de encontrar dónde radica la dificultad (al menos para el que escribe) de trabajar con varios objetos en 3d en processing: En vez de tener un sistema de coordenadas fijo para situar los elementos especificando su posición absoluta, tenemos que ir colocandolos respecto a la última transformación. Por eso en el apartado 2 de este tutorial la rotación y la traslación daba resultados distintos según el orden en que las ejecutáramos. Teniendo esto en cuenta, no es difícil imaginar que la programación puede hacerse innecesariamente compleja con mucha rapidez.</p>
<p>Esta es la razón principal que ha inspirado este tutorial. En los dos siguientes capítulos ofreceremos dos soluciones. Una obtenida mediante comandos de processing (aún muy poco intuitiva) y la otra en forma de <a href="http://www.pitaru.com/processing/BSpace/" title="Bspace, librería para processing">librería externa</a>, que proporciona un sistema mucho más fácil de comprender.</p>
<p>Es todo por esta entrega. Como siempre, comentarios, correcciones, sugerencias y palabras en general son bienvenidos. Hasta la próxima.</p>
