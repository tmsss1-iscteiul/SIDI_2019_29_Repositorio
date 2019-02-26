CREATE DEFINER=`root`@`localhost` TRIGGER `db_mysql_origem`.`investigador_AFTER_INSERT` AFTER INSERT ON `investigador` FOR EACH ROW
BEGIN
Insert into 
	investigadorlog (email_new, email_old, nomeinvestigador_new, nomeinvestigador_old, categoriaprofissional_new, categoriaprofissional_old, operacao, utilizador, datahora)
  values (new.email, null, 
	new.nomeinvestigador, null, 
	new.categoriaprofissional, null,
    'I', current_user(), now());
END