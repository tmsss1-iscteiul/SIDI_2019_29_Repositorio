CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertInvestigador()`(IN email_SP varchar(50), IN pass_SP text, IN nomeinvestigador_SP varchar(100), IN categoriaprofissional_SP varchar(300), OUT confirmation varchar(100))
BEGIN
	declare username varchar(50);
    declare exec_querry varchar(100);
    
	if email_SP not like '%@%' 
		then signal sqlstate '45000' set message_text = 'Por favor introduza um email!'; 
    else
		set username = (SUBSTRING(email_SP, 1, LOCATE('@', email_SP) - 1));
		set exec_querry := concat('CREATE USER ', username, '@\'localhost\' ', 'IDENTIFIED BY ', pass_SP);
        execute exec_querry;
		set exec_querry := concat('GRANT ALL PRIVILEGES ON *.* TO ', username, '@\'localhost\'');
		execute exec_querry;
        
        insert into investigador(Email, NomeInvestigador, CategoriaProfissional) values(email_SP, nomeinvestigador_SP, categoriaprofissional_SP);
        
        set confirmation := 'Investigador inserido com sucesso';
    end if;
END