//NO TOCAR ESTE FICHERO

window.onload = function () {
  document.querySelector("#enviar").onclick = enviarDatos;
};

function enviarDatos() {
  var pais = document.querySelector("#pais").value.trim();
  var capital = document.querySelector("#capital").value.trim();
  var poblacion = document.querySelector("#poblacion").value;

  //confeccionar la petición ajax
  var datos = new FormData();
  datos.append("pais", pais);
  datos.append("capital", capital);
  datos.append("poblacion", poblacion);

  var ajax = new XMLHttpRequest();
  var url = "servicios/escribirFichero.php";

  ajax.open("POST", url, true);

  ajax.onreadystatechange = function () {
    if (this.status === 200 && this.readyState === 4) {
      alert(this.responseText);
    } else {
      console.log(this);
      this.onerror = function () {
        alert("algo ha ido mal");
      };
    }
  };

  ajax.send(datos);
}
