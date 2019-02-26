CREATE DEFINER=`root`@`localhost` TRIGGER `db_mysql_origem`.`sistema_AFTER_UPDATE` AFTER UPDATE ON `sistema` FOR EACH ROW
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
            case 
				when old.LimiteInferiorTemperatura <> new.LimiteInferiorTemperatura then new.LimiteInferiorTemperatura
                else null
			end,
            old.LimiteSuperiorTemperatura,
            case 
				when old.LimiteSuperiorTemperatura <> new.LimiteSuperiorTemperatura then new.LimiteSuperiorTemperatura
                else null
			end,
            old.LimiteInferiorLuz,
            case
				when old.LimiteInferiorLuz <> new.LimiteInferiorLuz then new.LimiteInferiorLuz
                else null
			end,
            old.LimiteSuperiorLuz,
            case
				when old.LimiteSuperiorLuz <> new.LimiteSuperiorLuz then new.LimiteSuperiorLuz
                else null
			end,
            'U',
            current_user(),
            now()
            );
END