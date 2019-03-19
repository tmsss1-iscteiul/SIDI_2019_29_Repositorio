CREATE DEFINER=`root`@`localhost` PROCEDURE `insertSensores`(in number integer)
BEGIN

	Declare indexNumber integer;
	set indexNumber = 0;
	while (indexNumber < number) do
		set indexNumber = indexNumber + 1;
		insert into medicoesluminosidade values (indexNumber, 5, now());
		insert into medicoesTemperatura values (indexNumber, 5, now());
    END WHILE;
END