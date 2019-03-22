CREATE DEFINER=`root`@`localhost` PROCEDURE `exporta_cultura`()
BEGIN
if ( (SELECT MIN(id) FROM cultura_log WHERE Flag_Migracao =0) is not null)
then set @command = 'select DataHora, DescricaoCultura_NEW, DescricaoCultura_OLD, Email_Investigador_NEW, Email_Investigador_OLD, ID, IDCultura_NEW, IDCultura_OLD, NomeCultura_NEW, NomeCultura_OLD, Operacao, Utilizador from cultura_log where ID>=(SELECT MIN(id) FROM cultura_log WHERE Flag_Migracao =0)';
set @command_dois =(select MIN(id) FROM cultura_log where Flag_Migracao =0);
set @nome_ficheiro = '.csv" FIELDS TERMINATED BY "," ENCLOSED BY "\'\" LINES TERMINATED BY "\n" ;';
set @conc = concat (@command, ' into outfile "', "C:/xampp/CULTURA_", @command_dois, @nome_ficheiro);

prepare q from @conc;
execute q;

end if;
END
