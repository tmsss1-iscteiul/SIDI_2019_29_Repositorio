CREATE DEFINER=`root`@`localhost` TRIGGER `db_mysql_origem`.`variaveismedidas_AFTER_DELETE` AFTER DELETE ON `variaveismedidas` FOR EACH ROW
BEGIN
	insert into variaveismedidaslog (
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
                null,
                old.LimiteSuperior,
                null,
                old.IDVariavel_Variaveis,
                null,
                old.IDCultura_Cultura,
                'D',
                current_user(),
                now()
                );
END