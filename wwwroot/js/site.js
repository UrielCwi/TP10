function MostrarActores(IdS){
    $.ajax({
        type:'POST',
        dataType: 'JSON',
        url: 'Views\Home\VerDetalleActores',
        data:{IdSerie: IdS},
        success:
            function(response)
            {
                $("#NombreActor").html(response.Nombre);
            }
    });
}

function MostrarTemporadas(IdS){
    $.ajax({
        type:'POST',
        dataType: 'JSON',
        url: 'Views\Home\VerDetalleTemporadas',
        data:{IdSerie: IdS},
        success:
            function(response)
            {
                $("#NumeroTemporada").html("Temporadas Totales: "+ response.NumeroTemporada);
                $("#TituloTemporada").html("Nombre de las Temporadas: "+ response.TituloTemporada);
            }
    });
}

function MostrarSeries(){
    $.ajax({
        type:'POST',
        dataType: 'JSON',
        url: 'Views\Home\VerDetalleSerie',
        success:
            function(response)
            {
                $("#NombreSerie").html(response.Nombre);
                $("#AñoInicio").html("Su añode inicio fue en: "+response.AñoInicio.substr(0,9));
                $("#Sinopsis").html(response.Sinopsis);
                $("#ImagenSerie").attr("src","/"+response.ImagenSerie);
            }
    });
}