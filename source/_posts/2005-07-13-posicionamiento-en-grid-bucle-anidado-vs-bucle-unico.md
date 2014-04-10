---
title: Posicionamiento en grid. Bucle anidado vs bucle unico
author: jesus gollonet
layout: post
permalink: /2005/07/13/posicionamiento-en-grid-bucle-anidado-vs-bucle-unico/
categories:
  - Programming
  - Tutorial
---
Pues siguiendo con la serie de code-tips-que-no-aportan-nada-nuevo-pero-me-sirven-para-no-olvidarlos, hoy tenemos dos maneras de distribuir objetos en un grid (el código es actionscript pero vale para cualquier lenguaje). 

<kml_flashembed movie="http://www.jesusgollonet.com/blog/recursos/swf/grid.swf" height="160" width="160"></kml_flashembed>

Habitualmente siempre que he tenido que hacer un grid (¿rejilla? ¿grilla?) utilizo dos bucles for anidados. El código suele ser algo así:

    
    // contador de clips
    cont = 0;
    // separacion del grid respecto al borde
    offset = 20;
    // separacion entre clips
    dist = 10
    //-----------------------------------------------------------
    // filas
    for (i=0; i<5; i++) {
    	// columnas
    	for (j=0; j<5; j++) {
                    // duplicamos un clip a en el escenario
    		var nuevoClip = a.duplicateMovieClip("a"+cont, cont);
                    // posicionamos
    		with (nuevoClip) {
    			_x = offset+i*(nuevoClip._width + dist);
    			_y = offset+j*(nuevoClip._height + dist);
    		}
                    // aumentamos el contador
    		cont++;
    	}
    }
    
    

El otro día vi en algún sitio una manera de hacerlo con un sólo bucle y no comprendía bien el funcionamiento. El código que vi era algo parecido a esto:

    
    // contador de clips
    cont = 0;
    // filas
    filas = 5;
    // columnas
    columnas = 6;
    // total cuadros
    total= filas*columnas;
    // separacion del grid respecto al borde
    offset = 20;
    // separacion entre clips
    dist = 10
    //-----------------------------------------------------------
    for (k=0; k<total ; k++) {
    	// duplicar clip b
    	var nuevoClip = b.duplicateMovieClip("b"+cont, cont);
    	// posicionar
    	with (nuevoClip) {
    		_x = offset + Math.floor(k % filas)*(nuevoClip._width + dist);
                    _y = offset + Math.floor(k / filas)*(nuevoClip._height + dist);
    	}
    	cont++;
    }
    
    
    

Lo fundamental es que si dividimos la posición actual `k` por el numero de filas y **lo convertimos a entero**, nos da la fila en la que estamos: 

**clip 0:** k = 0, filas = 5; Math.floor(0 / 5) = 0; // primera fila  
**clip 1:** k = 1, filas = 5; Math.floor(1 / 5) = 0; // primera fila  
&#8230;  
**clip 4:** k = 4, filas = 4; Math.floor(4 / 5) = 0; // primera fila  
**clip 5:** k = 5, filas = 5; Math.floor(5/ 5) = 1; // segunda fila  
&#8230;  
**clip 16:** k = 16, filas = 5; Math.floor(16 / 5) = 3; // cuarta fila  
&#8230;  
**clip 24:** k = 24, filas = 5; Math.floor(24 / 5) = 4; // ultima fila

Para la posicion x utilizamos el operador módulo `%`. El resto de la misma división que hemos utilizado para la fila, nos da la posicion en la columna:

**clip 0:** k = 0, filas = 5; Math.floor(0 % 5) = 0; // (el resto es 0) => primera columna  
**clip 1:** k = 1, filas = 5; Math.floor(1 % 5) = 1; //(el resto es 1) => segunda columna  
&#8230;  
**clip 4:** k = 4, filas = 4; Math.floor(4 % 5) = 4; // ultima columna  
**clip 5:** k = 5, filas = 5; Math.floor(5 % 5) = 0; // primera columna  
&#8230;  
**clip 16:** k = 16, filas = 5; Math.floor(16% 5) = 1; // segunda columna  
&#8230;  
**clip 24:** k = 24, filas = 5; Math.floor(24 % 5) = 4; // ultima columna

Luego, simplemente con multiplicar los valores de fila y columna por la distancia entre clips + la anchura o altura de cada clip `(nuevoClip._width + dist)` (tal y como hicimos también en el primer ejemplo), hallamos la posición del elemento en el grid.

Y para muestra, [los dos ejemplos][1]

Y eso es todo.

 [1]: http://www.jesusgollonet.com/blog/recursos/grids.zip "descargar código fuente en zip"