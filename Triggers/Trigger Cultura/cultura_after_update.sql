CREATE DEFINER=`root`@`localhost` TRIGGER `db_mysql_origem`.`cultura_AFTER_UPDATE` AFTER UPDATE ON `cultura` FOR EACH ROW
BEGIN
	insert into 
    culturalog (
				IDCultura_OLD,
                IDCultura_NEW, 
                NomeCultura_OLD, 
                NomeCultura_NEW, 
                DescricaoCultura_OLD, 
                DescricaoCultura_NEW, 
                Email_Investigador_OLD, 
                Email_Investigador_NEW, 
                Operacao, 
                Utilizador, 
                DataHora
                )
	values (
			old.idcultura,
			case 
				when new.idcultura <> old.idcultura then new.idcultura
				else null
			end,
            old.nomecultura,
            case 
				when new.nomecultura <> old.nomecultura then new.nomecultura
				else null
			end,
            old.DescricaoCultura,
            case 
				when new.DescricaoCultura <> old.DescricaoCultura then new.DescricaoCultura
				else null
			end,
            old.Email_Investigador,
            case 
				when new.Email_Investigador <> old.Email_Investigador then new.Email_Investigador
				else null
			end,
            'U',
            current_user(),
            now()
            );
END