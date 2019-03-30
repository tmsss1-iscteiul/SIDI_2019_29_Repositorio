CREATE DEFINER=`root`@`localhost` PROCEDURE `exporta_medicoesluminosidade`()
BEGIN
	if ( (SELECT MIN(id) FROM medicoesluminosidade_log WHERE Flag_Migracao =0) is not null)
		then set @command = 'select DataHora, DataHoraMedicao_NEW, ID, IDMedicao_NEW, Operacao, Utilizador, ValorMedicaoLuminosidade_NEW from medicoesluminosidade_log where ID>=(SELECT MIN(id) FROM medicoesluminosidade_log WHERE Flag_Migracao =0)';
		set @command_dois =(select MIN(id) FROM medicoesluminosidade_log where Flag_Migracao =0);
		set @nome_ficheiro = '.csv" FIELDS TERMINATED BY "," ENCLOSED BY "\'\" LINES TERMINATED BY "\n" ;';
		set @conc = concat (@command, ' into outfile "', "C:/xampp/mysql/data/db_mysql_destino/MEDICOESLUM_", @command_dois, @nome_ficheiro);

		prepare q from @conc;
		execute q;
    
		update db_mysql_origem.medicoesluminosidade_log set Flag_Migracao = 1 where Flag_Migracao = 0;

	end if;
END