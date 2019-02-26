CREATE DEFINER=`root`@`localhost` TRIGGER `db_mysql_origem`.`sistema_AFTER_INSERT` AFTER INSERT ON `sistema` FOR EACH ROW
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
				null,
                new.LimiteInferiorTemperatura,
                null,
                new.LimiteSuperiorTemperatura,
                null,
                new.LimiteInferiorLuz,
                null,
                new.LimiteSuperiorLuz,
                'I',
                current_user(),
                now()
                );
END