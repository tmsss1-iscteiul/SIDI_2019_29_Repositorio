CREATE DEFINER=`root`@`localhost` TRIGGER `db_mysql_origem`.`medicoesluminosidade_AFTER_UPDATE` AFTER UPDATE ON `medicoesluminosidade` FOR EACH ROW
BEGIN
	insert into medicoesluminosidadelog (
											DataHoraMedicao_OLD, 
                                            DataHoraMedicao_NEW, 
                                            ValorMedicaoLuminosidade_OLD, 
                                            ValorMedicaoLuminosidade_NEW, 
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
            old.ValorMedicaoLuminosidade,
            case
				when old.ValorMedicaoLuminosidade <> new.ValorMedicaoLuminosidade then new.ValorMedicaoLuminosidade
                else null
			end,
            old.IDMedicao,
            case
				when old.IDMedicao <> new.IDMedicao then new.IDMedicao
                else null
            end,
            'D',
            current_user(),
            now()
            );
END