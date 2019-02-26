CREATE DEFINER=`root`@`localhost` TRIGGER `db_mysql_origem`.`medicoes_AFTER_DELETE` AFTER DELETE ON `medicoes` FOR EACH ROW
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
			old.NumeroMedicao,
            null,
            old.DataHoraMedicao,
            null,
            old.ValorMedicao,
            null,
            old.IDVariaveis_VariaveisMedidas,
            null,
            old.IDCultura_VariaveisMedidas,
            null,
            'D',
            current_user(),
            now()
            );
END