CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteCultura`(IN IDCultura_SP integer)
BEGIN

	declare emailAux varchar(50);
    declare nomeAux varchar(100);
    declare erro varchar(100);
    select Email_Investigador into emailAux from Cultura where IDCultura = IDCultura_SP;
    
    select nomeInvestigador into nomeAux from Investigador where Email = emailAux;

	if concat(nomeAux, '@localhost') <> current_user() then
		set erro = 'Não podes apagar esta cultura';
		Select erro;
	else
		delete from cultura where IDCultura = IDCultura_SP;
	end if;
END