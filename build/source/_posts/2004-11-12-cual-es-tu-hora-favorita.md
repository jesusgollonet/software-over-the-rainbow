---
title: ¿Cual es tu hora favorita?
author: jesus gollonet
layout: post
permalink: /2004/11/12/cual-es-tu-hora-favorita/
categories:
  - Interactivity
  - Processing
  - Programming
---
No me desagradan las 2:20 de la madrugada.  
![Captura de pantalla del reloj de color. 2:20][1]  
La 1:19 del mediodía tampoco está mal.  
![Captura de pantalla del reloj de color. 1:19][2]  
Pero creo que me quedo con las 23:58.  
![Captura de pantalla del reloj de color. 23:58][3]

Hace un par de días he vuelto a jugar con [proce55ing][4]. Como últimamente estoy pensando en la [interactividad y el tiempo][5] pensé en hacer algo en este sentido. 

Se me ocurrió un [reloj de color][6]*. Cada hora del día se representa como un tono en la escala <acronym title= "Hue Saturation Brightness. Tono Saturación Brillo">HSB</acronym>. Los minutos son el mismo color pero variando la saturación (desde 0% a los 00 minutos hasta 100% a los 59). Los segundos se reflejan igualmente pero tomando como valor máximo en cada momento la saturación de los minutos. Dependiendo de la hora a la que entremos veremos una determinada conjugación de colores.

No es que sea nada del otro mundo, pero me sirvió para retomar un poco el lenguaje (que espero seguir practicando porque me encanta). También me gustó hacer un experimento de código pensando primero y ejecutando después, y no al revés.

[http://www.jesusgollonet.com/proce55ing/reloj_color][6]

<ins datetime="2004-10-12T13:39:54--1:00">*Para ver el reloj es necesario instalar el plugin de java. Puedes descargarlo para <a href="http://www.java.com:80/en/download/linux_manual.jsp">linux</a>, <a href="http://www.java.com:80/en/download/apple_manual.jsp">macintosh</a> o <a href="http://www.java.com:80/en/download/windows_manual.jsp">windows</a></ins>

 [1]: http://www.jesusgollonet.com/blog/imagenes/hora_favorita/capturaReloj00.gif
 [2]: http://www.jesusgollonet.com/blog/imagenes/hora_favorita/capturaReloj01.gif
 [3]: http://www.jesusgollonet.com/blog/imagenes/hora_favorita/capturaReloj02.gif
 [4]: http://www.processing.org "Página oficial de processing"
 [5]: http://www.jesusgollonet.com/blog/index.php?p=19 "Elegir una hoja de estilos según la hora del día (2 posts más abajo)"
 [6]: http://www.jesusgollonet.com/proce55ing/reloj_color "applet 'reloj de color' hecho en processing"