CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteTables`()
BEGIN
	delete from investigador;
	delete from cultura;
	delete from variaveis;
	delete from variaveismedidas;
	delete from medicoes;
	delete from medicoestemperatura;
	delete from medicoesluminosidade;
	delete from sistema;
END