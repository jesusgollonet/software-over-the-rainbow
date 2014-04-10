---
title: 'OpenSound Control: Recopilacion de recursos.'
author: jesus gollonet
layout: post
permalink: /2005/08/17/open-sound-control-recopilacion/
categories:
  - Interactivity
  - Multimedia
  - Programming
---
Si quisieras, por ejemplo, hacer que processing leyera el input de tu tableta wacom o tu webcam y max/msp lo tradujera a sonidos, o que un ordenador estuviera recibiendo información de sensores y otro (ya sea en una red local o en internet) estuviera generando cualquier output (visual, sonoro, &#8230;) de acuerdo con los datos recibidos, tarde o temprano te toparías con que la comunicación entre programas, sensores y/o ordenadores la realizaría un &#8220;algo&#8221; llamado [OpenSound Control][1] (&#8220;OSC&#8221;), pues:

> OpenSound Control (&#8220;OSC&#8221;) is a protocol for communication among computers, sound synthesizers, and other multimedia devices that is optimized for modern networking technology and has been used in many application areas. 

Genial. Es lo que necesito para desarrollar alguna cosilla que me ronda la cabeza últimamente. Pero&#8230; al buscar algo de documentación (&#8220;beginner&#8217;s-friendly&#8221; por favor), me he encontrado que no hay casi nada al respecto y lo que hay está muy disperso. 

Es por eso que he pensado en recopilar los (escasos) recursos útiles que me he encontrado:

[Open Sound Control: State of the Art 2003][2]
:   Aparentemente todo lo que necesitas saber sobre OSC, incluyendo una descripción de sus componentes, las principales implementaciones ([Max/MSP][3], [SuperCollider][4], [Reaktor][5], [Pure Data][6]&#8230;) y una relación de beneficios. 

[Open Sound Control, An Overview][7]
:   Explicación de la gente de [ixi-software][8], creadores, por ejemplo de [Picker][9] y [SpinOSC][10]. Una introducción a OSC más general y menos académica que la primera. Probablemente mejor para empezar si no tienes ninguna idea.

[OpenSound Control Specification][11]
:   La especificación completa. Yo empecé por aquí y no lo recomiendo, aunque siempre conviene tenerla a mano. Especialmente útiles los [ejemplos][12]

[Capítulo sobre OSC en el manual de OSW][13]
:   [Open Sound World][14] es un entorno de programación extensible creado por los mismos que el protocolo OSC (el [CNMAT][15]), de funcionamiento parecido a [Max/MSP][3] y [otros lenguajes][16] de &#8220;cableado&#8221;. Aunque esta es la descripción de una implementación específica, los ejemplos provistos ayudan a comprender el funcionamiento general del invento.

[OpenSoundControl Application Areas][17] y [Managing Complexity with Explicit Mapping of Gestures to Sound Control with OSC][18]
:   Para que veas lo que se puede hacer

Si alguien tiene algún otro recurso que compartir, coméntelo y lo añado a la lista.

 [1]: http://www.cnmat.berkeley.edu/OpenSoundControl/ "Homepage de OpenSound Control en el CNMAT"
 [2]: http://www.cnmat.berkeley.edu/Research/NIME2003/NIME03_Wright.pdf "Paper introductorio en pdf [en]"
 [3]: http://www.cycling74.com "Home de Cycling74, autores de Max/MSP"
 [4]: http://www.audiosynth.com
 [5]: http://www.nativeinstruments.de/index.php?home_us
 [6]: http://www.puredata.org "Portal de puredata"
 [7]: http://www.ixi-software.net/content/info/osc.html
 [8]: http://www.ixi-software.net/ "Software experimental musical. Raro y gratis"
 [9]: http://www.ixi-software.net/content/body_software_picker.html "Traduce imágenes a mensajes OSC"
 [10]: http://www.ixi-software.net/content/body_software_spinosc.html "Objetos rotantes que envían mensajes OSC"
 [11]: http://www.cnmat.berkeley.edu/OpenSoundControl/OSC-spec.html "Para los valientes"
 [12]: http://www.cnmat.berkeley.edu/OpenSoundControl/OSC-spec-examples.html "OpenSound Control Spec Examples"
 [13]: http://osw.sourceforge.net/html/osc.htm
 [14]: http://osw.sourceforge.net/ "home de OSW en sourceforge"
 [15]: http://cnmat.berkeley.edu/ "Center for New Music and Audio Technologies de la Universidad de Berkeley"
 [16]: http://www.puredata.org/ "puredata, la alternativa opensource a Max/MSP"
 [17]: http://cnmat.cnmat.berkeley.edu/OpenSoundControl/application-areas.html "Áreas de aplicación"
 [18]: http://www.cnmat.berkeley.edu/ICMC2001/html/OSC-GestureMap.icmc.html "Tabletas wacom, joysticks, superficies de control... todo a OSC"