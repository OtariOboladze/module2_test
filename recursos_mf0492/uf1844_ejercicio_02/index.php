<?php
$nota = rand(0, 10);
$calificacion = null;

function test($n)
{
	if ($n < 5) {
		$c = 'Suspenso';
	} else if ($n == 6 || $n == 7) {
		$c = 'Aprobado';
	} else if ($n == 8 || $n == 9) {
		$c = 'Notable';
	} else {
		$c = 'Excelente';
	}
	return $c;
}

$calificacion = test($nota);

?>
<!DOCTYPE html>
<html>

<head>
	<title>Funciones</title>
	<meta charset='UTF-8'>
	<style type="text/css">
		div {
			text-align: center;
			border: 1px solid grey;
			width: 390px;
			margin: auto;
		}

		h2 {
			text-align: center;
		}
	</style>
</head>

<body>
	<h2>Funciones</h2>
	<div>
		<span>Nota: <?= $nota ?></span>
	</div>
	<div>
		<span>Calificación: <?= $calificacion ?></span>
	</div>
</body>

</html>