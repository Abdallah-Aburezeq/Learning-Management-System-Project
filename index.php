<?php
	
    if (!isset($_SESSION["username"])) {
    header("Location: login.html");
        exit;
    }
    else {
        header("Location: index.html");
        exit;
        }
        
        ?>
