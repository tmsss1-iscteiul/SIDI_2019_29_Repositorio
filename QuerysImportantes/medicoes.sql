SELECT * FROM db_mysql_origem.medicoes;

select SUBSTRING(current_user(), 1, LOCATE('@', current_user()) - 1) as user from dual;

select * from investigador;

insert into investigador values(current_user(), 'ROOT', 'ROOT');

select * from cultura;

insert into cultura value(1, current_user(), 'Cultura de teste do RooT', 'TESTE ROOT');
insert into cultura value(2, current_user(), 'Cultura de teste do RooT 2', 'TESTE ROOT 2');
insert into cultura value(3, 'email1@teste.tt', 'Cultura de teste do tt', 'TESTE tt');

select * from variaveis;

insert into variaveis value(1, 'Variavel de Teste');
insert into variaveis value(2, 'Variavel de Teste 2');
insert into cultura value(2, '', 'Teste', 'Teste'); -- erro não existe email ''

select * from variaveismedidas;

insert into variaveismedidas value(1, 1, 30, 40);
insert into variaveismedidas value(2, 1, 30, 40);
insert into variaveismedidas value(2, 3, 30, 40);
insert into variaveismedidas value(32, 1, 30, 40); -- erro não existe id 32

select * from medicoes;

insert into medicoes value(1, 1, 1, 345, now());
insert into medicoes value(2, 1, 1, 0, now());
insert into medicoes value(3, 1, 1, 0, now());
insert into medicoes value(4, 1, 1, 33, now());
insert into medicoes value(5, 1, 1, 10000, now());
insert into medicoes value(6, 2, 3, 50, now());


select HDR.NumeroMedicao, HDR.IDVariaveis_VariaveisMedidas, HDR.IDCultura_VariaveisMedidas, HDR.ValorMedicao, HDR.DataHoraMedicao from (
		select NumeroMedicao, IDVariaveis_VariaveisMedidas, IDCultura_VariaveisMedidas, ValorMedicao, DataHoraMedicao, Email from medicoes
		left join cultura on IDCultura_VariaveisMedidas = IDCultura
		left join investigador on Email_Investigador = Email
        ) as HDR
where SUBSTRING(HDR.Email, 1, LOCATE('@', HDR.Email) - 1) like SUBSTRING(current_user(), 1, LOCATE('@', current_user()) - 1);

	select HDR.NumeroMedicao, HDR.IDVariaveis_VariaveisMedidas, HDR.IDCultura_VariaveisMedidas, HDR.ValorMedicao, HDR.DataHoraMedicao 
	from (
			select NumeroMedicao, IDVariaveis_VariaveisMedidas, IDCultura_VariaveisMedidas, ValorMedicao, DataHoraMedicao, Email from medicoes
			left join cultura on IDCultura_VariaveisMedidas = IDCultura
			left join investigador on Email_Investigador = Email
	) as HDR
	where SUBSTRING(HDR.Email, 1, LOCATE('@', HDR.Email) - 1) like SUBSTRING(current_user(), 1, LOCATE('@', current_user()) - 1)
    and HDR.IDCultura_VariaveisMedidas = 1;

select HDR.NumeroMedicao, HDR.IDVariaveis_VariaveisMedidas, HDR.IDCultura_VariaveisMedidas, HDR.ValorMedicao, HDR.DataHoraMedicao from (
		select NumeroMedicao, IDVariaveis_VariaveisMedidas, IDCultura_VariaveisMedidas, ValorMedicao, DataHoraMedicao, Email from medicoes
		left join cultura on IDCultura_VariaveisMedidas = IDCultura
		left join investigador on Email_Investigador = Email
        ) as HDR
where SUBSTRING(HDR.Email, 1, LOCATE('@', HDR.Email) - 1) like SUBSTRING('email1@teste.tt', 1, LOCATE('@', 'email1@teste.tt') - 1);

Call SelectMedicoes(1);

select * from medicoeslog;

update medicoes set valormedicao = 10 where numeromedicao = 5;

call InsertInvestigador('investigador1@hotmail.com', 'qwerty123', 'Investigador 1', 'Professor');

select * from mysql.user;
    