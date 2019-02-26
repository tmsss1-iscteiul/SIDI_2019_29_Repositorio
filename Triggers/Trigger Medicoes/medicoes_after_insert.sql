CREATE DEFINER=`root`@`localhost` TRIGGER `db_mysql_origem`.`medicoes_AFTER_INSERT` AFTER INSERT ON `medicoes` FOR EACH ROW
BEGIN
	insert into medicoeslog(
								NumeroMedicao_OLD, 
                                NumeroMedicao_NEW, 
                                DataHoraMedicao_OLD, 
                                DataHoraMedicao_NEW, 
                                ValorMedicao_OLD, 
                                ValorMedicao_NEW, 
                                IDVariaveis_VariaveisMedidas_OLD, 
                                IDVariaveis_VariaveisMedidas_NEW, 
                                IDCultura_VariaveisMedidas_OLD, 
                                IDCultura_VariaveisMedidas_NEW, 
                                Operacao, 
                                Utilizador, 
                                DataHora
                                )
	values (
			null,
            new.NumeroMedicao,
            null,
            new.DataHoraMedicao,
            null,
            new.ValorMedicao,
            null,
            new.IDVariaveis_VariaveisMedidas,
            null,
            new.IDCultura_VariaveisMedidas,
            'I',
            current_user(),
            now()
            );
END