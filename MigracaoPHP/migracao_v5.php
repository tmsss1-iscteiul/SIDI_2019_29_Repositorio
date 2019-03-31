<?php
//localhost - o que permite o xampp correr o php
$url="127.0.0.1:3360";
//nome das bases de dados
$destinodb="db_mysql_destino";
$origemdb="db_mysql_origem";
$username="root"; // TEMOS DE MUDAR O USERNAME E A PASSWORD PARA O SGBD. QUESTÕES DE SEGURANÇA, ID E PASSWORD NO FICHEIRO. SE ALGUÉM ABRE O FICHEIRO TEM ACESSO TOTAL A BD. FICHEIRO TEM DE ESTAR PROTEGIDO? MANEIRA MAIS FÁCIL DE SIMPLIFICAR ISTO?
$password="admin";
//ligação entre as bases de dados acima com o php 
$conn = mysqli_connect($url, $username, $password, $origemdb);
$conec = mysqli_connect($url, $username, $password, $destinodb);
//se houver algum problema com a ligação, a ligação "morre" e faz sysout do erro da ligação 
if (!$conn or !$conec){
	die ("Connection Failled: ".$conn->connect_error);
	die("Connection Failled: ".$conec->connect_error);
}
else {
	echo 'Ligação entre as bases de dados estabelecida.<br />'  ;
}
set_time_limit(0);
$executionStartTime = microtime(true);
//Insert e Update em todas as tabelas
					
$insertDestinoVariaveis = mysqli_query($conec, "INSERT INTO db_mysql_destino.variaveis_log (DataHora, ID, IDVariavel_NEW, IDVariavel_OLD, NomeVariavel_OLD, Operacao, Utilizador) SELECT DataHora, ID, IDVariavel_NEW, IDVariavel_OLD, NomeVariavel_OLD, Operacao, Utilizador FROM db_mysql_origem.variaveis_log where Flag_Migracao = false");
if($insertDestinoVariaveis) {
$updateOrigemVariaveis = mysqli_query($conn, "UPDATE db_mysql_origem.variaveis_log set Flag_Migracao = true where ID in (select ID from db_mysql_destino.variaveis_log) and Flag_Migracao =false");
}else{
echo 'Erro na tabela variaveis_log<br />';
}
					
$insertDestinoCultura = mysqli_query($conec, "INSERT INTO db_mysql_destino.cultura_log (DataHora, DescricaoCultura_NEW, DescricaoCultura_OLD, Email_Investigador_NEW, Email_Investigador_OLD, ID, IDCultura_NEW, IDCultura_OLD, NomeCultura_NEW, NomeCultura_OLD, Operacao, Utilizador) SELECT DataHora, DescricaoCultura_NEW, DescricaoCultura_OLD, Email_Investigador_NEW, Email_Investigador_OLD, ID, IDCultura_NEW, IDCultura_OLD, NomeCultura_NEW, NomeCultura_OLD, Operacao, Utilizador FROM db_mysql_origem.cultura_log where Flag_Migracao = false");
if($insertDestinoCultura) {
$updateOrigemCultura = mysqli_query($conn, "UPDATE db_mysql_origem.cultura_log set Flag_Migracao = true where ID in (select ID from db_mysql_destino.cultura_log) and Flag_Migracao =false");
}else{
echo 'Erro na tabela cultura_log<br />'.PHP_EOL;
}
					
$insertDestinoInvestigador = mysqli_query($conec, "INSERT INTO db_mysql_destino.investigador_log (CategoriaProfissional_NEW, CategoriaProfissional_OLD, DataHora, Email_NEW, Email_OLD, ID, NomeInvestigador_NEW, NomeInvestigador_OLD, Operacao, Utilizador) SELECT CategoriaProfissional_NEW, CategoriaProfissional_OLD, DataHora, Email_NEW, Email_OLD, ID, NomeInvestigador_NEW, NomeInvestigador_OLD, Operacao, Utilizador FROM db_mysql_origem.investigador_log where Flag_Migracao = false");
if($insertDestinoInvestigador) {
$updateOrigemInvestigador = mysqli_query($conn, "UPDATE db_mysql_origem.investigador_log set Flag_Migracao = true where ID in (select ID from db_mysql_destino.investigador_log) and Flag_Migracao =false");
}else{ 
echo'Erro na tabela investigador_log<br />';
}
					
					
$insertDestinoMedicoes = mysqli_query($conec, "INSERT INTO db_mysql_destino.medicoes_log (DataHora, DataHoraMedicao_NEW, DataHoraMedicao_OLD, ID, IDCultura_VariaveisMedidas_NEW, IDCultura_VariaveisMedidas_OLD, IDVariaveis_VariaveisMedidas_NEW, IDVariaveis_VariaveisMedidas_OLD, NumeroMedicao_NEW, NumeroMedicao_OLD, Operacao, Utilizador, ValorMedicao_NEW, ValorMedicao_OLD) SELECT DataHora, DataHoraMedicao_NEW, DataHoraMedicao_OLD, ID, IDCultura_VariaveisMedidas_NEW, IDCultura_VariaveisMedidas_OLD, IDVariaveis_VariaveisMedidas_NEW, IDVariaveis_VariaveisMedidas_OLD, NumeroMedicao_NEW, NumeroMedicao_OLD, Operacao, Utilizador, ValorMedicao_NEW, ValorMedicao_OLD FROM db_mysql_origem.medicoes_log where Flag_Migracao = false");
if($insertDestinoMedicoes) {
$updateOrigemMedicoes = mysqli_query($conn, "UPDATE db_mysql_origem.medicoes_log set Flag_Migracao = true where ID in (select ID from db_mysql_destino.medicoes_log) and Flag_Migracao =false");
}else{ 
echo'Erro na tabela medicoes_log<br />';
}
					
				
$insertDestinoVariaveisMedidas = mysqli_query($conec, "INSERT INTO db_mysql_destino.variaveismedidas_log (DataHora, ID, IDCultura_Cultura_NEW, IDCultura_Cultura_OLD, IDVariavel_Variaveis_NEW, IDVariavel_Variaveis_OLD, LimiteInferior_NEW, LimiteInferior_OLD, LimiteSuperior_NEW, LimiteSuperior_OLD, Operacao, Utilizador) SELECT DataHora, ID, IDCultura_Cultura_NEW, IDCultura_Cultura_OLD, IDVariavel_Variaveis_NEW, IDVariavel_Variaveis_OLD, LimiteInferior_NEW, LimiteInferior_OLD, LimiteSuperior_NEW, LimiteSuperior_OLD, Operacao, Utilizador FROM db_mysql_origem.variaveismedidas_log where Flag_Migracao = false");
if($insertDestinoVariaveisMedidas) {
$updateOrigemVariaveisMedidas = mysqli_query($conn, "UPDATE db_mysql_origem.variaveismedidas_log set Flag_Migracao = true where ID in (select ID from db_mysql_destino.variaveismedidas_log) and Flag_Migracao =false");
}else{
echo'Erro na tabela variaveismedidas_log<br />';
}
				
$insertDestinoMedicoesLuminosidade= mysqli_query($conec, "INSERT INTO db_mysql_destino.medicoesluminosidade_log (DataHora, DataHoraMedicao_NEW, ID, IDMedicao_NEW, Operacao, Utilizador, ValorMedicaoLuminosidade_NEW) SELECT DataHora, DataHoraMedicao_NEW, ID, IDMedicao_NEW, Operacao, Utilizador, ValorMedicaoLuminosidade_NEW FROM db_mysql_origem.medicoesluminosidade_log where Flag_Migracao = false");
if($insertDestinoMedicoesLuminosidade) {
$updateOrigemLuminosidade = mysqli_query($conn, "UPDATE db_mysql_origem.medicoesluminosidade_log set Flag_Migracao = true where ID in (select ID from db_mysql_destino.medicoesluminosidade_log) and Flag_Migracao =false");
}else{
echo'Erro na tabela medicoesluminosidade_log<br />';
}
					
$insertDestinoMedicoesTemperatura = mysqli_query($conec, "INSERT INTO db_mysql_destino.medicoestemperatura_log (DataHora, DataHoraMedicao_NEW, ID, IDMedicao_NEW, Operacao, Utilizador, ValorMedicaoTemperatura_NEW) SELECT DataHora, DataHoraMedicao_NEW, ID, IDMedicao_NEW, Operacao, Utilizador, ValorMedicaoTemperatura_NEW FROM db_mysql_origem.medicoestemperatura_log where Flag_Migracao = false");
if($insertDestinoMedicoesTemperatura) {
$updateOrigemMedicoesTemperatura = mysqli_query($conn, "UPDATE db_mysql_origem.medicoestemperatura_log set Flag_Migracao = true where ID in (select ID from db_mysql_destino.medicoestemperatura_log) and Flag_Migracao =false");
}else{
echo'Erro na tabela medicoestemperatura_log<br />';
}
		
$insertDestinoMedicoesConsultados = mysqli_query($conec, "INSERT INTO db_mysql_destino.medicoes_consultados_log (DataHoraMedicao, DataHora_LOG, ID, IDCultura_VariaveisMedidas, IDMedicoes_LOG, IDVariaveis_VariaveisMedidas, NumeroMedicao, Operacao_LOG, Utilizador_LOG, ValorMedicao) SELECT DataHoraMedicao, DataHora_LOG, ID, IDCultura_VariaveisMedidas, IDMedicoes_LOG, IDVariaveis_VariaveisMedidas, NumeroMedicao, Operacao_LOG, Utilizador_LOG, ValorMedicao FROM db_mysql_origem.medicoes_consultados_log where Flag_Migracao = false");
if($insertDestinoMedicoesConsultados) {
$updateOrigemMedicoesConsultados = mysqli_query($conn, "UPDATE db_mysql_origem.medicoes_consultados_log set Flag_Migracao = true where ID in (select ID from db_mysql_destino.medicoes_consultados_log) and Flag_Migracao =false");
}else{
echo'Erro na tabela medicoes_consultados_log<br />';
}
			
		
$insertDestinoSistema = mysqli_query($conec, "INSERT INTO db_mysql_destino.sistema_log (DataHora, ID, LimiteInferiorLuz_NEW, LimiteInferiorLuz_OLD, LimiteInferiorTemperatura_NEW, LimiteInferiorTemperatura_OLD, LimiteSuperiorLuz_NEW, LimiteSuperiorLuz_OLD, LimiteSuperiorTemperatura_NEW, LimiteSuperiorTemperatura_OLD, Operacao, Utilizador) SELECT DataHora, ID, LimiteInferiorLuz_NEW, LimiteInferiorLuz_OLD, LimiteInferiorTemperatura_NEW, LimiteInferiorTemperatura_OLD, LimiteSuperiorLuz_NEW, LimiteSuperiorLuz_OLD, LimiteSuperiorTemperatura_NEW, LimiteSuperiorTemperatura_OLD, Operacao, Utilizador FROM db_mysql_origem.sistema_log where Flag_Migracao = false");
if($insertDestinoSistema) {
$updateOrigemSistema = mysqli_query($conn, "UPDATE db_mysql_origem.sistema_log set Flag_Migracao = true where ID in (select ID from db_mysql_destino.sistema_log) and Flag_Migracao =false");
}else{
echo'Erro na tabela sistema_log<br />';
}
	
$executionEndTime = microtime(true);
$seconds = $executionEndTime - $executionStartTime;
echo "This script took $seconds to execute.<br />";
mysqli_close ($conn);
mysqli_close ($conec);
	
?>