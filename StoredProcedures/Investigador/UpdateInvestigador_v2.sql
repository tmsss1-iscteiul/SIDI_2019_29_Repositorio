CREATE DEFINER=`root`@`localhost` PROCEDURE `updateInvestigador`(
IN emailPK varchar(50), newEmail varchar(50), newPass varchar(100), newNomeInvestigador varchar(100), newCategoriaProfissional varchar(300)
)
BEGIN
	if(emailPK is null or trim(emailpk) like '') then
		SIGNAL SQLSTATE '45000' SET
			MESSAGE_TEXT = 'emailPK is Mandatory!!';
	else
		if(newEmail is not null)
				then 
					update Investigador set email = newEmail where email = emailPK;
                    UPDATE mysql.user SET user = (SUBSTRING(newEmail, 1, LOCATE('@', newEmail) - 1)) 
						WHERE user = (SUBSTRING(emailPK, 1, LOCATE('@', emailPK) - 1)) and host = 'localhost';
		end if;
		if(newPass is not null)
				then 
					update mysql.user SET Password = password(newPass) 
						Where User = (SUBSTRING(emailPK, 1, LOCATE('@', emailPK) - 1)) and host = 'localhost';
		end if;
        if(newNomeInvestigador is not null)
				then 
					update Investigador set NomeInvestigador = newNomeInvestigador where email = emailPK;
		end if;
        if(newCategoriaProfissional is not null)
				then 
					 update Investigador set CategoriaProfissional = newCategoriaProfissional where email = emailPK;
		end if;						
	end if;

END