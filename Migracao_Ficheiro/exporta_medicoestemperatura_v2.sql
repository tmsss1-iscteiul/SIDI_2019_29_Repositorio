CREATE DEFINER=`root`@`localhost` PROCEDURE `exporta_medicoestemperatura`()
BEGIN
	if ( (SELECT MIN(id) FROM medicoestemperatura_log WHERE Flag_Migracao =0) is not null)
		then set @command = 'select DataHora, DataHoraMedicao_NEW, ID, IDMedicao_NEW, Operacao, Utilizador, ValorMedicaoTemperatura_NEW from medicoestemperatura_log where ID>=(SELECT MIN(id) FROM medicoestemperatura_log WHERE Flag_Migracao =0)';
		set @command_dois =(select MIN(id) FROM medicoestemperatura_log where Flag_Migracao = 0);
		set @nome_ficheiro = '.csv" FIELDS TERMINATED BY "," ENCLOSED BY "\'\" LINES TERMINATED BY "\n" ;';
		set @conc = concat (@command, ' into outfile "', "C:/xampp/mysql/data/db_mysql_destino/MEDICOESTEMP_", @command_dois, @nome_ficheiro);

		prepare q from @conc;
		execute q;

		update db_mysql_origem.medicoestemperatura_log set Flag_Migracao = 1 where Flag_Migracao = 0;
		
	end if;
END