CREATE DEFINER=`root`@`localhost` TRIGGER `db_mysql_origem`.`medicoestemperatura_AFTER_UPDATE` AFTER UPDATE ON `medicoestemperatura` FOR EACH ROW
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
            case
				when old.DataHoraMedicao <> new.DataHoraMedicao then new.DataHoraMedicao
                else null
			end,
            old.ValorMedicaoTemperatura,
            case
				when old.ValorMedicaoTemperatura <> new.ValorMedicaoTemperatura then new.ValorMedicaoTemperatura
                else null
			end,
            old.IDMedicao,
            case
				when old.IDMedicao <> new.IDMedicao then new.IDMedicao
                else null
			end,
            'U',
            current_user(),
            now()
            );
END