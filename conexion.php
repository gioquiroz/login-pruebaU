<?php
	 
	$mysqli = new mysqli('localhost', 'gio', '12345', 'bd_login_ciaf');
	$mysqli->set_charset("utf8");
	if($mysqli->connect_error){
		
		die('Error en la conexion' . $mysqli->connect_error);
		
	}
?>