CREATE DEFINER=`root`@`localhost` PROCEDURE `updateCultura`(IN IDCultura_SP integer, DescricaoCultura_SP varchar(100))
BEGIN
	declare emailAux varchar(50);
    declare nomeAux varchar(100);
    declare erro varchar(100);
    select Email_Investigador into emailAux from Cultura where IDCultura = IDCultura_SP;
    
    select nomeInvestigador into nomeAux from Investigador where Email = emailAux;

	if concat(nomeAux, '@localhost') <> current_user() then
		set erro = 'Não podes alterar esta cultura';
		Select erro;
	else
		update Cultura set DescricaoCultura = DescricaoCultura_SP where IDCultura = IDCultura_SP;
	end if;
END