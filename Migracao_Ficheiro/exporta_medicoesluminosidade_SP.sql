CREATE DEFINER=`root`@`localhost` PROCEDURE `exporta_medicoesluminosidade`()
BEGIN
if ( (SELECT MIN(id) FROM medicoesluminosidade_log WHERE Flag_Migracao =0) is not null)
then set @command = 'select DataHora, DataHoraMedicao_NEW, DataHoraMedicao_OLD, ID, IDMedicao_NEW, IDMedicao_OLD, Operacao, Utilizador, ValorMedicaoLuminosidade_NEW, ValorMedicaoLuminosidade_OLD from medicoesluminosidade_log where ID>=(SELECT MIN(id) FROM medicoesluminosidade_log WHERE Flag_Migracao =0)';
set @command_dois =(select MIN(id) FROM medicoesluminosidade_log where Flag_Migracao =0);
set @nome_ficheiro = '.csv" FIELDS TERMINATED BY "," ENCLOSED BY "\'\" LINES TERMINATED BY "\n" ;';
set @conc = concat (@command, ' into outfile "', "C:/xampp/MEDICOES_", @command_dois, @nome_ficheiro);

prepare q from @conc;
execute q;

end if;
END
