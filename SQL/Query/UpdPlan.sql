create trigger UpdPlan
on ResidentialComplex
after update
AS
BEGIN
    IF (SELECT [IsSold] FROM inserted i inner join House on i.ID=House.ID inner join Apartaments on House.ID=Apartaments.HouseID) ='True' and (select inserted.Status from inserted)='����'
    BEGIN
        ROLLBACK TRANSACTION
        RAISERROR('� �� ��� ������� ��������. ��������� �� "����" ����������', 16, 1)
    END
END
GO