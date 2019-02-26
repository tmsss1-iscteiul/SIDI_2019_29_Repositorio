CREATE DEFINER=`root`@`localhost` TRIGGER `db_mysql_origem`.`cultura_AFTER_DELETE` AFTER DELETE ON `cultura` FOR EACH ROW
BEGIN
		insert into culturalog ( 
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
                null,
                old.nomecultura,
                null,
                old.descricaocultura,
                null,
                old.email_investigador,
                'D',
                current_user(),
                now()
				);
END