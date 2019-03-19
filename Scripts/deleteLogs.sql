CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteLogs`()
BEGIN
	delete from investigador_log;
	delete from cultura_log;
	delete from variaveis_log;
	delete from variaveismedidas_log;
	delete from medicoes_log;
	delete from medicoestemperatura_log;
	delete from medicoesluminosidade_log;
	delete from sistema_log;
	delete from medicoes_consultados_log;
END