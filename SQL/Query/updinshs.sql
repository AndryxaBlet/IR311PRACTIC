create TRIGGER UpdInsHome
on House
after update,insert
as
BEGIN

	UPDATE House
    SET  [ѕрибыльќт вартир]= (select sum(Apartaments.[ѕрибыль]-HouseValueAdded)
	From ResidentialComplex inner join House on ResidentialComplex.ID = House.ResidentialComplexID inner join Apartaments on Apartaments.HouseID = House.ID
	where House.ID = (SELECT ID
	FROM inserted)
	group by Apartaments.HouseID)
    FROM inserted
	where House.ID = (SELECT ID
	FROM inserted)


	end