CREATE DEFINER=`root`@`localhost` PROCEDURE `exporta_variaviesmedidas`()
BEGIN
if ( (SELECT MIN(id) FROM variaveismedidas_log WHERE Flag_Migracao =0) is not null)
then set @command = 'select DataHora, ID, IDCultura_NEW, IDCultura_OLD, IDVariavel_Variaveis_NEW, IDVariavel_Variaveis_OLD, LimiteInferior_NEW, LimiteInferior_OLD, LimiteSuperior_NEW, LimiteSuperior_OLD, Operacao, Utilizador from variaveismedidas_log where ID>=(SELECT MIN(id) FROM variaveismedidas_log WHERE Flag_Migracao =0)';
set @command_dois =(select MIN(id) FROM variaveismedidas_log where Flag_Migracao =0);
set @nome_ficheiro = '.csv" FIELDS TERMINATED BY "," ENCLOSED BY "\'\" LINES TERMINATED BY "\n" ;';
set @conc = concat (@command, ' into outfile "', "C:/xampp/VARIAVEISMEDIDAS_", @command_dois, @nome_ficheiro);

prepare q from @conc;
execute q;

end if;
END
