CREATE DEFINER=`root`@`localhost` PROCEDURE `insertAll`(in number integer)
BEGIN

	Declare indexNumber integer;
	set indexNumber = 0;
	while (indexNumber < number) do
		set indexNumber = indexNumber + 1;
		insert into investigador values (concat('investigador', indexNumber, '@iscte-iul.pt'), concat('Investigador', indexNumber), "Investigador");
		insert into cultura values (indexNumber, concat('investigador', indexNumber, '@iscte-iul.pt'), concat('Cultura', indexNumber), concat('Descrição cultura ', indexNumber));
		insert into variaveis values (indexNumber, concat('variavel', indexNumber));
		insert into variaveismedidas values (indexNumber, indexNumber, 5, 10);
		insert into medicoes values (indexNumber, indexNumber, indexNumber, 5, now());
		insert into medicoesluminosidade values (indexNumber, 5, now());
		insert into medicoesTemperatura values (indexNumber, 5, now());
        insert into sistema values (0, 5, 2, 6);
    END WHILE;
END