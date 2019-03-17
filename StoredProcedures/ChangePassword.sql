CREATE PROCEDURE `ChangePassword`(IN `OLD_Password` TEXT, IN `NEW_Password` TEXT)
    SQL SECURITY INVOKER
BEGIN
	declare counter int(10);
    
    set counter = (select count(user) from mysql.user 
						where user = SUBSTRING(current_user(), 1, LOCATE('@', current_user()) - 1) and
							host = 'localhost' and
							password = password(OLD_Password) );
    
	
	if counter <> 0 then
									update mysql.user set password = password(NEW_Password)
										where user = SUBSTRING(current_user(), 1, LOCATE('@', current_user()) - 1) and
										host = 'localhost';
	else 
			SIGNAL SQLSTATE '45000' SET
			MESSAGE_TEXT = 'Please check your password, old password is wrong!';
	end if;
        
	flush privileges;
END