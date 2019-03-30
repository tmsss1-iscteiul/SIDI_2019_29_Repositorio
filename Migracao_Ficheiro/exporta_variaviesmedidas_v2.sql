CREATE DEFINER=`root`@`localhost` PROCEDURE `exporta_variaviesmedidas`()
BEGIN
	if ( (SELECT MIN(id) FROM variaveismedidas_log WHERE Flag_Migracao =0) is not null)
		then set @command = 'SELECT ID, LimiteInferior_OLD, LimiteInferior_NEW, LimiteSuperior_OLD, LimiteSuperior_NEW, IDVariavel_Variaveis_OLD, IDVariavel_Variaveis_NEW, IDCultura_Cultura_OLD, IDCultura_Cultura_NEW, Operacao, Utilizador, DataHora FROM variaveismedidas_log WHERE ID >= (SELECT MIN(id) FROM variaveismedidas_log WHERE Flag_Migracao = 0)';
		set @command_dois =(select MIN(id) FROM variaveismedidas_log where Flag_Migracao =0);
		set @nome_ficheiro = '.csv" FIELDS TERMINATED BY "," ENCLOSED BY "\'\" LINES TERMINATED BY "\n" ;';
		set @conc = concat (@command, ' into outfile "', "C:/xampp/mysql/data/db_mysql_destino/VARIAVEISMEDIDAS_", @command_dois, @nome_ficheiro);

		prepare q from @conc;
		execute q;
		
		update db_mysql_origem.variaveismedidas_log set Flag_Migracao = 1 where Flag_Migracao = 0;

	end if;
END