---
title: Pasar funcion como parametro
author: jesus gollonet
layout: post
permalink: /2005/01/20/pasar-funcion-como-parametro/
categories:
  - Actionscript
  - Programming
  - Tutorial
---
El otro día estaba intentando hacer una función en actionscript que me llamara a otra función después de una pausa aleatoria. Dado que pensaba utilizarla para varias cosas distintas dentro del mismo programa, la llamada a la segunda función debía ser un parámetro, al estilo de [setInterval][1] (no utilicé éste por diversas razones). La llamada a la función sería tal que así:

    
    pausaAleatoria(funcionLlamada, valorMin, valorMax);
    
    

Entonces me topé con un problema que me ha surgido muchas veces y hasta ahora no había podido resolver: ¿Cómo ejecuto la función cuyo nombre he pasado como parámetro dentro de la otra? Dado que es lo que hace precisamente setInterval, resulta lógico que sea posible hacerlo&#8230;

La manera más obvia de hacerlo me parecía pasarle el nombre de la función como string y hacer varios tipos de eval (`eval("funcionLlamada" + ())`, `eval ("funcionLlamada()")` así que probé muchas cosas en esta línea, pero nada funcionaba. Varias búsquedas por la web también resultaron infructuosas. 

Ahora que por fin me han dado la solución (gracias, [natalia][2]) resulta, como casi todo una vez q lo sabes, ridículamente sencillo. No hay que hacer ningún eval ni prestidigitación de ningún tipo. Un ejemplo:

    
    // esta es una función cualquiera
    function a () {
      trace ("soy la funcion a");
    }
    // y desde otra función vamos a llamar a la primera
    function b (funcionLlamada) {
      trace ("soy la funcion b");
      funcionLlamada<strong>()</strong>;
    }
    // y lo ejecutamos tal que así.
    b(a);
    // en la ventana de trace aparecerá 
    // soy la funcion b 
    // soy la funcion a
    
    

La clave (que yo no alcanzaba a ver) está en que los paréntesis que ponemos después de una función **son un operador** y no un simbolo arbitrario. Igual que el signo + entre dos valores significa &#8220;suma esto&#8221;, el operador () significa &#8220;ejecuta esto&#8221; 

Quizás este problema solo lo haya tenido yo por mi idiosincrática manera de programar, pero aquí lo dejo como referencia para mi y todo el que lo quiera. Seguro que alguna vez a alguien le sirve. 

**Nota**: El tema de pasarle parámetros es igual de facil si conocemos a priori el número de parámetros que queremos pasarle. Basta con ponerlos dentro del operador (); pero dado que lo que quería era una función genérica, esto no me sirve . Si consigo (o alguien me cuenta) la solución para pasarle un número indeterminado de parámetros, también la pongo por aquí, no sea que se me vuelva a olvidar. Buenas tardes.

 [1]: http://www.macromedia.com/support/flash/action_scripts/actionscript_dictionary/actionscript_dictionary646.html "ver setInterval en el diccionario de actionscript [inglés]"
 [2]: http://www.nataliarojas.com "ir a la web de natalia rojas"