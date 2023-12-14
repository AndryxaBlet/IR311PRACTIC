alter procedure Prib3
@kv int,
@room int,
@base int
 as
Select ResidentialComplex.Name, House.ID,Apartaments.Number,Area*@kv+CountOfRooms*@room+Apartaments.BuildingCost+House.BuildingCost+ResidentialComplex.BuildingCost+@base-House.HouseValueAdded-Apartaments.ApartmentValueAdded-ResidentialComplex.ComplexValueAdded as Прибыль
From ResidentialComplex inner join House on ResidentialComplex.ID = House.ResidentialComplexID inner join Apartaments on Apartaments.HouseID = House.ID
Where ResidentialComplex.Status = 'План'
go
 exec Prib3 @kv=10,@room=10,@base=10
