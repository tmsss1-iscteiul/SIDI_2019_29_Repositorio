CREATE DEFINER=`root`@`localhost` TRIGGER `db_mysql_origem`.`variaveis_AFTER_UPDATE` AFTER UPDATE ON `variaveis` FOR EACH ROW
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
	values (
				old.idvariavel,
				case
					when old.idvariavel <> new.idvariavel then new.idvariavel
                    else null
				end,
                old.nomevariavel,
                case
					when old.nomevariavel <> new.nomevariavel then new.nomevariavel
					else null
				end,
                'U',
                current_user(),
                now()
                );
END