CREATE DEFINER=`root`@`localhost` TRIGGER `db_mysql_origem`.`variaveismedidas_AFTER_INSERT` AFTER INSERT ON `variaveismedidas` FOR EACH ROW
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
				null,
                new.LimiteInferior,
                null,
                new.LimiteSuperior,
                null,
                new.IDVariavel_Variaveis,
                null,
                new.IDCultura_Cultura,
                'I',
                current_user(),
                now()
                );
END