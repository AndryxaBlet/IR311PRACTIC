create TRIGGER UpdIns
on Apartaments
after update,insert
as

BEGIN
 

	UPDATE Apartaments
    SET [ѕрибыль] = (Select (Area*Apartaments.ArC+CountOfRooms*Apartaments.RmC+Apartaments.BuildingCost+House.BuildingCost+ResidentialComplex.BuildingCost+Apartaments.BaseC-Apartaments.ApartmentValueAdded)
    From ResidentialComplex inner join House on ResidentialComplex.ID = House.ResidentialComplexID inner join Apartaments on Apartaments.HouseID = House.ID
	where Apartaments.ID = (SELECT ID
	FROM inserted))
	FROM inserted
	where Apartaments.ID = (SELECT ID
	FROM inserted)
	
	update House 
	set [ѕрибыльќт вартир]=1
	where House.ID=
	(SELECT House.ID
	from inserted inner join House on inserted.HouseID=House.ID)
	update ResidentialComplex
	set [ѕрибыльќт∆ ]=1
	where ResidentialComplex.ID=
	(SELECT House.ResidentialComplexID
	from inserted inner join House on inserted.HouseID=House.ID)


--    UPDATE House
--SET ѕрибыльќт вартир = (select sum(Apartaments.ќценочна€—тоимость-HouseValueAdded)
--From ResidentialComplex inner join House on ResidentialComplex.ID = House.ResidentialComplexID inner join Apartaments on Apartaments.HouseID = House.ID
--where House.ID = (SELECT ID
--FROM inserted)
--group by Apartaments.HouseID)
--FROM inserted
--where House.ID = (SELECT HouseID
--FROM inserted)


	--UPDATE ResidentialComplex
 --   SET ѕрибыльќт∆  = (select sum(House.ѕрибыльќт вартир-ResidentialComplex.ComplexValueAdded)
 --   From ResidentialComplex inner join House on ResidentialComplex.ID = House.ResidentialComplexID inner join Apartaments on Apartaments.HouseID = House.ID
	--where ResidentialComplex.ID = (SELECT ID
	--FROM inserted))
	--FROM inserted
	--where ResidentialComplex.ID = (SELECT ResidentialComplexID
	--FROM inserted inner join House on House.ID=inserted.HouseID)
	end