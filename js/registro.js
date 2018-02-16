$(document).ready(function () {
  $("#fecha_nacimiento").datepicker({ dateFormat: "dd-mm-yy" }).val();
  $( "form" ).validate({
    rules: {
      usuario: {
        required: true,
        minlength: 4,
        maxlength: 18
      },
      email: {
        required: true
      },
      contrasena: {
        required: true,
        minlength: 8
      },
      confirmarContrasena: {
        equalTo: "#contrasena",
        required: true
      },
      nombre_completo: {
        required: true
      },
      fecha_nacimiento: {
        required: true
      },
      pais_origen: {
        required: true
      }
    }
  });
});


  