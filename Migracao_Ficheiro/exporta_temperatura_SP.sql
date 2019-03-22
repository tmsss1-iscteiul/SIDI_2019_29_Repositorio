CREATE DEFINER=`root`@`localhost` PROCEDURE `exporta_temperatura`()
BEGIN
if ( (SELECT MIN(id) FROM medicoestemperatura_log WHERE Flag_Migracao =0) is not null)
then set @command = 'select DataHoraMedicao, DataHora_LOG, ID, IDCultura_VariaveisMedidas, IDMedicoes_LOG, IDVariaveis_VariaveisMedidas, NumeroMedicao, Operacao_LOG, Utilizador_LOG, ValorMedicao from medicoestemperatura_log where ID>=(SELECT MIN(id) FROM medicoestemperatura_log WHERE Flag_Migracao =0)';
set @command_dois =(select MIN(id) FROM medicoestemperatura_log where Flag_Migracao =0);
set @nome_ficheiro = '.csv" FIELDS TERMINATED BY "," ENCLOSED BY "\'\" LINES TERMINATED BY "\n" ;';
set @conc = concat (@command, ' into outfile "', "C:/xampp/TEMPERATURA_", @command_dois, @nome_ficheiro);

prepare q from @conc;
execute q;

end if;
END
