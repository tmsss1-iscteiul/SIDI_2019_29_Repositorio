CREATE DEFINER=`root`@`localhost` TRIGGER `db_mysql_origem`.`variaveis_AFTER_DELETE` AFTER DELETE ON `variaveis` FOR EACH ROW
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
			old.idvariavel,
            null,
            old.nomevariavel,
            null,
            'D',
            current_user(),
            now()
            );
END