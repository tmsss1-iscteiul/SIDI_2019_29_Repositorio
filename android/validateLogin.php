<?php
	
	$url="127.0.0.1";
	$database="db_mysql_origem";
	$user = $_POST['username'];
	$pass = $_POST['password'];
	
    $conn = mysqli_connect($url,$user,$pass,$database);
	$response["valid"] = array();
	$json = json_encode($response["valid"]);
	echo $json;
	mysqli_close ($conn);
	
?>