CREATE DEFINER=`root`@`localhost` PROCEDURE `InserirInvestigador`(IN email_SP varchar(50), IN pass_SP varchar(50), IN nomeinvestigador_SP varchar(100), IN categoriaprofissional_SP varchar(300))
BEGIN
	declare username varchar(50);
    
	if email_SP not like '%@%' 
		then signal sqlstate '45000' set message_text = 'Por favor, introduza um email válido!'; 
    else
		set username = (SUBSTRING(email_SP, 1, LOCATE('@', email_SP) - 1));
		set @exec_querry = concat('CREATE USER \'', username, '\'@\'localhost\' ', 'IDENTIFIED BY  \'', pass_SP, '\'');
        prepare query from @exec_querry;
        execute query;
		set @exec_querry = concat('GRANT ALL PRIVILEGES ON *.* TO \'', username, '\'@\'localhost\'');
		prepare query from @exec_querry;
        execute query;
        
        insert into investigador(Email, NomeInvestigador, CategoriaProfissional) values(email_SP, nomeinvestigador_SP, categoriaprofissional_SP);
    end if;
END