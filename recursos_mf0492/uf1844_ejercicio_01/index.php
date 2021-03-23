<?php

$pais = $capital = $poblacion = $error = null;

if (isset($_POST['enviar'])) {

	$pais = filter_input(INPUT_POST, 'pais');
	$capital = filter_input(INPUT_POST, 'capital');
	$poblacion = filter_input(INPUT_POST, 'poblacion');

	if (!ctype_alpha($pais)) {
		$error = 'formato nombre pais incorrecto';
		$pais = null;
	}
	if (!ctype_alpha($capital)) {
		$error = 'formato nombre capital incorrecto';
		$capital = null;
	}
	if (!ctype_digit($poblacion)) {
		$error = 'formato poblacion incorrecto';
		$poblacion = null;
	}
}


?>
<!DOCTYPE html>
<html>

<head>
	<title>Formulario sincrono</title>
	<meta charset='UTF-8'>
	<style type="text/css">
		form {
			width: 350px;
			padding: 20px;
			margin: auto;
			border: 1px solid grey;
			background-color: lightgreen
		}

		label {
			display: inline-block;
			width: 120px;
		}

		table,
		td {
			border: 1px solid grey;
			padding: 5px;
			margin: auto;
		}

		.errores {
			text-align: center;
			border: 1px solid grey;
			width: 390px;
			margin: auto;
		}
	</style>
</head>

<body>
	<form method="post" action="#">
		<label>País: </label>
		<input type="text" name="pais" placeholder="pais" value='<?= $pais ?>'><br>
		<label>Capital: </label>
		<input type="text" name="capital" placeholder="capital" value='<?= $capital ?>'><br>
		<label>Población: </label>
		<input type="number" name="poblacion" value='<?= $poblacion ?>'><br><br>
		<input type="submit" value='Enviar' name='enviar'>
	</form>
	<br>
	<table>
		<tr>
			<td class='pais'><?= $pais ?></td>
			<td class='capital'><?= $capital ?></td>
			<td class='poblacion'><?= $poblacion ?></td>
		</tr>
	</table><br>
	<div class='errores'><?= $error ?></div>
</body>

</html>