SELECT * FROM db_mysql_origem.investigador;

SELECT * FROM db_mysql_origem.investigadorlog;

select now() from dual;

insert into investigador (Email,NomeInvestigador,CategoriaProfissional) 
    values('email' , 'Investigador de Teste', 'Categoria de Teste');
    
update investigador
set NomeInvestigador = 'nome de investigador alterado'
where Email = 'email';

update investigador
set NomeInvestigador = 'nome de investigador alterado 2'
where Email = 'email';

update investigador
set NomeInvestigador = 'nome de investigador alterado 3'
where Email = 'email';

insert into investigador (Email,NomeInvestigador,CategoriaProfissional) 
    values
		('email1@teste.tt' , 'Investigador de Teste 1', 'Categoria de Teste 1'),
		('email2@teste.tt' , 'Investigador de Teste 2', 'Categoria de Teste 2'),
		('email3@teste.tt' , 'Investigador de Teste 3', 'Categoria de Teste 1'),
		('email4@teste.tt' , 'Investigador de Teste 4', 'Categoria de Teste 2');
        
update investigador
set CategoriaProfissional = 'Categoria Profisional de teste'
where Email = 'email1@teste.tt' or
	Email = 'email2@teste.tt' or 
    Email = 'email3@teste.tt' or 
    Email = 'email4@teste.tt' ;
    

delete from investigador
where Email = 'email';
    
    
    
    
    