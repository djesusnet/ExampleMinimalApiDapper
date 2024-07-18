CREATE PROCEDURE [dbo].[spCustomer_Get]
	@Id int
AS
	select *
	from dbo.[User]  WITH (NOLOCK)
	where Id = @Id;
RETURN 0
