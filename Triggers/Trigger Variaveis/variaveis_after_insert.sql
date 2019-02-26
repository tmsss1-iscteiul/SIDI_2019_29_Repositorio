CREATE DEFINER=`root`@`localhost` TRIGGER `db_mysql_origem`.`variaveis_AFTER_INSERT` AFTER INSERT ON `variaveis` FOR EACH ROW
BEGIN
	insert into variaveislog (
								IDVariavel_OLD, 
                                IDVariavel_NEW, 
                                NomeVariavel_OLD, 
                                NomeVariavel_NEW, 
                                Operacao, 
                                Utilizador, 
                                DataHora
                                )
	values(
			null,
            new.idvariavel,
            null,
            new.nomevariavel,
            'I',
            current_user(),
            now()
            );
END