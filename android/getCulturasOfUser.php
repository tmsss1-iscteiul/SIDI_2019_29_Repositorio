

<?php

	$url="127.0.0.1";
	$database="db_mysql_origem";
	$user = $_POST['username'];
	$pass = $_POST['password']; 
    $conn = mysqli_connect($url,$user,$pass,$database);

	$sql = "SELECT IDCultura from cultura WHERE Email_Investigador LIKE '$user@%'";
	$result2 = mysqli_query($conn, $sql);
	$response["cultura"] = array();
	if ($result2){
		if (mysqli_num_rows($result2)>0){
			while($r=mysqli_fetch_assoc($result2)){
				$ad = array();
				$ad["idCultura"] = $r['IDCultura'];
				array_push($response["cultura"], $ad);
			}
		}	
	}
	
	
	$json = json_encode($response["cultura"]);
	echo $json;
	mysqli_close($conn);

?>