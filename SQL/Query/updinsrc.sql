create TRIGGER UpdInsRC
on ResidentialComplex
after update,insert
as
BEGIN

   
	UPDATE ResidentialComplex
    SET ѕрибыльќт∆  = (Select Sum(Area*Apartaments.ArC+CountOfRooms*RmC+Apartaments.BuildingCost+House.BuildingCost+ResidentialComplex.BuildingCost+BaseC-House.HouseValueAdded-Apartaments.ApartmentValueAdded)-ResidentialComplex.ComplexValueAdded
    From ResidentialComplex inner join House on ResidentialComplex.ID = House.ResidentialComplexID inner join Apartaments on Apartaments.HouseID = House.ID
	where ResidentialComplex.ID = (SELECT ID
	FROM inserted)
	group by House.ResidentialComplexID,ResidentialComplex.ComplexValueAdded)
	FROM inserted
	where ResidentialComplex.ID = (SELECT ID
	FROM inserted)

 --   UPDATE House
 --   SET ѕрибыльќт вартир = (select sum(Apartaments.ќценочна€—тоимость-HouseValueAdded)
	--From ResidentialComplex inner join House on ResidentialComplex.ID = House.ResidentialComplexID inner join Apartaments on Apartaments.HouseID = House.ID
	--where House.ID = (SELECT ID
	--FROM inserted)
	--group by Apartaments.HouseID)
 --   FROM inserted
	--where House.ID = (SELECT House.ID
	--FROM inserted inner join House on inserted.ID=House.ResidentialComplexID)
	
 --   UPDATE Apartaments
 --   SET ќценочна€—тоимость = (Select (Area*Apartaments.ArC+CountOfRooms*Apartaments.RmC+Apartaments.BuildingCost+House.BuildingCost+ResidentialComplex.BuildingCost+Apartaments.BaseC-Apartaments.ApartmentValueAdded)
 --   From ResidentialComplex inner join House on ResidentialComplex.ID = House.ResidentialComplexID inner join Apartaments on Apartaments.HouseID = House.ID
	--where Apartaments.ID = (SELECT ID
	--FROM inserted))
	--FROM inserted
	--where Apartaments.ID = (SELECT Apartaments.ID
	--FROM inserted inner join House on inserted.ID=House.ResidentialComplexID inner join Apartaments on Apartaments.HouseID = House.ID)
	

 

END 
