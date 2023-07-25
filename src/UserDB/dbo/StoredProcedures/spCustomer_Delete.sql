CREATE PROCEDURE [dbo].[spCustomer_Delete]
	@Id int
AS
Begin

	Delete 
	from dbo.[User]
	where Id = @Id;
end