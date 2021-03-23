<?php
	//evitar que se ejecute fuera de una petición ajax
	if (!isset($_SERVER['HTTP_REFERER']) || strpos($_SERVER['HTTP_REFERER'], '/servicios')) {
		echo '402 forbidden'; return;
	}

	try {
		//recuperar los datos de la petición de forma que evitemos la inyección de código
		
		//validar la obligatoriedad de los datos

		//conexión a la base de datos
		
		//acceder a la tabla usuario para recuperar la password
		
		//validar que recuperamos una fila
		
		//recuperar los datos de la fila seleccionada

		//validar que la password de la bbdd coincida con la informada en el formulario
		
		//Si coincide guardar en una cookie de nombre 'usuario' el nombre y los apellidos concatenados
		
		//generar la respuesta en formato text
	} catch (Exception $e) {
		//confeccionar la respuesta en caso de error
	}

	//enviar la respuesta de la petición ajax

?>