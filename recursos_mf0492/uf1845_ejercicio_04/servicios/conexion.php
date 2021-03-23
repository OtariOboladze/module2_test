<?php
	try {
		//parámetros de la conexión
		$parametros = "mysql:host=localhost;dbname=comentarios;charset=UTF8";

		//conexión a la bbdd
		$conexion = new PDO($parametros, 'root', '');

		//manejador de error
		$conexion->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);

	} catch (PDOException $e) {
		//relanzar una excepción
		throw new PDOException($e->getMessage(), $e->getCode());			
	}
?>