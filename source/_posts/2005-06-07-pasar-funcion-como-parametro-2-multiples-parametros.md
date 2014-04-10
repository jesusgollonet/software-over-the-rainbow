---
title: 'Pasar funcion como parametro. 2: Multiples parametros.'
author: jesus gollonet
layout: post
permalink: /2005/06/07/pasar-funcion-como-parametro-2-multiples-parametros/
categories:
  - Actionscript
  - Programming
  - Tutorial
---
En una entrada anterior comentaba cómo <a href="http://www.jesusgollonet.com/blog/index.php?p=44" title = "Post: Pasar función como parámetro [en este blog]">pasar el nombre de una función a otra como parámetro</a>. Sin embargo, no sabía cómo pasarle un número indeterminado de parámetros a la función llamada. Tras varios intentos fallidos, lo dejé en el tintero. Hoy, buscando otra cosa, he encontrado lo que me quedaba para solucionarlo en otro blog. Me explico:

Cada vez que llamamos una función, de forma predefinida se crea dentro de esta un array de nombre arguments, que almacena todos los parámetros pasados. 

    
    function a(param1, param2, param3) {
      trace(arguments);
    }
    a ("pepe", "juan", "jorge");
    // la ventana de salida muestra : pepe, juan, jorge
    // * ya lo se, qué parametros mas aburridos *
    

Dado que arguments es un array, podemos hacer todas las operaciones de esta clase con ella. Por ejemplo:

    
    function a(param1, param2, param3) {
      trace(arguments.length);
    }
    a ("pepe", "juan", "jorge");
    // la ventana de salida muestra : 3
    

La idea era pasar el array de parámetros de una funcion a la segunda, pero ahí me quedé. No había manera de concatenar los parámetros para pasarlos a la función de dentro. Pero&#8230; hoy me he encontrado con esto:

[Using an array as a list of arguments][1]

Tenía toda la pinta de ser lo que andaba buscando. Y en efecto:

Si utilizo el método [function.apply()][2] puedo pasar un array como lista de argumentos.

    
    // array de parametros
    d_arr = ["un", "dos"]
    
    function c (arg1, arg2) {
    	trace ( arg1+ ", "+arg2);
    }
    // uso el método function.apply() pasándole el nombre de la matriz 
    // como parámetro. *el otro parámetro no nos sirve aquí, por eso paso null.
    c.apply(null, d_arr);
    

Juntando todo esto, pues, tenemos la solución definitiva para pasar cualquier función (tenga parámetros o no) como parámetro de otra:

    
    // función genérica que llamará a cualquier función con cualquier número de parámetros
    function a(func, args) {
    	// eliminamos el primer elemento del array arguments.
    	newArguments = arguments.splice(1, arguments.length);
    	// y llamamos a la función desde dentro con function.apply()
    	// pasándole el nuevo array arguments como parámetro.
    	func.apply(null, newArguments);
    }
    // función cualquiera, sosa.
    function b(arg1, arg2, arg3) {
    	// trace de los de toda la vida con 3 parámetros
    	trace("Vaya post "+arg1+" "+arg2+" "+arg3);
    }
    // llamada
    a(b, "más", "mal", "explicado.");
    // la ventana de salida mostrará "Vaya post más mal explicado"
    
    

Y eso es todo. Así no se me olvida.

 [1]: http://jeff.mxdj.com/using_an_array_as_a_list_of_arguments.htm
 [2]: http://www.macromedia.com/support/flash/action_scripts/actionscript_dictionary/actionscript_dictionary369.html "function.apply en el diccionario de actionscript [inglés]"