---
title: 'Mas processing: Reloj de color, variaciones'
author: jesus gollonet
layout: post
permalink: /2004/11/17/mas-processing-reloj-de-color-variaciones/
categories:
  - Interactivity
  - Processing
  - Programming
---
Últimamente cada vez que tengo un rato libre (e incluso algunos que no son libres) siempre acabo abriendo [processing][1]. Estoy haciendo variaciones sobre el sketch del [reloj de color][2].

En esta ocasión pretendía, siguiendo con el[ esquema original][3] (hora= Tono, minutos y segundos= Saturación) representar una hora entera cada vez. La inspiración viene (salvando las evidentes distancias) del [Cinema Redux][4] de [Brendan Dawes][5] . En un principio pensé en guardar automáticamente una captura de pantalla de cada segundo y luego colocarlas en una nueva imagen en un segundo sketch, pero eso me limitaría a generar imágenes estáticas. Prefiero continuar haciéndolo interactivo.

Finalmente he hecho algo más simple. En un cuadrado de 60 x 60, el eje horizontal representa los segundos, y el vertical los minutos. La hora sigue representada por el tono, pero ahora sólo vemos el de los segundos&#8230; El resultado es que a los 59 minutos se observa un degradado desde blanco en la esquina superior derecha al tono que marque la hora abajo a la derecha&#8230; es un poco difícil de explicar. Mejor vean [el applet][6]*.

Dudo que tenga la más mínima utilidad como reloj, y el resultado visual es bastante pobre, pero estamos en proceso. 

* Es necesario instalar el plugin de java. Puedes descargarlo para [linux][7], [macintosh][8] o [windows][9].

 [1]: http://www.processing.org "página oficial de processing"
 [2]: http://www.jesusgollonet.com/proce55ing/reloj_color/ "sketch reloj de color en processing"
 [3]: http://www.jesusgollonet.com/blog/index.php?p=28 "post en este blog que explica el reloj de color"
 [4]: http://www.brendandawes.com/sketches/redux/index.html "sketch de processing que muestra en una imagen 1 película entera"
 [5]: http://www.brendandawes.com "sitio web del diseñador interactivo Brendan Dawes"
 [6]: http://jesusgollonet.com/proce55ing/reloj_color02/ "reloj de color 02"
 [7]: http://www.java.com:80/en/download/linux_manual.jsp
 [8]: http://www.java.com:80/en/download/apple_manual.jsp
 [9]: http://www.java.com:80/en/download/windows_manual.jsp