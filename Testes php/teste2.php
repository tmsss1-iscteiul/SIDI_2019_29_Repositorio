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

$executionStartTime = microtime(true);

$sql = "SELECT * FROM investigador";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
	// output data of each row
	while($row = $result->fetch_assoc()) {
		$sql2 = "INSERT INTO investigador (Email, NomeInvestigador, CategoriaProfissional) VALUES ('" . $row["Email"] . "', '" . $row["NomeInvestigador"] . "', '" . $row["CategoriaProfissional"] . "')";
		$result2 = $conn2->query($sql2);
		//echo "Email: " . $row["Email"]. " NomeInvestigador: " . $row["NomeInvestigador"] . " CategoriaProfissional: " . $row["CategoriaProfissional"] ."<br>";
	}
} else {
	echo "0 results";
}

$executionEndTime = microtime(true);

$seconds = $executionEndTime - $executionStartTime;

echo "This script took $seconds to execute.";

$conn->close();
?>