CREATE DEFINER=`root`@`localhost` PROCEDURE `updateInvestigador`(IN emailPK varchar(100), newEmail varchar(100), newNomeInvestigador varchar(50), newCategoriaProfissional varchar(50))
BEGIN

	Declare oldEmail varchar(100);
    Declare oldNomeInvestigador varchar(50);
	Declare oldCategoriaProfissional varchar(50);
    
    if emailPK is not null
		then Select email, NomeInvestigador, CategoriaProfissional into oldEmail, oldNomeInvestigador, oldCategoriaProfissional
			from Investigador where email = emailPK;
		
		if newEmail is not null and newEmail <> '' and newEmail <> oldEmail
			then update Investigador set email = newEmail where email = emailPK;
		end if;
        
        if newNomeInvestigador is not null and newNomeInvestigador <> '' and newNomeInvestigador <> oldNomeInvestigador
			then update Investigador set NomeInvestigador = newNomeInvestigador where email = emailPK;
		end if;
        
		if newCategoriaProfissional is not null and newCategoriaProfissional <> '' and newCategoriaProfissional <> oldCategoriaProfissional
			then update Investigador set CategoriaProfissional = newCategoriaProfissional where email = emailPK;
		end if;
	end if;
END