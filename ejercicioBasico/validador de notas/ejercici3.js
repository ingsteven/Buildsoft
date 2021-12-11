var validar = function (nota1,nota2,nota3){
    var nota1 = parseFloat(document.getElementById('nota1').value)// es una funcion que lo convierte en un flotante
    var nota2 = parseFloat(document.getElementById('nota2').value);
    var nota3 = parseFloat(document.getElementById('nota3').value);
    
    var suma = nota1 + nota2 + nota3;
    var divisio = suma / 3;

    alert(divisio)
    
    if (divisio>0 && divisio<3) // es un condicional
        return "no aprobado"
    else if (divisio>=3 && divisio <4) // rango valida nota y retorna co condion verdadera 
        return "Aprobo"
    else if (divisio>=4 && divisio <4.5)
        return "Sobre Saliente"
    else if (divisio>=4.5 && divisio <=5) // rango valida nota1 y retorna el scterp se visualiza el texto
        return "Excelente"
    else  return"Digite bien la nota";

        
}