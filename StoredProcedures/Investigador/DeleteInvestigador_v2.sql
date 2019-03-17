CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteInvestigador`(IN email_SP varchar(50))
BEGIN
	declare nomeInvestigadorAux varchar(100);
	declare user_mysql varchar(100);

	Select nomeInvestigador into nomeInvestigadorAux from Investigador where email = email_SP;

	Delete from Investigador where email = email_SP;
    
	set user_mysql = (SUBSTRING(email_SP, 1, LOCATE('@', email_SP) - 1));
    
    set @exec_query = concat('Drop user ', user_mysql, '@localhost');
    prepare query from @exec_query;
    
	execute query;
END