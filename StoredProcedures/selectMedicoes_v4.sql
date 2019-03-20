CREATE DEFINER=`root`@`localhost` PROCEDURE `SelectMedicoes`(
IN NumeroMedicao_SP int(11), IN IDVariaveis_VariaveisMedidas_SP int(11), IN IDCultura_VariaveisMedidas_SP int(11), IN ValorMedicao_SP decimal(8,2),
 IN DataHoraMedicao_SP_INF timestamp, IN DataHoraMedicao_SP_SUP timestamp)
BEGIN

	-- declare medicoes_log_id int(11);
    
	select HDR.NumeroMedicao, HDR.IDVariaveis_VariaveisMedidas, HDR.IDCultura_VariaveisMedidas, HDR.ValorMedicao, HDR.DataHoraMedicao 
	from (
			select NumeroMedicao, IDVariaveis_VariaveisMedidas, IDCultura_VariaveisMedidas, ValorMedicao, DataHoraMedicao, Email from medicoes
			left join cultura on IDCultura_VariaveisMedidas = IDCultura
			left join investigador on Email_Investigador = Email
	) as HDR
	where SUBSTRING(HDR.Email, 1, LOCATE('@', HDR.Email) - 1) like SUBSTRING(current_user(), 1, LOCATE('@', current_user()) - 1)
    and 
		(
			case 
				when NumeroMedicao_SP is null then 1
				else HDR.NumeroMedicao = NumeroMedicao_SP
            end
		)
	and 
		(
			case 
				when IDVariaveis_VariaveisMedidas_SP is null then 1
				else HDR.IDVariaveis_VariaveisMedidas = IDVariaveis_VariaveisMedidas_SP
            end
		)
	and 
		(
			case 
				when IDCultura_VariaveisMedidas_SP is null then 1
				else HDR.IDCultura_VariaveisMedidas = IDCultura_VariaveisMedidas_SP
            end
		)
	and 
		(
			case 
				when ValorMedicao_SP is null then 1
				else HDR.ValorMedicao = ValorMedicao_SP
            end
		)
	and 
		(
			case 
				when DataHoraMedicao_SP_INF is null and DataHoraMedicao_SP_SUP is null then 1
                when DataHoraMedicao_SP_INF is not null and DataHoraMedicao_SP_SUP is null then  HDR.DataHoraMedicao > DataHoraMedicao_SP_INF 
                when DataHoraMedicao_SP_INF is null and DataHoraMedicao_SP_SUP is not null then  HDR.DataHoraMedicao < DataHoraMedicao_SP_SUP 
				else HDR.DataHoraMedicao between DataHoraMedicao_SP_INF and DataHoraMedicao_SP_SUP
            end
		)
    order by HDR.NumeroMedicao;
    
    -- insert medicoes_log -- 

	insert into medicoes_log (
							NumeroMedicao_OLD, 
                            NumeroMedicao_NEW, 
                            DataHoraMedicao_OLD, 
                            DataHoraMedicao_NEW, 
                            ValorMedicao_OLD, 
                            ValorMedicao_NEW, 
                            IDVariaveis_VariaveisMedidas_OLD, 
                            IDVariaveis_VariaveisMedidas_NEW, 
                            IDCultura_VariaveisMedidas_OLD, 
                            IDCultura_VariaveisMedidas_NEW, 
                            Operacao, 
                            Utilizador, 
                            DataHora
                            )
	values (
				null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                'S',
                current_user(),
                now()
			);
	
	-- insert medicoes_consultadas_log -- 
    
    
    insert into medicoes_consultados_log (IDMedicoes_LOG, NumeroMedicao, IDVariaveis_VariaveisMedidas, IDCultura_VariaveisMedidas, ValorMedicao, DataHoraMedicao, Operacao_LOG, Utilizador_LOG, DataHora_LOG)
			select 
				(select max(ID) from medicoes_log),
				HDR.NumeroMedicao, 
                HDR.IDVariaveis_VariaveisMedidas, 
                HDR.IDCultura_VariaveisMedidas, 
                HDR.ValorMedicao, 
                HDR.DataHoraMedicao,
                'S',
                current_user(),
                now()
			from (
					select NumeroMedicao, IDVariaveis_VariaveisMedidas, IDCultura_VariaveisMedidas, ValorMedicao, DataHoraMedicao, Email from medicoes
					left join cultura on IDCultura_VariaveisMedidas = IDCultura
					left join investigador on Email_Investigador = Email
			) as HDR
			where SUBSTRING(HDR.Email, 1, LOCATE('@', HDR.Email) - 1) like SUBSTRING(current_user(), 1, LOCATE('@', current_user()) - 1)
			and 
				(
					case 
						when NumeroMedicao_SP is null then 1
						else HDR.NumeroMedicao = NumeroMedicao_SP
					end
				)
			and 
				(
					case 
						when IDVariaveis_VariaveisMedidas_SP is null then 1
						else HDR.IDVariaveis_VariaveisMedidas = IDVariaveis_VariaveisMedidas_SP
					end
				)
			and 
				(
					case 
						when IDCultura_VariaveisMedidas_SP is null then 1
						else HDR.IDCultura_VariaveisMedidas = IDCultura_VariaveisMedidas_SP
					end
				)
			and 
				(
					case 
						when ValorMedicao_SP is null then 1
						else HDR.ValorMedicao = ValorMedicao_SP
					end
				)
			and 
				(
					case 
						when DataHoraMedicao_SP_INF is null and DataHoraMedicao_SP_SUP is null then 1
						when DataHoraMedicao_SP_INF is not null and DataHoraMedicao_SP_SUP is null then  HDR.DataHoraMedicao > DataHoraMedicao_SP_INF 
						when DataHoraMedicao_SP_INF is null and DataHoraMedicao_SP_SUP is not null then  HDR.DataHoraMedicao < DataHoraMedicao_SP_SUP 
						else HDR.DataHoraMedicao between DataHoraMedicao_SP_INF and DataHoraMedicao_SP_SUP
					end
				)
			order by HDR.NumeroMedicao;
    
END