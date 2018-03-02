<?php
	
	require 'authentication.lib';
    require 'db.lib';
	if(!isset($username)) {
        header("Location: login.html");
        exit;
    }
    else {
        header("Location: index.html");
        exit;
        }