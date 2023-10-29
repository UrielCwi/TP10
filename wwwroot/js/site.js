$(document).ready(function () {

    $('#Modal').modal('hide');
});
function limpiar(){
    $("#titulo").html("");
    $("#texto1").html("");
    $("#texto2").html("");
    $("#texto3").html("");
    $("#imagen1").attr("src","");
}
function MostrarActores(IdS){
    $.ajax({
        type:'POST',
        dataType: 'JSON',
        url: ' /Home/VerDetalleActor',
        data:{IdSerie: IdS},
        success:
            function(response)
            {
                limpiar();
                var texto = "";
                response.forEach(item => {
                    texto += (item.nombre + "<br/>");
                });
                $("#titulo").html("Actores");
                $("#Modal").modal('show');
                $("#texto1").html(texto);
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
                limpiar();
                var texto = "";
                response.forEach(item => {
                    texto += (item.tituloTemporada + "<br/>");
                });
                $("#titulo").html("Temporadas");
                $("#Modal").modal('show');
                $("#texto1").html("Temporadas Totales: <strong>" + response.length + "</strong>");
                $("#texto2").html("<strong>Nombre de las Temporadas: </strong>"); 
                $("#texto3").html(texto);
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
                limpiar();
                $("#titulo").html("Series");
                $("#Modal").modal('show');
                response.forEach(item => {
                    $("#texto1").html(item.nombre);
                    $("#texto2").html("Su año de inicio fue en: " + item.añoInicio.toString());
                    $("#texto3").html(item.sinopsis);
                    $("#imagen1").attr("src",item.imagenSerie);
                });
            }
    });
}