CREATE DEFINER=`root`@`localhost` PROCEDURE `changePassword`(IN NomeInvestigador_SP varchar(50), newPass varchar(50))
BEGIN

	Declare erro varchar(50);
	set erro = "Nao podes mudar password";
    
	if concat(NomeInvestigador_SP, '@localhost') <> current_user() then
		select erro;
    else
		set @exec_query = concat('SET PASSWORD FOR \'',NomeInvestigador_SP, '\'@\'localhost\' = PASSWORD(\'', newPass, '\')');
		select current_user();
		prepare query from @exec_query;
		execute query;
    end if;
END