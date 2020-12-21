function validar(){
    var nombre, apellido, documento, email, carrera;
    nombre = document.getElementById("nombre").value;
    apellido = document.getElementById("apellido").value;
    documento = document.getElementById("documento").value;
    email = document.getElementById("email").value;
    carrera = document.getElementById("carrera").value;

    if(nombre === "" || apellido === "" || documento === ""|| email === "" || carrera === "" || mensaje === ""){
        alert("Todos los campos son Obligartorios");
        return false;
    }
    else{
        alert("Tu Mensaje fue enviado");
    }
}
function iniciosesion(){
    var username, password;
    username = document.getElementById("username").value;
    password = document.getElementById("password").value;
    

    if(username === "" || password === ""){
        alert("Ingrese los datos para iniciar sesion.");
        return false;
    }
    else{
        alert("Bienvenido");
    }
}

