CREATE DEFINER=`root`@`localhost` TRIGGER `db_mysql_origem`.`medicoestemperatura_AFTER_INSERT` AFTER INSERT ON `medicoestemperatura` FOR EACH ROW
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
			null,
            new.DataHoraMedicao,
            null,
            new.ValorMedicaoTemperatura,
            null,
            new.IDMedicao,
            'I',
            current_user(),
            now()
            );
END