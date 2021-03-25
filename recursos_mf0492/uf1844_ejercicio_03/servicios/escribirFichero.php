<?php
//recuperar los datos de la petición y validarlos
$pais = $_POST['pais'];
$capital = $_POST['capital'];
$poblacion = $_POST['poblacion'];

if ($pais == '' || $capital == '') {
	echo 'Pais y Capital obligatorio';
}
if (!ctype_digit($poblacion) || $poblacion <= 0) {
	echo 'Poblacion debe ser numerica y mayor que cero';
}
$csv = "Pais: $pais;Capital: $capital;Poblacion: $poblacion;\n";
file_put_contents('files/datos.txt', $csv, FILE_APPEND);

echo 'entry saved';
