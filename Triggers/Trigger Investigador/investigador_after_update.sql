CREATE DEFINER=`root`@`localhost` TRIGGER `db_mysql_origem`.`investigador_AFTER_UPDATE` AFTER UPDATE ON `investigador` FOR EACH ROW
BEGIN
	Insert into 
	investigadorlog (email_new, email_old, nomeinvestigador_new, nomeinvestigador_old, categoriaprofissional_new, categoriaprofissional_old, operacao, utilizador, datahora)
  values (
	case 
		when new.email <> old.email then new.email
		else null
	end,
    old.email,
    case 
		when new.nomeinvestigador <> old.nomeinvestigador then new.nomeinvestigador
        else null
	end, 
    old.nomeinvestigador,
    case 
		when new.categoriaprofissional <> old.categoriaprofissional then new.categoriaprofissional
        else null
	end,
    old.categoriaprofissional,
    'U', 
    current_user(), 
    now()); 
END