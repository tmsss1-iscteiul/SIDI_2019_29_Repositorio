insert into db_mysql_cultura.investigador (db_mysql_cultura.investigador.Email, db_mysql_cultura.investigador.NomeInvestigador, db_mysql_cultura.investigador.CategoriaProfissional)
values ('email@teste.pt', 'Investigador de Teste', 'Investigador');

insert into db_mysql_cultura.investigador (db_mysql_cultura.investigador.Email, db_mysql_cultura.investigador.NomeInvestigador, db_mysql_cultura.investigador.CategoriaProfissional)
values ('email2@teste.pt', 'Investigador de Teste', 'Investigador');

insert into db_mysql_cultura.investigador (db_mysql_cultura.investigador.Email, db_mysql_cultura.investigador.NomeInvestigador, db_mysql_cultura.investigador.CategoriaProfissional)
values ('email3@teste.pt', 'Investigador de Teste', 'Investigador');

insert into db_mysql_cultura.cultura (db_mysql_cultura.cultura.IDCultura, db_mysql_cultura.cultura.NomeCultura, db_mysql_cultura.cultura.DescriçãoCultura, db_mysql_cultura.cultura.Email_Investigador)
values ('0', 'Cultura de Teste' ,'Descrição da cultura de teste', 'email@teste.pt');

insert into db_mysql_cultura.cultura (db_mysql_cultura.cultura.IDCultura, db_mysql_cultura.cultura.NomeCultura, db_mysql_cultura.cultura.DescriçãoCultura, db_mysql_cultura.cultura.Email_Investigador)
values ('1', 'Cultura de Teste' ,'Descrição da cultura de teste', 'email@teste.pt');

insert into db_mysql_cultura.cultura (db_mysql_cultura.cultura.IDCultura, db_mysql_cultura.cultura.NomeCultura, db_mysql_cultura.cultura.DescriçãoCultura, db_mysql_cultura.cultura.Email_Investigador)
values ('2', 'Cultura de Teste' ,'Descrição da cultura de teste', 'email2@teste.pt');

insert into db_mysql_cultura.variaveis ( db_mysql_cultura.variaveis.IDVariavel, db_mysql_cultura.variaveis.NomeVariavel)
values ('0', 'Variavel');

insert into db_mysql_cultura.variaveis ( db_mysql_cultura.variaveis.IDVariavel, db_mysql_cultura.variaveis.NomeVariavel)
values ('1', 'Variavel');

insert into db_mysql_cultura.variaveis ( db_mysql_cultura.variaveis.IDVariavel, db_mysql_cultura.variaveis.NomeVariavel)
values ('3', 'Variavel2');

insert into db_mysql_cultura.variaveis ( db_mysql_cultura.variaveis.IDVariavel, db_mysql_cultura.variaveis.NomeVariavel)
values ('2', 'Variavel');

insert into db_mysql_cultura.variaveismedidas ( db_mysql_cultura.variaveismedidas.IDCultura_Cultura, db_mysql_cultura.variaveismedidas.IDVariavel_Variaveis, db_mysql_cultura.variaveismedidas.LimiteInferior, db_mysql_cultura.variaveismedidas.LimiteSuperior)
values ('0', '1', 30, 40);

insert into db_mysql_cultura.medicoes (db_mysql_cultura.medicoes.IDCultura_VariaveisMedidas, db_mysql_cultura.medicoes.IDVariaveis_VariaveisMedidas, 
				db_mysql_cultura.medicoes.DataHoraMedicao, db_mysql_cultura.medicoes.NumeroMedicao,
                db_mysql_cultura.medicoes.ValorMedicao)
                values( '0', '0', now(), '0', 35);