<?php

set_time_limit(0);

$conn = mysqli_connect("localhost", "root", "", "db_mysql_origem");

// Check connection
if($conn === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

$conn2 = mysqli_connect("localhost", "root", "", "Teste");

// Check connection
if($conn2 === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

$tables = array("investigador", "cultura");

$executionStartTime = microtime(true);

foreach ($tables as $table) {

	$sql = "SELECT * FROM " . $table;
	$result = $conn->query($sql);

	if ($result->num_rows > 0) {
		// output data of each row
		if($table === "investigador"){
			while($row = $result->fetch_assoc()) {
				$sql2 = "INSERT INTO investigador (Email, NomeInvestigador, CategoriaProfissional) VALUES ('" . $row["Email"] . "', '" . $row["NomeInvestigador"] . "', '" . $row["CategoriaProfissional"] . "')";
				$result2 = $conn2->query($sql2);
				// echo "Email: " . $row["Email"]. " NomeInvestigador: " . $row["NomeInvestigador"] . " CategoriaProfissional: " . $row["CategoriaProfissional"] ."<br>";
			}
		}
		if($table === "cultura"){
			while($row = $result->fetch_assoc()) {
				$sql2 = "INSERT INTO cultura (IDCultura, Email_Investigador, NomeCultura) VALUES ('" . $row["IDCultura"] . "', '" . $row["Email_Investigador"] . "', '" . $row["NomeCultura"] . "')";
				$result2 = $conn2->query($sql2);
				// echo "IDCultura: " . $row["IDCultura"] . " Email_Investigador: " . $row["Email_Investigador"] . " NomeCultura: " . $row["NomeCultura"] . "<br>";
			}
		}
	} else {
		echo "0 results";
	}
}
$executionEndTime = microtime(true);

$seconds = $executionEndTime - $executionStartTime;

echo "This script took $seconds to execute.";

$conn->close();
?>