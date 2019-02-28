CREATE DEFINER=`root`@`localhost` PROCEDURE `insertCultura`(IN EmailInvestigador_SP varchar(50), NomeCultura_SP varchar(50), DescriçãoCultura_SP text)
BEGIN

	declare newID integer;
	declare emailAux varchar(50);
    declare erro varchar(100);
	declare username varchar(50);
    
    set username = (SUBSTRING(current_user(), 1, LOCATE('@', current_user()) - 1));

    select Email into emailAux from Investigador where NomeInvestigador = username;

	if emailAux <> EmailInvestigador_SP or emailAux is null then
		set erro = 'O email a ser inserido não é teu';
        select erro;
	else
		select max(IDCultura) into newID from cultura;
		
		if newID is null then set newID = 1; else set newID = newID + 1; end if;

		insert into cultura(IDCultura, Email_Investigador, NomeCultura, DescriçãoCultura) values (newID, EmailInvestigador_SP, NomeCultura_SP, DescriçãoCultura_SP);
	end if;
END