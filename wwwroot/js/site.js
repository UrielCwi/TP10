function MostrarActores(IdS){
    $.ajax({
        type:'POST',
        dataType: 'JSON',
        url: ' /Home/VerDetalleActor',
        data:{IdSerie: IdS},
        success:
            function(response)
            {
                $("#titulo").html("Actores");
                response.forEach(item => {
                    $("#texto1").html(item.Nombre);
                });
            }
    });
}

function MostrarTemporadas(IdS){
    $.ajax({
        type:'GET',
        dataType: 'JSON',
        url: ' /Home/VerDetalleTemporadas',
        data:{IdSerie: IdS},
        success:
            function(response)
            {
                $("#titulo").html("Temporadas");
                response.forEach(item => {
                    $("#texto1").html("Temporadas Totales: "+ item.NumeroTemporada);
                    $("#texto2").html("Nombre de las Temporadas: "+ item.TituloTemporada); 
                });
            }
    });
}

function MostrarSeries(IdS){
    $.ajax({
        type:'POST',
        dataType: 'JSON',
        url: ' /Home/VerDetalleASerie',
        data:{IdSerie: IdS},
        success:
            function(response)
            {
                $("#titulo").html("Series");
                response.forEach(item => {
                    $("#texto1").html(response.Nombre);
                    $("#texto2").html("Su año de inicio fue en: "+ response.AñoInicio);
                    $("#texto3").html(response.Sinopsis);
                    $("#imagen1").attr("src","/"+response.ImagenSerie);
                });
            }
    });
}