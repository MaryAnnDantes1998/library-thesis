<?php
	$con = new mysqli('localhost', 'root', '', 'libsys');

	if ($con->connect_error) {
	    die("Connection failed: " . $con->connect_error);
	}
	
?>