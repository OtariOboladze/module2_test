<?php
	//clase genérica Usuario

	class Usuario{
		
		//atributos
		protected $nif;
		protected $nombre;
		protected $apellido;
		protected $direccion;

		
		//constructor

		public function Usuario($nif, $nom, $ape, $dir ){
			try {
				$this->setNif($nif);
				$this->setNombre($nom);
				$this->setApellido($ape);
				$this->setDireccion($dir);
			} catch (Exception $e) {
				throw new Exception($e->getMessage());
			}
		}
		
		//getters y setters
		public function getNif() {
			return $this->nif;
		}
		public function getNombre() {
			return $this->nombre;
		}
		public function getApellido() {
			return $this->apellido;
		}
		public function getDireccion() {
			return $this->direccion;
		}

		public function setNif($nif) {
			try {
				if (empty($n)) {
					throw new Exception("Nombre no informado");
				}

				$this->nombre = $n;
			} catch (Exception $e) {
				throw new Exception($e->getMessage());
			}
		}
		public function setNombre($nom) {
			if (empty($a)) {
				echo 'apellido no informado';
				return;
			}
			$this->apellido = $a;
		}
		public function setApellido($ape) {
			if (empty($a)) {
				echo 'apellido no informado';
				return;
			}
			$this->apellido = $a;
		}
		public function setDireccion($dir) {
			if (empty($a)) {
				echo 'apellido no informado';
				return;
			}
			$this->apellido = $a;
		}



		//otros métodos
		
	}
	// ------------------------------------------

	//subclase Alumno

		//atributo específico

		//constructor

		//getter y setter

		//otros métodos

	// ------------------------------------------

	//instanciar un Alumno 



 Los correspondientes getters y setters
 Un método para mostrar los datos del usuario
 No podremos instanciar directamente un objeto de esta clase

Necesitamos una clase subordinada Alumno con las siguientes características:
 Atributo curs
 Un constructor para informar este nuevo atributo y los de la superclase
 El correspondiente getter y setter
 Un método que amplie el método de mostrar datos de la superclase
 Instanciar un objeto de esta clase y mostrar sus datos