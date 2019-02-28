CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteInvestigador`(IN email_SP varchar(50))
BEGIN
	declare nomeInvestigadorAux varchar(100);

	Select nomeInvestigador into nomeInvestigadorAux from Investigador where email = email_SP;

	Delete from Investigador where email = email_SP;
    
    set @exec_query = concat('Drop user ', nomeInvestigadorAux, '@localhost');
    prepare query from @exec_query;
	execute query;
END