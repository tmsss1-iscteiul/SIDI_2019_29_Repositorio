CREATE DEFINER=`root`@`localhost` TRIGGER `db_mysql_origem`.`investigador_AFTER_DELETE` AFTER DELETE ON `investigador` FOR EACH ROW
BEGIN
	Insert into 
	investigadorlog (
					email_new, 
                    email_old, 
                    nomeinvestigador_new, 
                    nomeinvestigador_old, 
                    categoriaprofissional_new, 
                    categoriaprofissional_old, 
                    operacao, 
                    utilizador, 
                    datahora
                    )
	values (
			null,
            old.email,
            null,
            old.nomeinvestigador,
            null,
            old.categoriaprofissional,
            'D',
            current_user(),
            now()
            );						
END