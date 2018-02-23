$(document).ready(function () {
    $('.user').fadeIn(5000);
    $('.button-collapse').sideNav();
    $('select').material_select();

    $(document).on("click", "#tablaequipo tr td .boton-eliminar", function() {
        let fatherId = $(this).parent().closest("tr").attr("id");
        
        $( function() {
            $( "#dialog-confirm" ).dialog({
                show: {
                    effect: "fade",
                    duration: 1000
                },
                    hide: {
                    effect: "explode",
                    duration: 1000
                },                
            resizable: false,
            height: "auto",
            width: 400,
            modal: true,
            buttons: {
                "Eliminar equipo": function() {
                    $.post({ 
                        url: "borrarequipo.php",
                        data: {
                            id_franquicia: fatherId,
                        },
                        success: function() {
                            $("#"+fatherId).fadeOut("slow", function() {
                                $(this).remove();
                            });
                        }
                    });
                    $( this ).dialog( "close" );
                },
                "Cancelar": function() {
                $( this ).dialog( "close" );
                }
            }
            });
        });
    });

    

});
