CREATE DEFINER=`root`@`localhost` PROCEDURE `exporta_variaveis`()
BEGIN
if ( (SELECT MIN(id) FROM variaveis_log WHERE Flag_Migracao =0) is not null)
then set @command = 'select DataHora, ID, IDVariavel_NEW, IDVariavel_OLD, NomeVariavel_OLD, Operacao, Utilizador) SELECT DataHora, ID, IDVariavel_NEW, IDVariavel_OLD, NomeVariavel_OLD, Operacao, Utilizador from variaveis_log where ID>=(SELECT MIN(id) FROM variaveis_log WHERE Flag_Migracao =0)';
set @command_dois =(select MIN(id) FROM variaveis_log where Flag_Migracao =0);
set @nome_ficheiro = '.csv" FIELDS TERMINATED BY "," ENCLOSED BY "\'\" LINES TERMINATED BY "\n" ;';
set @conc = concat (@command, ' into outfile "', "C:/xampp/VARIAVEIS_", @command_dois, @nome_ficheiro);

prepare q from @conc;
execute q;

end if;
END
