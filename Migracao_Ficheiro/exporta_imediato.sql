CREATE DEFINER=`root`@`localhost` PROCEDURE `exporta_imediato`()
BEGIN
	call exporta_consultados();
	call exporta_cultura();
	call exporta_investigador();
	call exporta_medicoes();
	call exporta_medicoesluminosidade();
	call exporta_medicoestemperatura();
	call exporta_variaveis();
	call exporta_variaviesmedidas();
END