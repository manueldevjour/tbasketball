$(document).ready(function () {
    $('.button-collapse').sideNav();
    $(document).on("click", "#tablausuarios tr td .boton-eliminar", function() {
        let fatherId = $(this).parent().closest("tr").attr("id");
        
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
                "Eliminar usuario": function() {
                    $.post({ 
                        url: "borrarusuario.php",
                        data: {
                            usuario: fatherId,
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