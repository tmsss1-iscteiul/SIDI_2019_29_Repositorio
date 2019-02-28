CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteVariavel`(IN IDVariavel_SP integer)
BEGIN
	
    delete from Variaveis where IDVariavel = IDVariavel_SP;
    
END