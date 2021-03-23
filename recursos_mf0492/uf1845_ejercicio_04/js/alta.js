//NO TOCAR ESTE FICHERO

//activar el listener del boton de login
window.onload=function() {
	document.querySelector('#alta').onclick = alta
}

//definir la función alta
function alta() {

	//recuperar los datos
	var nif	= document.querySelector('#nif').value.trim()
	var nombre	= document.querySelector('#nombre').value.trim()
	var apellidos	= document.querySelector('#apellidos').value.trim()
	var email	= document.querySelector('#email').value.trim()
	var password = document.querySelector('#password').value.trim()
	var tipo	= document.querySelector('#tipo').value

	//construir los parámetros de la petición ajax
	var datos = new FormData();
	datos.append('nif', nif);
	datos.append('nombre', nombre);
	datos.append('apellidos', apellidos);
	datos.append('email', email);
	datos.append('password', password);
	datos.append('tipo', tipo);

	var parametros = {
		method: 'post',
		body: datos
	}

	var servicio = 'servicios/alta.php';

	//enviar la petición con fetch
	fetch(servicio, parametros)
	.then(function(respuesta) {
		if (respuesta.ok) {
			return respuesta.text()
		} else {
			console.log(respuesta)
			throw ('algo ha ido mal')
		}
	})
	.then(function(mensaje) {
		alert(mensaje)
	})
	.catch(function(error) {
		alert(error)
	})	
}