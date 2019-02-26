CREATE DEFINER=`root`@`localhost` TRIGGER `db_mysql_origem`.`medicoesluminosidade_AFTER_INSERT` AFTER INSERT ON `medicoesluminosidade` FOR EACH ROW
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
			null, 
            new.DataHoraMedicao,
            null,
            new.ValorMedicaoLuminosidade,
            null,
            new.IDMedicao,
            'I',
            current_user(),
            now()
            );
END