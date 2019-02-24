CREATE DEFINER=`root`@`localhost` PROCEDURE `SelectMedicoes`(IN id_cultura int(11))
BEGIN
	select HDR.NumeroMedicao, HDR.IDVariaveis_VariaveisMedidas, HDR.IDCultura_VariaveisMedidas, HDR.ValorMedicao, HDR.DataHoraMedicao 
	from (
			select NumeroMedicao, IDVariaveis_VariaveisMedidas, IDCultura_VariaveisMedidas, ValorMedicao, DataHoraMedicao, Email from medicoes
			left join cultura on IDCultura_VariaveisMedidas = IDCultura
			left join investigador on Email_Investigador = Email
	) as HDR
	where SUBSTRING(HDR.Email, 1, LOCATE('@', HDR.Email) - 1) like SUBSTRING(current_user(), 1, LOCATE('@', current_user()) - 1)
    and HDR.IDCultura_VariaveisMedidas = id_cultura;
    
    insert into medicoeslog (
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
			(select HDR.NumeroMedicao 
			from (
					select NumeroMedicao, IDVariaveis_VariaveisMedidas, IDCultura_VariaveisMedidas, ValorMedicao, DataHoraMedicao, Email from medicoes
					left join cultura on IDCultura_VariaveisMedidas = IDCultura
					left join investigador on Email_Investigador = Email
			) as HDR
			where SUBSTRING(HDR.Email, 1, LOCATE('@', HDR.Email) - 1) like SUBSTRING(current_user(), 1, LOCATE('@', current_user()) - 1)
			and HDR.IDCultura_VariaveisMedidas = id_cultura),
            null,
            (select HDR.DataHoraMedicao 
			from (
					select NumeroMedicao, IDVariaveis_VariaveisMedidas, IDCultura_VariaveisMedidas, ValorMedicao, DataHoraMedicao, Email from medicoes
					left join cultura on IDCultura_VariaveisMedidas = IDCultura
					left join investigador on Email_Investigador = Email
			) as HDR
			where SUBSTRING(HDR.Email, 1, LOCATE('@', HDR.Email) - 1) like SUBSTRING(current_user(), 1, LOCATE('@', current_user()) - 1)
			and HDR.IDCultura_VariaveisMedidas = id_cultura),
            null,
            (select HDR.ValorMedicao 
			from (
					select NumeroMedicao, IDVariaveis_VariaveisMedidas, IDCultura_VariaveisMedidas, ValorMedicao, DataHoraMedicao, Email from medicoes
					left join cultura on IDCultura_VariaveisMedidas = IDCultura
					left join investigador on Email_Investigador = Email
			) as HDR
			where SUBSTRING(HDR.Email, 1, LOCATE('@', HDR.Email) - 1) like SUBSTRING(current_user(), 1, LOCATE('@', current_user()) - 1)
			and HDR.IDCultura_VariaveisMedidas = id_cultura),
            null,
            (select HDR.IDVariaveis_VariaveisMedidas 
			from (
					select NumeroMedicao, IDVariaveis_VariaveisMedidas, IDCultura_VariaveisMedidas, ValorMedicao, DataHoraMedicao, Email from medicoes
					left join cultura on IDCultura_VariaveisMedidas = IDCultura
					left join investigador on Email_Investigador = Email
			) as HDR
			where SUBSTRING(HDR.Email, 1, LOCATE('@', HDR.Email) - 1) like SUBSTRING(current_user(), 1, LOCATE('@', current_user()) - 1)
			and HDR.IDCultura_VariaveisMedidas = id_cultura),
            null,
            (select HDR.IDCultura_VariaveisMedidas 
			from (
					select NumeroMedicao, IDVariaveis_VariaveisMedidas, IDCultura_VariaveisMedidas, ValorMedicao, DataHoraMedicao, Email from medicoes
					left join cultura on IDCultura_VariaveisMedidas = IDCultura
					left join investigador on Email_Investigador = Email
			) as HDR
			where SUBSTRING(HDR.Email, 1, LOCATE('@', HDR.Email) - 1) like SUBSTRING(current_user(), 1, LOCATE('@', current_user()) - 1)
			and HDR.IDCultura_VariaveisMedidas = id_cultura),
            null,
            'S',
            current_user(),
            now()
            );
            
END