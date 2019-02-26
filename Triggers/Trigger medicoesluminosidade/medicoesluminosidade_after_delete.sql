CREATE DEFINER=`root`@`localhost` TRIGGER `db_mysql_origem`.`medicoesluminosidade_AFTER_DELETE` AFTER DELETE ON `medicoesluminosidade` FOR EACH ROW
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
            null,
            old.ValorMedicaoLuminosidade,
            null,
            old.IDMedicao,
            null,
            'D',
            current_user(),
            now()
            );
END