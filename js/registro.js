$(function() {
  $("#fecha_nacimiento").datepicker({ 
    dateFormat: "dd-mm-yy"
  });
})

$(document).ready(function () {
  
  $('select').material_select();
  $( "form" ).validate({
    rules: {
      usuario: {
        required: true,
        minlength: 6,
        maxlength: 50
      },
      email: {
        required: true
      },
      contrasena: {
        required: true,
        minlength: 6
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


  