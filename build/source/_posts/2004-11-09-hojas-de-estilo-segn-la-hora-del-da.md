---
title: Hojas de estilo según la hora del día
author: jesus gollonet
layout: post
permalink: /2004/11/09/hojas-de-estilo-segn-la-hora-del-da/
categories:
  - Interactivity
  - Programming
  - Web
---
Habitualmente cuando hablamos de interactividad como un añadido en la web solemos limitarnos al binomio persona-ordenador. Sin embargo, la interactividad puede implicar otras relaciones no tan exploradas . 

Una variable que puede dar resultados interesantes es el tiempo. Con un código relativamente sencillo podemos hacer que una página web se comporte de manera distinta dependiendo de, por ejemplo, la hora del día. 

Aquí tenemos un pequeño código que ya puse en la lista de correo de [www.ovillo.org][1] que nos permitirá, mediante javascript y <acronym title="Cascading Style Sheets">CSS</acronym> darle un aspecto distinto a una página web dependiendo de la hora a la que entre el usuario.

Es realmente básico. Simplemente cogemos la hora del sistema con el objeto Date y dependiendo de cual sea escribimos con document.write la dirección de una hoja de estilos u otra.

Metemos en el Head del documento este javascript:

    
    var fecha=new Date(); 
    // tomamos la fecha con el objeto Date();
    var ahora= fecha.getHours(); 
    // metemos la hora actual en una variable
    var amanece=7; 
    // pongamos que amanece a las 7...
    var anochece=21; 
    // y anochece a las 8 de la tarde.
    if (ahora < amanece ||  ahora > anochece) {
        // si la hora actual es menor que la de amanecer 
        //y mayor que la de anochecer; 
        document.write('<link rel="stylesheet" href="noche.css" type="text/css">' );
       // tomamos la hoja de estilos "noche.css"
    } else {
       document.write('<link rel="stylesheet" href="dia.css" type="text/css">');
        // y si no pues "dia.css"
    }
    
    

Creamos dos hojas distintas de estilos para el &#8220;dia&#8221;y la &#8220;noche&#8221;  
\*&#8221;dia.css&#8221;\*

    
    body  {
       color: black;
       background-color: white;
    }
    
    

\*&#8221;noche.css&#8221;\*

    
    body  {
       color: white;
       background-color: black;
    }
    
    

Si probais a cambiar la hora de amanecer o anochecer vereis como cambian las hojas de estilo.

El ejemplo es una simplificación extrema, y podría ser fácilmente implementado (y seguro con resultado más interesantes) en actionscript y otros lenguajes. Más sobre esto pronto.

 [1]: http://www.ovillo.org "la lista de correo de css y estándares en castellano"