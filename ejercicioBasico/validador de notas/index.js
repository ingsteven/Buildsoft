var validar = function (nota1){
    var nota1 = parseFloat(document.getElementById('nota1').value);// es una funcion que lo convierte en un flotante
    if (nota1>0 && nota1<3) // es un condicional
        return "no aprobado"
    else if (nota1>=3 && nota1 <4) // rango valida nota y retorna co condion verdadera 
        return "Aprobo"
    else if (nota1>=4 && nota1 <4.5)
        return "Sobre Saliente"
    else if (nota1>=4.5 && nota1 <=5) // rango valida nota1 y retorna el scterp se visualiza el texto
        return "Excelente"
    else  return"Digite bien la nota";

    
}