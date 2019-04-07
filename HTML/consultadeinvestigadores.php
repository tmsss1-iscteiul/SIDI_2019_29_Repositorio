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
		<form method="post" action="consultadeinvestigadores.php">
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
        <tr><td>ID</td><td>IDMedicoes_LOG</td><td>NumeroMedicao</td><td>IDVariaveis_VariaveisMedidas</td><td>IDCultura_VariaveisMedidas</td><td>ValorMedicao</td><td>DataHoraMedicao</td><td>Operacao_LOG</td><td>UtilizadorLOG</td><td>DataHora_LOG</td></tr>
        <?php
        $conn = new mysqli("localhost:3360","$_SESSION[user]", "$_SESSION[pass]", "db_mysql_destino");
		if(isset($_POST['submit']))
			{
			   $conn = new mysqli("localhost:3360","$_SESSION[user]", "$_SESSION[pass]", "db_mysql_destino");
			   if($_POST['operacao'] != ""){
					$sql = "SELECT * FROM medicoes_consultados_log where Operacao like '".$_POST['operacao']."';";
			   }
			   elseif($_POST['utilizador'] != ""){
					$sql = "SELECT * FROM medicoes_consultados_log where Utilizador like '%".$_POST['utilizador']."%';";
			   }
			   elseif($_POST['datahora'] != ""){
					$sql = "SELECT * FROM medicoes_consultados_log where DataHora =  UNIX_TIMESTAMP('".$_POST['datahora']."');";
			   }
			   else{
					$sql = "SELECT * FROM medicoes_consultados_log where Operacao like '%".$_POST['operacao']."%' or Utilizador like '%".$_POST['utilizador']."%' or DataHora =  UNIX_TIMESTAMP('".$_POST['datahora']."');";
			   }
				$result = $conn->query($sql);
			} 
		else{
			$sql = "SELECT * FROM medicoes_consultados_log";
		}
        $result = $conn->query($sql);

        if($result->num_rows > 0){
            while($row = $result->fetch_assoc()){
                echo "<tr><td>".$row["ID"]."</td><td>" . $row["IDMedicoes_LOG"] . " </td><td>" . $row["NumeroMedicao"] . " </td><td>" . $row["IDVariaveis_VariaveisMedidas"] . " </td><td>" . $row["IDCultura_VariaveisMedidas"] . " </td><td>" . $row["ValorMedicao"] . " </td><td>" . $row["DataHoraMedicao"] . " </td><td>" . $row["Operacao_LOG"] . " </td><td>" . $row["UtilizadorLOG"] . " </td><td>" . $row["DataHora_LOG"] . " </td></tr>";
            }
        }
        ?>
    </table>
</body>

</html>

