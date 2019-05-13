<?php
	$url="127.0.0.1";
	$database="db_mysql_origem";
	$user = $_POST['username'];
	$pass = $_POST['password'];
    $conn = mysqli_connect($url,$user,$pass,$database);
	
	$sql = "select DataHoraMedicao,ValorMedicaoTemperatura from medicoesTemperatura where DataHoraMedicao >= now() - interval 5 minute";
	$result = mysqli_query($conn, $sql);
	$response["medicoes"] = array();
	if ($result){
		if (mysqli_num_rows($result)>0){
			while($r=mysqli_fetch_assoc($result)){
				$ad = array();
				$ad["valorMedicaoTemperatura"] = $r['ValorMedicaoTemperatura'];
				$ad["dataHoraMedicao"] = $r['DataHoraMedicao'];
				array_push($response["medicoes"], $ad);
			}
		}	
	}
	
	
	$json = json_encode($response["medicoes"]);
	echo $json;
	mysqli_close ($conn);
?>