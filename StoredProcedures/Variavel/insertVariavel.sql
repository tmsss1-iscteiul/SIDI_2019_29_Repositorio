CREATE DEFINER=`root`@`localhost` PROCEDURE `insertVariavel`(IN NomeVariavel_SP varchar(100))
BEGIN

	declare newID integer;
    
    select max(IDVariavel) into newID from Variaveis;
    
    if newID is null then set newID = 1; else set newID = newID + 1; end if;
    
    insert into variaveis (IDVariavel, NomeVariavel) values (newID, NomeVariavel_SP);

END