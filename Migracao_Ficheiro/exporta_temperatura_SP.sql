CREATE DEFINER=`root`@`localhost` PROCEDURE `exporta_temperatura`()
BEGIN
if ( (SELECT MIN(id) FROM medicoestemperatura_log WHERE Flag_Migracao =0) is not null)
then set @command = 'select * from medicoestemperatura_log where ID>=(SELECT MIN(id) FROM medicoestemperatura_log WHERE Flag_Migracao =0)';
set @command_dois =(select MIN(id) FROM medicoestemperatura_log where Flag_Migracao =0);
set @nome_ficheiro = '.csv" FIELDS TERMINATED BY "," ENCLOSED BY "\'\" LINES TERMINATED BY "\n" ;';
set @conc = concat (@command, ' into outfile "', "C:/xampp/TEMPERATURA_", @command_dois, @nome_ficheiro);

prepare s1 from @conc;
execute s1;

end if;
END