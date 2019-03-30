CREATE DEFINER=`root`@`localhost` PROCEDURE `exporta_consultados`()
BEGIN
	if ( (SELECT MIN(id) FROM medicoes_consultados_log WHERE Flag_Migracao = false) is not null)
		then set @command = 'select DataHoraMedicao, DataHora_LOG, ID, IDCultura_VariaveisMedidas, IDMedicoes_LOG, IDVariaveis_VariaveisMedidas, NumeroMedicao, Operacao_LOG, Utilizador_LOG, ValorMedicao from medicoes_consultados_log where ID=(SELECT MIN(id) FROM medicoes_consultados_log WHERE Flag_Migracao =0)';
		set @command_dois =(select MIN(id) FROM medicoes_consultados_log where Flag_Migracao =0);
		set @nome_ficheiro = '.csv FIELDS TERMINATED BY , ENCLOSED BY ' LINES TERMINATED BY n ;';
		set @conc = concat (@command, ' into outfile ', Cxamppmysqldatadb_mysql_destinoCONSULTADOS_, @command_dois, @nome_ficheiro);

		prepare q from @conc;
		execute q;

		update db_mysql_origem.medicoes_consultados_log set Flag_Migracao = 1 where Flag_Migracao = 0;
        
	end if;
END