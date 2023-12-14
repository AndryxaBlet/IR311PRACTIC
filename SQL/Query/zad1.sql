Create procedure RachetZk1
 @areaC decimal,
 @roomsC decimal,
 @baseC decimal
 as
Select ResidentialComplex.Name, Sum(Apartaments.Area * @areaC + Apartaments.CountOfRooms * @roomsC + Apartaments.apartmentC + House.houseC + ResidentialComplex.complexC + @baseC-Apartaments.ApartmentValueAdded-House.HouseValueAdded-ResidentialComplex.ComplexValueAdded) as Прибыль
From ResidentialComplex inner join House on ResidentialComplex.ID_ResidentialComplex = House.ResidentialComplexID inner join Apartaments on Apartaments.HouseID = House.ID_House
Where ResidentialComplex.Status = 'План'
Group by  ResidentialComplex.Name