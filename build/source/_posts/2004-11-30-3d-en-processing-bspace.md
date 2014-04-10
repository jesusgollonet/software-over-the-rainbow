---
title: 'Tutorial 3d en processing: BSpace -0-'
author: jesus gollonet
layout: post
permalink: /2004/11/30/3d-en-processing-bspace/
categories:
  - Processing
  - Programming
  - Tutorial
---
Intentando hacer en processing transformaciones de varios objetos 3d a la vez , me he encontrado con un problema: Debido a la falta de un sistema de referencias a los objetos y al peculiar resultado que producen las funciones 3d, el trabajo con varios objetos se hace poco intuitivo. 

Afortunadamente también he encontrado una excelente solución en la librería [BSpace][1] de [Amit Pitaru][2]. Y como estoy aprendiendo, por el camino he hecho un pequeño tutorial en varias partes que espero que sirva a neófitos (no se me asusten con esto del 3d y las librerías que es todo bien básico) e incluso mediófitos. 

Iré publicandolo en los próximos días. Si no se me ocurre nada más, estará divido en:

1.  [Flujo de ejecución en processing: Lo primero es lo primero][3].
2.  [Transformaciones en 3d: Problema ¿Donde está mi sistema de coordenadas?][4]
3.  Solución tentativa: push() y pop().
4.  Solución definitiva: BSpace de Amit Pitaru.

Conforme vaya publicando iré editando este post con los enlaces.

 [1]: http://www.pitaru.com/processing/BSpace/ "librería BSpace de amit pitaru"
 [2]: http://www.pitaru.com "página personal de Amit Pitaru"
 [3]: http://www.jesusgollonet.com/blog/index.php?p=39 "3d en processing: 1, Flujo de ejecución"
 [4]: http://www.jesusgollonet.com/blog/index.php?p=40 "3d en processing: 2, Sistemas de coordenadas"