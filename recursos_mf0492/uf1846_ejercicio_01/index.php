<?php
//clase genérica Usuario

class Usuario
{
	//atributos
	protected $nif;
	protected $nombre;
	protected $apellido;
	protected $direccion;

	//constructor
	public function Usuario($nif, $nom, $ape, $dir)
	{
		$this->setNif($nif);
		$this->setNombre($nom);
		$this->setApellido($ape);
		$this->setDireccion($dir);
	}

	//getters y setters
	public function getNif()
	{
		return $this->nif;
	}
	public function getNombre()
	{
		return $this->nombre;
	}
	public function getApellido()
	{
		return $this->apellido;
	}
	public function getDireccion()
	{
		return $this->direccion;
	}

	public function setNif($nif)
	{
		try {
			if (empty($nif)) {
				throw new Exception("Nif no informado");
			}

			$this->nif = $nif;
		} catch (Exception $e) {
			throw new Exception($e->getMessage());
		}
	}
	public function setNombre($nom)
	{
		if (empty($nom)) {
			echo 'nombre no informado';
			return;
		}
		$this->nombre = $nom;
	}
	public function setApellido($ape)
	{
		if (empty($ape)) {
			echo 'apellido no informado';
			return;
		}
		$this->apellido = $ape;
	}
	public function setDireccion($dir)
	{
		if (empty($dir)) {
			echo 'direccion no informado';
			return;
		}
		$this->direccion = $dir;
	}

	//otros métodos

	public function info()
	{
		echo '<br>Usuarion con nif: ' . $this->nif . '; Nombre: ' . $this->nombre . '; Apellido: ' . $this->apellido . '; Direccion: ' . $this->direccion . '<br>';
	}
}
// ------------------------------------------

//subclase Alumno
class Alumno extends Usuario
{
	//atributo específico
	private $curso;

	//constructor
	public function Alumno($nif, $nom, $ape, $dir, $cur)
	{
		parent::Usuario($nif, $nom, $ape, $dir);
		$this->setCurso($cur);
	}
	//getter y setter
	public function getCurso()
	{
		return $this->curso;
	}
	public function setCurso($cur)
	{
		$this->curso = $cur;
	}

	//otros métodos
	public function info()
	{
		echo '<br>Usuarion con nif: ' . $this->nif . '; Nombre: ' . $this->nombre . '; Apellido: ' . $this->apellido . '; Direccion: ' . $this->direccion . ' esta en curso: ' . $this->curso . '<br>';
	}
}
// ------------------------------------------

//instanciar un Alumno 

try {
	$estudiante1 = new Alumno('A1234567B', 'Barac', 'Obama', 'USA', 'Full stack');
} catch (Exception $e) {
	//capturar y tratar la excepción
	echo $e->getMessage();
}

echo $estudiante1->info();
