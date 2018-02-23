$(document).ready(function () {
    $('.button-collapse').sideNav();
    $(document).on("click", ".boton-eliminar", function() {
        let fatherId = $(this).attr("id");
            
        $( function() {
            $("#dialog-confirm").dialog({
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
                "Eliminar jugador": function() {
                    $.post({ 
                        url: "borrarjugador.php",
                        data: {
                            id_jugador: fatherId,
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