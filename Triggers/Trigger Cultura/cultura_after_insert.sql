CREATE DEFINER=`root`@`localhost` TRIGGER `db_mysql_origem`.`cultura_AFTER_INSERT` AFTER INSERT ON `cultura` FOR EACH ROW
BEGIN
	insert into culturalog (
							idcultura_old, 
                            idcultura_new, 
							nomecultura_old, 
                            nomecultura_new, 
                            descricaocultura_old, 
                            descricaocultura_new, 
                            email_investigador_old, 
                            email_investigador_new, 
                            operacao, 
                            utilizador, 
                            datahora
                            )
    values (
		null, 
        new.idcultura,
        null, 
        new.nomecultura,
        null,
        new.descricaocultura,
        null,
        new.email_investigador,
        'I',
        current_user(),
        now()
        );     
END