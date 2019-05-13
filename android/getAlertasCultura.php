<?php


	$url="127.0.0.1";
	$database="db_mysql_origem";
	$user = $_POST['username'];
	$pass = $_POST['password'];
	$date = $_POST['date'];
	$id = $_POST['idCultura'];
  
    $conn = mysqli_connect($url,$user,$pass,$database);
	
	$sql = "select DataHora,NomeVariavel,LimiteInferior,LimiteSuperior,ValorMedicao,Descricao from alertas_android where NomeCultura = (select NomeCultura from cultura where IDCultura = '$id') and DataHora LIKE '%$date%' ";
	$result = mysqli_query($conn, $sql);
	
	$response["alertas"] = array();
	if ($result){
		if (mysqli_num_rows($result)>0){
			while($r=mysqli_fetch_assoc($result)){
				$ad = array();
				$ad["DataHora"] = $r['DataHora'];
				$ad["NomeVariavel"] = $r['NomeVariavel'];
				$ad["LimiteInferior"] = $r['LimiteInferior'];
				$ad["LimiteSuperior"] = $r['LimiteSuperior'];
				$ad["ValorMedicao"] = $r['ValorMedicao'];
				$ad["Descricao"] = $r['Descricao'];
				
				array_push($response["alertas"], $ad);
			}
		}	
	}
	
	$json = json_encode($response["alertas"]);
	echo $json;
	mysqli_close ($conn);
	?>