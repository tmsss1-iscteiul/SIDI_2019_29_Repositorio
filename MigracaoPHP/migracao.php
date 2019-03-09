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

//selects dos logs 
$sqlVariaveis = "SELECT * FROM variaveis_log";
$sqlCultura = "SELECT * FROM cultura_log";
$sqlInvestigador = "SELECT * FROM investigador_log";
$sqlSistema = "SELECT * FROM sistema_log";
$sqlMedicoes = "SELECT * FROM medicoes_log";
$sqlVariaveisMedidas = "SELECT * FROM variaveismedidas_log";
$sqlMedicoesLuminosidade= "SELECT * FROM medicoesluminosidade_log";
$sqlMedicoesTemperatura= "SELECT * FROM medicoestemperatura_log";
$sqlMedicoesConsultados= "SELECT * FROM medicoes_consultados_log";

$resultVariaveisOrigem= mysqli_query($conn, $sqlVariaveis);
$resultCulturaOrigem = mysqli_query($conn, $sqlCultura);
$resultInvestigadorOrigem = mysqli_query($conn, $sqlInvestigador);
$resultMedicoesOrigem = mysqli_query($conn, $sqlMedicoes);
$resultVariaveisMedidasOrigem = mysqli_query($conn, $sqlVariaveisMedidas);
$resultMedicoesLuminosidadeOrigem = mysqli_query($conn, $sqlMedicoesLuminosidade);
$resultMedicoesTemperaturaOrigem = mysqli_query($conn, $sqlMedicoesTemperatura);
$resultMedicoesConsultadosOrigem = mysqli_query($conn, $sqlMedicoesConsultados);
$resultSistemaOrigem = mysqli_query($conn, $sqlSistema);

$resultVariaveisDestino = mysqli_query($conec, $sqlVariaveis);
$resultCulturaDestino = mysqli_query($conec, $sqlCultura);
$resultInvestigadorDestino = mysqli_query($conec, $sqlInvestigador);
$resultMedicoesDestino = mysqli_query($conec, $sqlMedicoes);
$resultVariaveisMedidasDestino = mysqli_query($conec, $sqlVariaveisMedidas);
$resultMedicoesLuminosidadeDestino = mysqli_query($conec, $sqlMedicoesLuminosidade);
$resultMedicoesTemperaturaDestino = mysqli_query($conec, $sqlMedicoesTemperatura);
$resultMedicoesConsultadosDestino = mysqli_query($conec, $sqlMedicoesConsultados);
$resultSistemaDestino = mysqli_query($conec, $sqlSistema);

// linhas de ambas as bases de dados de todas as tabelas: Origem
$variaveisOrigemLinhas = mysqli_num_rows($resultVariaveisOrigem);
$culturaOrigemLinhas = mysqli_num_rows($resultCulturaOrigem);
$investigadorOrigemLinhas = mysqli_num_rows($resultInvestigadorOrigem);
$medicoesOrigemLinhas = mysqli_num_rows($resultMedicoesOrigem);
$variaveisMedicoesOrigemLinhas = mysqli_num_rows($resultVariaveisMedidasOrigem);
$medicoesLuminosidadeOrigemLinhas = mysqli_num_rows($resultMedicoesLuminosidadeOrigem);
$medicoesTemperaturaOrigemLinhas = mysqli_num_rows($resultMedicoesTemperaturaOrigem);
$medicoesConsultadosOrigemLinhas = mysqli_num_rows($resultMedicoesConsultadosOrigem);
$sistemaOrigemLinhas = mysqli_num_rows($resultSistemaOrigem);

//Destino
$variaveisDestinoLinhas = mysqli_num_rows($resultVariaveisDestino);
$culturaDestinoLinhas = mysqli_num_rows($resultCulturaDestino);
$investigadorDestinoLinhas = mysqli_num_rows($resultInvestigadorDestino);
$medicoesDestinoLinhas = mysqli_num_rows($resultMedicoesDestino);
$variaveisMedicoesDestinoLinhas = mysqli_num_rows($resultVariaveisMedidasDestino);
$medicoesLuminosidadeDestinoLinhas = mysqli_num_rows($resultMedicoesLuminosidadeDestino);
$medicoesTemperaturaDestinoLinhas = mysqli_num_rows($resultMedicoesTemperaturaDestino);
$medicoesConsultadosDestinoLinhas = mysqli_num_rows($resultMedicoesConsultadosDestino);
$sistemaDestinoLinhas = mysqli_num_rows($resultSistemaDestino);


$executionStartTime = microtime(true);


// MIGRAÇÃO DA TABELA VARIÁVEIS
	if ($resultVariaveisOrigem) {
		if ($variaveisOrigemLinhas>0){
			while($r=mysqli_fetch_assoc($resultVariaveisOrigem)){
				if($variaveisOrigemLinhas > $variaveisDestinoLinhas) {
					$insertDestino = mysqli_query($conec, "INSERT INTO db_mysql_destino.variaveis_log (DataHora, ID, IDVariavel_NEW, IDVariavel_OLD, NomeVariavel_OLD, Operacao, Utilizador) SELECT DataHora, ID, IDVariavel_NEW, IDVariavel_OLD, NomeVariavel_OLD, Operacao, Utilizador FROM db_mysql_origem.variaveis_log");
					$updateOrigem = mysqli_query($conn, "UPDATE db_mysql_origem.variaveis_log set Flag_Migracao = true where ID in (select ID from db_mysql_destino.variaveis_log) and Flag_Migracao =false");
				}
			}
		}
	}
	
	//////////////////////////////////////////////////////////////////////////
	
	
	// MIGRAÇÃO DA TABELA CULTURA
	if ($resultCulturaOrigem) {
		if ($culturaOrigemLinhas>0){
			while($r=mysqli_fetch_assoc($resultCulturaOrigem)){
				if($culturaOrigemLinhas > $culturaDestinoLinhas) {
					$insertDestino = mysqli_query($conec, "INSERT INTO db_mysql_destino.cultura_log (DataHora, DescricaoCultura_NEW, DescricaoCultura_OLD, Email_Investigador_NEW, Email_Investigador_OLD, ID, IDCultura_NEW, IDCultura_OLD, NomeCultura_NEW, NomeCultura_OLD, Operacao, Utilizador) SELECT DataHora, DescricaoCultura_NEW, DescricaoCultura_OLD, Email_Investigador_NEW, Email_Investigador_OLD, ID, IDCultura_NEW, IDCultura_OLD, NomeCultura_NEW, NomeCultura_OLD, Operacao, Utilizador FROM db_mysql_origem.cultura_log");
					$updateOrigem = mysqli_query($conn, "UPDATE db_mysql_origem.cultura_log set Flag_Migracao = true where ID in (select ID from db_mysql_destino.cultura_log) and Flag_Migracao =false");
				}
			}
		}
	}
	
////////////////////////////////////////////////////////////////////////////
	
// MIGRAÇÃO DA TABELA INVESTIGADOR
	if ($resultInvestigadorOrigem) {
		if ($investigadorOrigemLinhas>0){
			while($r=mysqli_fetch_assoc($resultInvestigadorOrigem)){
				if($investigadorOrigemLinhas > $investigadorDestinoLinhas) {
					$insertDestino = mysqli_query($conec, "INSERT INTO db_mysql_destino.investigador_log (CategoriaProfissional_NEW, CategoriaProfissional_OLD, DataHora, Email_NEW, Email_OLD, ID, NomeInvestigador_NEW, NomeInvestigador_OLD, Operacao, Utilizador) SELECT CategoriaProfissional_NEW, CategoriaProfissional_OLD, DataHora, Email_NEW, Email_OLD, ID, NomeInvestigador_NEW, NomeInvestigador_OLD, Operacao, Utilizador FROM db_mysql_origem.investigador_log");
					$updateOrigem = mysqli_query($conn, "UPDATE db_mysql_origem.investigador_log set Flag_Migracao = true where ID in (select ID from db_mysql_destino.investigador_log) and Flag_Migracao =false");
				}
			}
		}
	}
 ///////////////////////////////////////////////////////////////////////////////
	
// MIGRAÇÃO DA MEDIÇÕES
	if ($resultMedicoesOrigem) {
		if ($medicoesOrigemLinhas>0){
			while($r=mysqli_fetch_assoc($resultMedicoesOrigem)){
				if($medicoesOrigemLinhas > $medicoesDestinoLinhas) {
					$insertDestino = mysqli_query($conec, "INSERT INTO db_mysql_destino.medicoes_log (DataHora, DataHoraMedicao_NEW, DataHoraMedicao_OLD, ID, IDCultura_VariaveisMedidas_NEW, IDCultura_VariaveisMedidas_OLD, IDVariaveis_VariaveisMedidas_NEW, IDVariaveis_VariaveisMedidas_OLD, NumeroMedicao_NEW, NumeroMedicao_OLD, Operacao, Utilizador, ValorMedicao_NEW, ValorMedicao_OLD) SELECT DataHora, DataHoraMedicao_NEW, DataHoraMedicao_OLD, ID, IDCultura_VariaveisMedidas_NEW, IDCultura_VariaveisMedidas_OLD, IDVariaveis_VariaveisMedidas_NEW, IDVariaveis_VariaveisMedidas_OLD, NumeroMedicao_NEW, NumeroMedicao_OLD, Operacao, Utilizador, ValorMedicao_NEW, ValorMedicao_OLD FROM db_mysql_origem.medicoes_log");
					$updateOrigem = mysqli_query($conn, "UPDATE db_mysql_origem.medicoes_log set Flag_Migracao = true where ID in (select ID from db_mysql_destino.medicoes_log) and Flag_Migracao =false");
				}
			}
		}
	}
	
	///////////////////////////////////////////////////////////////////////////////

// MIGRAÇÃO DA TABELA VARIÁVEIS MEDIDAS
	if ($resultVariaveisMedidasOrigem) {
		if ($variaveisMedicoesOrigemLinhas>0){
			while($r=mysqli_fetch_assoc($resultVariaveisMedidasOrigem)){
				if($variaveisMedicoesOrigemLinhas > $variaveisMedicoesDestinoLinhas) {
					$insertDestino = mysqli_query($conec, "INSERT INTO db_mysql_destino.variaveismedidas_log (DataHora, ID, IDCultura_NEW, IDCultura_OLD, IDVariavel_Variaveis_NEW, IDVariavel_Variaveis_OLD, LimiteInferior_NEW, LimiteInferior_OLD, LimiteSuperior_NEW, LimiteSuperior_OLD, Operacao, Utilizador) SELECT DataHora, ID, IDCultura_NEW, IDCultura_OLD, IDVariavel_Variaveis_NEW, IDVariavel_Variaveis_OLD, LimiteInferior_NEW, LimiteInferior_OLD, LimiteSuperior_NEW, LimiteSuperior_OLD, Operacao, Utilizador FROM db_mysql_origem.variaveismedidas_log");
					$updateOrigem = mysqli_query($conn, "UPDATE db_mysql_origem.variaveismedidas_log set Flag_Migracao = true where ID in (select ID from db_mysql_destino.variaveismedidas_log) and Flag_Migracao =false");
				}
			}
		}
	}
	
	/////////////////////////////////////////////////////////////
	
// MIGRAÇÃO DA TABELA MEDICOESLUMINOSIDADE
	if ($resultMedicoesLuminosidadeOrigem) {
		if ($medicoesLuminosidadeOrigemLinhas>0){
			while($r=mysqli_fetch_assoc($resultMedicoesLuminosidadeOrigem)){
				if($medicoesLuminosidadeOrigemLinhas > $medicoesLuminosidadeDestinoLinhas) {
					$insertDestino = mysqli_query($conec, "INSERT INTO db_mysql_destino.medicoesluminosidade_log (DataHora, DataHoraMedicao_NEW, DataHoraMedicao_OLD, ID, IDMedicao_NEW, IDMedicao_OLD, Operacao, Utilizador, ValorMedicaoLuminosidade_NEW, ValorMedicaoLuminosidade_OLD) SELECT DataHora, DataHoraMedicao_NEW, DataHoraMedicao_OLD, ID, IDMedicao_NEW, IDMedicao_OLD, Operacao, Utilizador, ValorMedicaoLuminosidade_NEW, ValorMedicaoLuminosidade_OLD FROM db_mysql_origem.medicoesluminosidade_log");
					$updateOrigem = mysqli_query($conn, "UPDATE db_mysql_origem.medicoesluminosidade_log set Flag_Migracao = true where ID in (select ID from db_mysql_destino.medicoesluminosidade_log) and Flag_Migracao =false");
				}
			}
		}
	}
	
	///////////////////////////////////////////////////////////////

// MIGRAÇÃO DA TABELA MEDICOESTEMPERATURA
	if ($resultMedicoesTemperaturaOrigem) {
		if ($medicoesTemperaturaOrigemLinhas>0){
			while($r=mysqli_fetch_assoc($resultMedicoesTemperaturaOrigem)){
				if($medicoesTemperaturaOrigemLinhas > $medicoesTemperaturaDestinoLinhas){
					$insertDestino = mysqli_query($conec, "INSERT INTO db_mysql_destino.medicoestemperatura_log (DataHora, DataHoraMedicao_NEW, DataHoraMedicao_OLD, ID, IDMedicao_NEW, IDMedicao_OLD, Operacao, Utilizador, ValorMedicaoTemperatura_NEW, ValorMedicaoTemperatura_OLD) SELECT DataHora, DataHoraMedicao_NEW, DataHoraMedicao_OLD, ID, IDMedicao_NEW, IDMedicao_OLD, Operacao, Utilizador, ValorMedicaoTemperatura_NEW, ValorMedicaoTemperatura_OLD FROM db_mysql_origem.medicoestemperatura_log");
					$updateOrigem = mysqli_query($conn, "UPDATE db_mysql_origem.medicoestemperatura_log set Flag_Migracao = true where ID in (select ID from db_mysql_destino.medicoestemperatura_log) and Flag_Migracao =false");
				}
			}
		}
	}
	
	
	////////////////////////////////////////////////////////////////

// MIGRAÇÃO DA TABELA CONSULTADOS
	if ($resultMedicoesConsultadosOrigem) {
		if ($medicoesConsultadosOrigemLinhas>0){
			while($r=mysqli_fetch_assoc($resultMedicoesConsultadosOrigem)){
				if($medicoesConsultadosOrigemLinhas > $medicoesConsultadosDestinoLinhas) {
					$insertDestino = mysqli_query($conec, "INSERT INTO db_mysql_destino.medicoes_consultados_log (DataHoraMedicao, DataHora_LOG, ID, IDCultura_VariaveisMedidas, IDMedicoes_LOG, IDVariaveis_VariaveisMedidas, NumeroMedicao, Operacao_LOG, Utilizador_LOG, ValorMedicao) SELECT DataHoraMedicao, DataHora_LOG, ID, IDCultura_VariaveisMedidas, IDMedicoes_LOG, IDVariaveis_VariaveisMedidas, NumeroMedicao, Operacao_LOG, Utilizador_LOG, ValorMedicao FROM db_mysql_origem.medicoes_consultados_log");
					$updateOrigem = mysqli_query($conn, "UPDATE db_mysql_origem.medicoes_consultados_log set Flag_Migracao = true where ID in (select ID from db_mysql_destino.medicoes_consultados_log) and Flag_Migracao =false");
				}
			}
		}
	}	
	
	
	///////////////////////////////////////////////

// MIGRAÇÃO DA TABELA SISTEMA
	if ($resultSistemaOrigem) {
		if ($sistemaOrigemLinhas>0){
			while($r=mysqli_fetch_assoc($resultSistemaOrigem)){
				if($sistemaOrigemLinhas > $sistemaDestinoLinhas) {
					$insertDestino = mysqli_query($conec, "INSERT INTO db_mysql_destino.sistema_log (DataHora, ID, LimiteInferiorLuz_NEW, LimiteInferiorLuz_OLD, LimiteInferiorTemperatura_NEW, LimiteInferiorTemperatura_OLD, LimiteSuperiorLuz_NEW, LimiteSuperiorLuz_OLD, LimiteSuperiorTemperatura_NEW, LimiteSuperiorTemperatura_OLD, Operacao, Utilizador) SELECT DataHora, ID, LimiteInferiorLuz_NEW, LimiteInferiorLuz_OLD, LimiteInferiorTemperatura_NEW, LimiteInferiorTemperatura_OLD, LimiteSuperiorLuz_NEW, LimiteSuperiorLuz_OLD, LimiteSuperiorTemperatura_NEW, LimiteSuperiorTemperatura_OLD, Operacao, Utilizador FROM db_mysql_origem.sistema_log");
					$updateOrigem = mysqli_query($conn, "UPDATE db_mysql_origem.sistema_log set Flag_Migracao = true where ID in (select ID from db_mysql_destino.sistema_log) and Flag_Migracao =false");
				}
			}
		}
	}
	

echo"comando efectuado com sucesso";
$executionEndTime = microtime(true);

$seconds = $executionEndTime - $executionStartTime;

echo "This script took $seconds to execute.";
mysqli_close ($conn);
mysqli_close ($conec);
	



?>