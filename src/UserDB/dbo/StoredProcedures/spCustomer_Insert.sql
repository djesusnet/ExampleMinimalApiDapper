CREATE PROCEDURE [dbo].[spCustomer_Insert]
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
begin
	insert into dbo.Customer (FirstName, LastName)
	values (@FirstName, @LastName);
end
