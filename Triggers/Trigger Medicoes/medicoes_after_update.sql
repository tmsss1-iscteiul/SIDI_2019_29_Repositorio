CREATE DEFINER=`root`@`localhost` TRIGGER `db_mysql_origem`.`medicoes_AFTER_UPDATE` AFTER UPDATE ON `medicoes` FOR EACH ROW
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
            case
				when old.NumeroMedicao <> new.NumeroMedicao then new.NumeroMedicao
                else null
			end,
            old.DataHoraMedicao,
            case 
				when old.DataHoraMedicao <> new.DataHoraMedicao then new.DataHoraMedicao
                else null
			end,
            old.ValorMedicao,
            case
				when old.ValorMedicao <> new.ValorMedicao then new.ValorMedicao
                else null
			end,
            old.IDVariaveis_VariaveisMedidas,
            case
				when old.IDVariaveis_VariaveisMedidas <> new.IDVariaveis_VariaveisMedidas then new.IDVariaveis_VariaveisMedidas
                else null
			end,
            old.IDCultura_VariaveisMedidas,
            case
				when old.IDCultura_VariaveisMedidas <> new.IDCultura_VariaveisMedidas then new.IDCultura_VariaveisMedidas
                else null
			end,
            'U',
            current_user(),
            now()
            );
END