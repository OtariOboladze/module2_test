<?php
	//evitar que se ejecute fuera de una petición ajax
	if (!isset($_SERVER['HTTP_REFERER']) || strpos($_SERVER['HTTP_REFERER'], '/servicios')) {
		echo '402 forbidden'; return;
	}

	try {
		//recuperar los datos de la petición
		//???? a completar por el alumno ????
		
		//validar la obligatoriedad de totos los datos excepto email y tipo
		//???? a completar por el alumno ????
		
		//conexión a la base de datos
		require('conexion.php');

		//preparar la sentencia
		//???? a completar por el alumno ????
		
		//bind parámetros
		//???? a completar por el alumno ????
		
		//ejecutar la sentencia y recuperar la clave asignada a la persona
		//???? a completar por el alumno ????
		
		//confeccionar el mensaje de alta
		//???? a completar por el alumno ????

	} catch (PDOException $e) {
		//controlar el error de registro duplicado
		//???? a completar por el alumno ????
		
	} catch (Exception $e) {
		//confeccionar la respuesta en caso de error
		//???? a completar por el alumno ????
		
	} 

	//enviar la respuesta de la petición ajax
	//???? a completar por el alumno ????

?>