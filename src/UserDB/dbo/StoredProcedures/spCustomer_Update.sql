CREATE PROCEDURE [dbo].[spCustomer_Update]
	@Id int,
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
begin
	Update dbo.[User]
	set FirstName = @FirstName, LastName = @LastName
	where Id = @Id;
end
