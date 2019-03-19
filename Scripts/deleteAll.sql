CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteAll`()
BEGIN
	delete from investigador;
	delete from cultura;
	delete from variaveis;
	delete from variaveismedidas;
	delete from medicoes;
	delete from medicoestemperatura;
	delete from medicoesluminosidade;
	delete from sistema;
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