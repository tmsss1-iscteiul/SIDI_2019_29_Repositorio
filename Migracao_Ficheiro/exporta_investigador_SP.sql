CREATE DEFINER=`root`@`localhost` PROCEDURE `exporta_investigador`()
BEGIN
if ( (SELECT MIN(id) FROM investigador_log WHERE Flag_Migracao =0) is not null)
THEN set @command = 'select CategoriaProfissional_NEW, CategoriaProfissional_OLD, DataHora, Email_NEW, Email_OLD, ID, NomeInvestigador_NEW, NomeInvestigador_OLD, Operacao, Utilizador from investigador_log where ID>=(SELECT MIN(id) FROM investigador_log WHERE Flag_Migracao =0)';
set @command_dois =(select MIN(id) FROM investigador_log where Flag_Migracao =0);
set @nome_ficheiro = '.csv" FIELDS TERMINATED BY "," ENCLOSED BY "\'\" LINES TERMINATED BY "\n" ;';
set @conc = concat (@command, ' into outfile "', "C:/xampp/INVESTGADOR_", @command_dois, @nome_ficheiro);

prepare q from @conc;
execute q;
end if;

END
