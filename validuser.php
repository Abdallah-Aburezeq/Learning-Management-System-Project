<?php
    require 'authentication.lib';
    require 'db.lib';
    if(!$connection = @ mysqli_connect("localhost", "root", "","userdb"))
        die("Cannot connect to database");
    
    // Clean data from login
    
$username = $_POST['username'];
$password = $_POST['password'];
        
    session_start();
    // Validate username and password
    if (authenticateUser($connection, $username, $password)) {
        $_SESSION["username"] = $username;
        $_SESSION["loginIP"] = $_SERVER["REMOTE_ADDR"];
        header("Location: index.html");
        
    }
    else {
        header("Location: login.html");
        exit;
        }
?>
