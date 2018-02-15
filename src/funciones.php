<?php
    function destruir_session() {
        
        // Destruir variables de sesión
        $_SESSION[] = array() ;
        
        // Destruimos la sesión
        session_destroy() ;
        
        header("Location:login.php") ;
    }
?>