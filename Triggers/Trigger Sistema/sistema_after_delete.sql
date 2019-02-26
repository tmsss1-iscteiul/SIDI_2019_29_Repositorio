CREATE DEFINER=`root`@`localhost` TRIGGER `db_mysql_origem`.`sistema_AFTER_DELETE` AFTER DELETE ON `sistema` FOR EACH ROW
BEGIN
	insert into sistemalog(
							LimiteInferiorTemperatura_OLD, 
                            LimiteInferiorTemperatura_NEW, 
                            LimiteSuperiorTemperatura_OLD, 
                            LimiteSuperiorTemperatura_NEW, 
                            LimiteInferiorLuz_OLD, 
                            LimiteInferiorLuz_NEW, 
                            LimiteSuperiorLuz_OLD, 
                            LimiteSuperiorLuz_NEW, 
                            Operacao, 
                            Utilizador, 
                            DataHora
                            )
	values (
				old.LimiteInferiorTemperatura,
                null,
                old.LimiteSuperiorTemperatura,
                null,
                old.LimiteInferiorLuz,
                null,
                old.LimiteSuperiorLuz,
                null,
                'D',
                current_user(),
                now()
                );
END