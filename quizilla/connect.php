<?php
	$con = new mysqli("localhost","root","","quizilla");

	if ($con -> connect_errno) {
		echo "Failed to connect to MySQL: " . $con -> connect_error;
		exit();
	}

	session_start();
?>