CREATE DEFINER=`root`@`localhost` PROCEDURE `updateVariavel`(IN IDVariavel_SP integer, NomeVariavel_SP varchar(100))
BEGIN
	
    update Variaveis set NomeVariavel = NomeVariavel_SP where IDVariavel = IDVariavel_SP;
    
END