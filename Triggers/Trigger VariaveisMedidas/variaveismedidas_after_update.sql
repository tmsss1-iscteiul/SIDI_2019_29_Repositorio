CREATE DEFINER=`root`@`localhost` TRIGGER `db_mysql_origem`.`variaveismedidas_AFTER_UPDATE` AFTER UPDATE ON `variaveismedidas` FOR EACH ROW
BEGIN
	insert into variaveismedidaslog(
										LimiteInferior_OLD, 
                                        LimiteInferior_NEW, 
                                        LimiteSuperior_OLD, 
                                        LimiteSuperior_NEW, 
                                        IDVariavel_Variaveis_OLD, 
                                        IDVariavel_Variaveis_NEW, 
                                        IDCultura_Cultura_OLD, 
                                        IDCultura_Cultura_NEW, 
                                        Operacao, 
                                        Utilizador, 
                                        DataHora
										)
	values (
				old.LimiteInferior,
                case
					when old.LimiteInferior <> new.LimiteInferior then new.LimiteInferior
                    else null
				end,
                old.LimiteSuperior,
                case 
					when old.LimiteSuperior <> new.LimiteSuperior then new.LimiteSuperior
                    else null
				end,
                old.IDVariavel_Variaveis,
                case
					when old.IDVariavel_Variaveis <> new.IDVariavel_Variaveis then new.IDVariavel_Variaveis
                    else null
				end,
                old.IDCultura_Cultura,
                case 
					when old.IDCultura_Cultura <> new.IDCultura_Cultura then new.IDCultura_Cultura
                    else null
				end,
                'U',
                current_user(),
                now()
                );
END