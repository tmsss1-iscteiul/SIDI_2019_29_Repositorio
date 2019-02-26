CREATE DEFINER=`root`@`localhost` TRIGGER `db_mysql_origem`.`medicoestemperatura_AFTER_DELETE` AFTER DELETE ON `medicoestemperatura` FOR EACH ROW
BEGIN
		insert into medicoestemperaturalog (
										DataHoraMedicao_OLD, 
                                        DataHoraMedicao_NEW, 
                                        ValorMedicaoTemperatura_OLD, 
                                        ValorMedicaoTemperatura_NEW, 
                                        IDMedicao_OLD, 
                                        IDMedicao_NEW, 
                                        Operacao, 
                                        Utilizador, 
                                        DataHora
                                        )
	values (
			old.DataHoraMedicao,
            null,
            old.ValorMedicaoTemperatura,
            null,
            old.IDMedicao,
            null,
            'D',
            current_user(),
            now()
            );
END