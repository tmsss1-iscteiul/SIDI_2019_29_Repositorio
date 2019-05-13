<?php

	$url="127.0.0.1";
	$database="db_mysql_origem";
	$id = $_POST['idCultura'];
	$user = $_POST['username'];
	$pass = $_POST['password'];
	
    $conn = mysqli_connect($url,$user,$pass,$database);
	$sql = "select NomeCultura,DescricaoCultura from cultura where IDCultura = '$id'";
	$result = mysqli_query($conn, $sql);
	$response["info"] = array();
	if ($result){
		if (mysqli_num_rows($result)>0){
			while($r=mysqli_fetch_assoc($result)){
			$ad = array();
			$ad["nomeCultura"] = $r['NomeCultura'];
			$ad["descricaoCultura"] = $r['DescricaoCultura'];
			array_push($response["info"], $ad);
			}
		}	
	}
	$json = json_encode($response["info"]);
	echo $json;
	mysqli_close ($conn);
?>