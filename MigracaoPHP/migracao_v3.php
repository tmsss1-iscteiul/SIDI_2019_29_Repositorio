<?php
//localhost - o que permite o xampp correr o php
$url="127.0.0.1";
//nome das bases de dados
$destinodb="db_mysql_destino";
$origemdb="db_mysql_origem";
$username="root";
$password="";
//ligação entre as bases de dados acima com o php 
$conn = mysqli_connect($url, $username, $password, $origemdb);
$conec = mysqli_connect($url, $username, $password, $destinodb);
//se houver algum problema com a ligação, a ligação "morre" e faz sysout do erro da ligação 
if (!$conn or !$conec){
	die ("Connection Failled: ".$conn->connect_error);
	die("Connection Failled: ".$conec->connect_error);
}
else {
	echo 'Ligação estabelecida'.PHP_EOL;
}
set_time_limit(0);
//Insert e Update em todas as tabelas

					$insertDestino = mysqli_query($conec, "INSERT INTO db_mysql_destino.variaveis_log (DataHora, ID, IDVariavel_NEW, IDVariavel_OLD, NomeVariavel_OLD, Operacao, Utilizador) SELECT DataHora, ID, IDVariavel_NEW, IDVariavel_OLD, NomeVariavel_OLD, Operacao, Utilizador FROM db_mysql_origem.variaveis_log where Flag_Migracao = false");
					$updateOrigem = mysqli_query($conn, "UPDATE db_mysql_origem.variaveis_log set Flag_Migracao = true where ID in (select ID from db_mysql_destino.variaveis_log) and Flag_Migracao =false");

					$insertDestino = mysqli_query($conec, "INSERT INTO db_mysql_destino.cultura_log (DataHora, DescricaoCultura_NEW, DescricaoCultura_OLD, Email_Investigador_NEW, Email_Investigador_OLD, ID, IDCultura_NEW, IDCultura_OLD, NomeCultura_NEW, NomeCultura_OLD, Operacao, Utilizador) SELECT DataHora, DescricaoCultura_NEW, DescricaoCultura_OLD, Email_Investigador_NEW, Email_Investigador_OLD, ID, IDCultura_NEW, IDCultura_OLD, NomeCultura_NEW, NomeCultura_OLD, Operacao, Utilizador FROM db_mysql_origem.cultura_log where Flag_Migracao = false");
					$updateOrigem = mysqli_query($conn, "UPDATE db_mysql_origem.cultura_log set Flag_Migracao = true where ID in (select ID from db_mysql_destino.cultura_log) and Flag_Migracao =false");

					$insertDestino = mysqli_query($conec, "INSERT INTO db_mysql_destino.investigador_log (CategoriaProfissional_NEW, CategoriaProfissional_OLD, DataHora, Email_NEW, Email_OLD, ID, NomeInvestigador_NEW, NomeInvestigador_OLD, Operacao, Utilizador) SELECT CategoriaProfissional_NEW, CategoriaProfissional_OLD, DataHora, Email_NEW, Email_OLD, ID, NomeInvestigador_NEW, NomeInvestigador_OLD, Operacao, Utilizador FROM db_mysql_origem.investigador_log where Flag_Migracao = false");
					$updateOrigem = mysqli_query($conn, "UPDATE db_mysql_origem.investigador_log set Flag_Migracao = true where ID in (select ID from db_mysql_destino.investigador_log) and Flag_Migracao =false");
		
					$insertDestino = mysqli_query($conec, "INSERT INTO db_mysql_destino.medicoes_log (DataHora, DataHoraMedicao_NEW, DataHoraMedicao_OLD, ID, IDCultura_VariaveisMedidas_NEW, IDCultura_VariaveisMedidas_OLD, IDVariaveis_VariaveisMedidas_NEW, IDVariaveis_VariaveisMedidas_OLD, NumeroMedicao_NEW, NumeroMedicao_OLD, Operacao, Utilizador, ValorMedicao_NEW, ValorMedicao_OLD) SELECT DataHora, DataHoraMedicao_NEW, DataHoraMedicao_OLD, ID, IDCultura_VariaveisMedidas_NEW, IDCultura_VariaveisMedidas_OLD, IDVariaveis_VariaveisMedidas_NEW, IDVariaveis_VariaveisMedidas_OLD, NumeroMedicao_NEW, NumeroMedicao_OLD, Operacao, Utilizador, ValorMedicao_NEW, ValorMedicao_OLD FROM db_mysql_origem.medicoes_log where Flag_Migracao = false");
					$updateOrigem = mysqli_query($conn, "UPDATE db_mysql_origem.medicoes_log set Flag_Migracao = true where ID in (select ID from db_mysql_destino.medicoes_log) and Flag_Migracao =false");

					$insertDestino = mysqli_query($conec, "INSERT INTO db_mysql_destino.variaveismedidas_log (DataHora, ID, IDCultura_NEW, IDCultura_OLD, IDVariavel_Variaveis_NEW, IDVariavel_Variaveis_OLD, LimiteInferior_NEW, LimiteInferior_OLD, LimiteSuperior_NEW, LimiteSuperior_OLD, Operacao, Utilizador) SELECT DataHora, ID, IDCultura_NEW, IDCultura_OLD, IDVariavel_Variaveis_NEW, IDVariavel_Variaveis_OLD, LimiteInferior_NEW, LimiteInferior_OLD, LimiteSuperior_NEW, LimiteSuperior_OLD, Operacao, Utilizador FROM db_mysql_origem.variaveismedidas_log where Flag_Migracao = false");
					$updateOrigem = mysqli_query($conn, "UPDATE db_mysql_origem.variaveismedidas_log set Flag_Migracao = true where ID in (select ID from db_mysql_destino.variaveismedidas_log) and Flag_Migracao =false");


					$insertDestino = mysqli_query($conec, "INSERT INTO db_mysql_destino.medicoesluminosidade_log (DataHora, DataHoraMedicao_NEW, DataHoraMedicao_OLD, ID, IDMedicao_NEW, IDMedicao_OLD, Operacao, Utilizador, ValorMedicaoLuminosidade_NEW, ValorMedicaoLuminosidade_OLD) SELECT DataHora, DataHoraMedicao_NEW, DataHoraMedicao_OLD, ID, IDMedicao_NEW, IDMedicao_OLD, Operacao, Utilizador, ValorMedicaoLuminosidade_NEW, ValorMedicaoLuminosidade_OLD FROM db_mysql_origem.medicoesluminosidade_log where Flag_Migracao = false");
					$updateOrigem = mysqli_query($conn, "UPDATE db_mysql_origem.medicoesluminosidade_log set Flag_Migracao = true where ID in (select ID from db_mysql_destino.medicoesluminosidade_log) and Flag_Migracao =false");

					$insertDestino = mysqli_query($conec, "INSERT INTO db_mysql_destino.medicoestemperatura_log (DataHora, DataHoraMedicao_NEW, DataHoraMedicao_OLD, ID, IDMedicao_NEW, IDMedicao_OLD, Operacao, Utilizador, ValorMedicaoTemperatura_NEW, ValorMedicaoTemperatura_OLD) SELECT DataHora, DataHoraMedicao_NEW, DataHoraMedicao_OLD, ID, IDMedicao_NEW, IDMedicao_OLD, Operacao, Utilizador, ValorMedicaoTemperatura_NEW, ValorMedicaoTemperatura_OLD FROM db_mysql_origem.medicoestemperatura_log where Flag_Migracao = false");
					$updateOrigem = mysqli_query($conn, "UPDATE db_mysql_origem.medicoestemperatura_log set Flag_Migracao = true where ID in (select ID from db_mysql_destino.medicoestemperatura_log) and Flag_Migracao =false");


					$insertDestino = mysqli_query($conec, "INSERT INTO db_mysql_destino.medicoes_consultados_log (DataHoraMedicao, DataHora_LOG, ID, IDCultura_VariaveisMedidas, IDMedicoes_LOG, IDVariaveis_VariaveisMedidas, NumeroMedicao, Operacao_LOG, Utilizador_LOG, ValorMedicao) SELECT DataHoraMedicao, DataHora_LOG, ID, IDCultura_VariaveisMedidas, IDMedicoes_LOG, IDVariaveis_VariaveisMedidas, NumeroMedicao, Operacao_LOG, Utilizador_LOG, ValorMedicao FROM db_mysql_origem.medicoes_consultados_log where Flag_Migracao = false");
					$updateOrigem = mysqli_query($conn, "UPDATE db_mysql_origem.medicoes_consultados_log set Flag_Migracao = true where ID in (select ID from db_mysql_destino.medicoes_consultados_log) and Flag_Migracao =false");

					$insertDestino = mysqli_query($conec, "INSERT INTO db_mysql_destino.sistema_log (DataHora, ID, LimiteInferiorLuz_NEW, LimiteInferiorLuz_OLD, LimiteInferiorTemperatura_NEW, LimiteInferiorTemperatura_OLD, LimiteSuperiorLuz_NEW, LimiteSuperiorLuz_OLD, LimiteSuperiorTemperatura_NEW, LimiteSuperiorTemperatura_OLD, Operacao, Utilizador) SELECT DataHora, ID, LimiteInferiorLuz_NEW, LimiteInferiorLuz_OLD, LimiteInferiorTemperatura_NEW, LimiteInferiorTemperatura_OLD, LimiteSuperiorLuz_NEW, LimiteSuperiorLuz_OLD, LimiteSuperiorTemperatura_NEW, LimiteSuperiorTemperatura_OLD, Operacao, Utilizador FROM db_mysql_origem.sistema_log where Flag_Migracao = false");
					$updateOrigem = mysqli_query($conn, "UPDATE db_mysql_origem.sistema_log set Flag_Migracao = true where ID in (select ID from db_mysql_destino.sistema_log) and Flag_Migracao =false");

	
echo"comando efectuado com sucesso";
$executionEndTime = microtime(true);
$seconds = $executionEndTime - $executionStartTime;
echo "This script took $seconds to execute.";
mysqli_close ($conn);
mysqli_close ($conec);
	
?>