<?php session_start() ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SID_2019</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<header id="cabecalho">
	<div>
		<form method="post" action="cultura.php">
			<input type="text" name="operacao" placeholder="Operação">
			<input type="text" name="utilizador" placeholder="Utilizador">
			<input type="text" name="datahora" placeholder="Data e Hora">
			<input type="submit" value="click" name="submit">
		</form>
	</div>
    <div class="scrollmenu">
        <a href="investigador.php">Investigador</a>
        <a href="cultura.php">Cultura</a>
        <a href="variaveis.php">Variaveis</a>
        <a href="variaveismedidas.php">VariaveisMedidas</a>
        <a href="medicoes.php">Medicoes</a>
        <a href="medicoestemperatura.php">MedicoesTemperatura</a>
        <a href="medicoesluminosidade.php">MedicoesLuminosidade</a>
        <a href="sistema.php">Sistema</a>
        <a href="consultadeinvestigadores.php">ConsultadeInvestigadores</a>
    </div>
    <a id="logout" href="index.html">Logout</a>
</header>

    <table>
        <tr><td>ID</td><td>IDCultura_OLD</td><td>IDCultura_NEW</td><td>NomeCultura_OLD</td><td>NomeCultura_NEW</td><td>DescricaoCultura_OLD</td><td>DescricaoCultura_NEW</td><td>Email_Investigador_NEW</td><td>Email_Investigador_OLD</td><td>Operacao</td><td>Utilizador</td><td>DataHora</td></tr>
        <?php

        $conn = new mysqli("localhost:3360","$_SESSION[user]", "$_SESSION[pass]", "db_mysql_destino");
		if(isset($_POST['submit']))
			{
			   $conn = new mysqli("localhost:3360","$_SESSION[user]", "$_SESSION[pass]", "db_mysql_destino");
			   if($_POST['operacao'] != ""){
					$sql = "SELECT * FROM cultura_log where Operacao like '".$_POST['operacao']."';";
			   }
			   elseif($_POST['utilizador'] != ""){
					$sql = "SELECT * FROM cultura_log where Utilizador like '%".$_POST['utilizador']."%';";
			   }
			   elseif($_POST['datahora'] != ""){
					$sql = "SELECT * FROM cultura_log where DataHora =  UNIX_TIMESTAMP('".$_POST['datahora']."');";
			   }
			   else{
					$sql = "SELECT * FROM cultura_log where Operacao like '%".$_POST['operacao']."%' or Utilizador like '%".$_POST['utilizador']."%' or DataHora =  UNIX_TIMESTAMP('".$_POST['datahora']."');";
			   }
				$result = $conn->query($sql);
			} 
		else{
			$sql = "SELECT * FROM cultura_log";
		}
        $result = $conn->query($sql);

        if($result->num_rows > 0){

            while($row = $result->fetch_assoc()){
                echo "<tr><td>".$row["ID"]."</td><td>" . $row["IDCultura_OLD"] . " </td><td>" . $row["IDCultura_NEW"] . " </td><td>" . $row["NomeCultura_OLD"] . " </td><td>" . $row["NomeCultura_NEW"] . " </td><td>" . $row["DescricaoCultura_OLD"] . " </td><td>" . $row["DescricaoCultura_NEW"] . " </td><td>" . $row["Email_Investigador_NEW"] . " </td><td>" . $row["Email_Investigador_OLD"] . " </td><td>" . $row["Operacao"] . " </td><td>" . $row["Utilizador"] . " </td><td>" . $row["DataHora"] . " </td></tr>";
            }

        }
        ?>
    </table>
</body>

</html>

