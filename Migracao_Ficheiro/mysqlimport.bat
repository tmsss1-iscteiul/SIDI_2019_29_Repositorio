:: ordem de leitura dos argumentos - nome do ficheiro
:: 1 - Investigador  		investigador_log_ID.csv
:: 2 - Cultura  		cultura_log_ID.csv
:: 3 - Medicoes			medicoes_log_ID.csv
:: 4 - MedicoesLuminosidade	medicoesluminosidade_log_ID.csv
:: 5 - MedicoesTemperatura	medicoestemperatura_log_ID.csv
:: 6 - SelectMedicoes		medicoes_consultados_log_ID.csv
:: 7 - Variaveis		variaveis_log_ID.csv
:: 8 - VariaveisMedidas		variaveismedidas_log_ID.csv
:: 9 - Sistema			sistema_log_ID.csv

:: pasta onde estao os ficheiros csv.
Set pathFile=D:\xampp\mysql\data\db_mysql_destino\

::pasta onde esta instalado o xampp. onde esta o mysqlimport.exe
Set path=D:\xampp\mysql\bin\

Set tempoInicio=%time%


:: Investigador
ren %pathFile%investigador_log_%1.csv investigador_log.csv 
%path%mysqlimport.exe --user=root --columns=ID,Email_OLD,Email_NEW,NomeInvestigador_OLD,NomeInvestigador_NEW,CategoriaProfissional_OLD,CategoriaProfissional_NEW,Operacao,Utilizador,DataHora --ignore-lines=1 --fields-terminated-by="," --lines-terminated-by="\n" db_mysql_destino investigador_log.csv
ren %pathFile%investigador_log.csv investigador_log_%1.csv


:: Cultura
ren %pathFile%cultura_log_%2.csv cultura_log.csv
%path%mysqlimport.exe --user=root --columns=ID,IDCultura_OLD,IDCultura_NEW,NomeCultura_OLD,NomeCultura_NEW,DescricaoCultura_OLD,DescricaoCultura_NEW,Email_Investigador_OLD,Email_Investigador_NEW,Operacao,Utilizador,DataHora --ignore-lines=1 --fields-terminated-by="," --lines-terminated-by="\n" db_mysql_destino cultura_log.csv
ren %pathFile%cultura_log.csv cultura_log_%2.csv


:: Medicoes
ren %pathFile%medicoes_log_%3.csv medicoes_log.csv 
%path%mysqlimport.exe --user=root --columns=ID,NumeroMedicao_OLD,NumeroMedicao_NEW,DataHoraMedicao_OLD,DataHoraMedicao_NEW,ValorMedicao_OLD,ValorMedicao_NEW,IDVariaveis_VariaveisMedidas_OLD,IDVariaveis_VariaveisMedidas_NEW,IDCultura_VariaveisMedidas_OLD,IDCultura_VariaveisMedidas_NEW,Operacao,Utilizador,DataHora --ignore-lines=1 --fields-terminated-by="," --lines-terminated-by="\n" db_mysql_destino medicoes_log.csv
ren %pathFile%medicoes_log.csv medicoes_log_%3.csv


:: Medicoes Luminosidade
ren %pathFile%medicoesluminosidade_log_%4.csv medicoesluminosidade_log.csv
%path%mysqlimport.exe --user=root --columns=ID,DataHoraMedicao_NEW,ValorMedicaoLuminosidade_NEW,IDMedicao_NEW,Operacao,Utilizador,DataHora --ignore-lines=1 --fields-terminated-by="," --lines-terminated-by="\n" db_mysql_destino medicoesluminosidade_log.csv
ren %pathFile%medicoesluminosidade_log.csv medicoesluminosidade_log_%4.csv


:: Medicoes Temperatura
ren %pathFile%medicoestemperatura_log_%5.csv medicoestemperatura_log.csv 
%path%mysqlimport.exe --user=root --columns=ID,DataHoraMedicao_NEW,ValorMedicaoTemperatura_NEW,IDMedicao_NEW,Operacao,Utilizador,DataHora --ignore-lines=1 --fields-terminated-by="," --lines-terminated-by="\n" db_mysql_destino medicoestemperatura_log.csv
ren %pathFile%medicoestemperatura_log.csv medicoestemperatura_log_%5.csv


:: Medicoes Consultados
ren %pathFile%medicoes_consultados_log_%6.csv medicoes_consultados_log.csv 
%path%mysqlimport.exe --user=root --columns=ID,IDMedicoes_LOG,NumeroMedicao,IDVariaveis_VariaveisMedidas,IDCultura_VariaveisMedidas,ValorMedicao,DataHoraMedicao,Operacao_LOG,Utilizador_LOG,DataHora_LOG --ignore-lines=1 --fields-terminated-by="," --lines-terminated-by="\n" db_mysql_destino medicoes_consultados_log.csv
ren %pathFile%medicoes_consultados_log.csv medicoes_consultados_log_%6.csv


:: Variaveis
ren %pathFile%variaveis_log_%7.csv variaveis_log.csv 
%path%mysqlimport.exe --user=root --columns=ID,IDVariavel_OLD,IDVariavel_NEW,NomeVariavel_OLD,NomeVariavel_NEW,Operacao,Utilizador,DataHora --ignore-lines=1 --fields-terminated-by="," --lines-terminated-by="\n" db_mysql_destino variaveis_log.csv
ren %pathFile%variaveis_log.csv variaveis_log_%7.csv


:: Variaveis Medidas
ren %pathFile%variaveismedidas_log_%8.csv variaveismedidas_log.csv 
%path%mysqlimport.exe --user=root --columns=ID,LimiteInferior_OLD,LimiteInferior_NEW,LimiteSuperior_OLD,LimiteSuperior_NEW,IDVariavel_Variaveis_OLD,IDVariavel_Variaveis_NEW,IDCultura_Cultura_OLD,IDCultura_Cultura_NEW,Operacao,Utilizador,DataHora --ignore-lines=1 --fields-terminated-by="," --lines-terminated-by="\n" db_mysql_destino variaveismedidas_log.csv
ren %pathFile%variaveismedidas_log.csv variaveismedidas_log_%8.csv


:: Sistema
ren %pathFile%sistema_log_%9.csv sistema_log.csv
%path%mysqlimport.exe --user=root --columns=ID,LimiteInferiorTemperatura_OLD,LimiteInferiorTemperatura_NEW,LimiteSuperiorTemperatura_OLD,LimiteSuperiorTemperatura_NEW,LimiteInferiorLuz_OLD,LimiteInferiorLuz_NEW,LimiteSuperiorLuz_OLD,LimiteSuperiorLuz_NEW,Operacao,Utilizador,DataHora --ignore-lines=1 --fields-terminated-by="," --lines-terminated-by="\n" db_mysql_destino sistema_log.csv
ren %pathFile%sistema_log.csv sistema_log_%9.csv



echo Inicio: %tempoInicio%, Fim: %time%
pause

