CREATE DEFINER=`root`@`localhost` PROCEDURE `exporta_medicoes`()
BEGIN
	if ( (SELECT MIN(id) FROM medicoes_log WHERE Flag_Migracao =0) is not null)
		then set @command = 'select DataHora, DataHoraMedicao_NEW, DataHoraMedicao_OLD, ID, IDCultura_VariaveisMedidas_NEW, IDCultura_VariaveisMedidas_OLD, IDVariaveis_VariaveisMedidas_NEW, IDVariaveis_VariaveisMedidas_OLD, NumeroMedicao_NEW, NumeroMedicao_OLD, Operacao, Utilizador, ValorMedicao_NEW, ValorMedicao_OLD from medicoes_log where ID>=(SELECT MIN(id) FROM medicoes_log WHERE Flag_Migracao =0)';
		set @command_dois =(select MIN(id) FROM medicoes_log where Flag_Migracao =0);
		set @nome_ficheiro = '.csv" FIELDS TERMINATED BY "," ENCLOSED BY "\'\" LINES TERMINATED BY "\n" ;';
		set @conc = concat (@command, ' into outfile "', "C:/xampp/mysql/data/db_mysql_destino/MEDICOES_", @command_dois, @nome_ficheiro);

		prepare q from @conc;
		execute q;
        
        update db_mysql_origem.medicoes_log set Flag_Migracao = 1 where Flag_Migracao = 0;

	end if;
END