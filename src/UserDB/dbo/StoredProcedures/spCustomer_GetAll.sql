CREATE PROCEDURE [dbo].[spCustomer_GetAll]
As
begin
	select *
	from dbo.[User]  WITH (NOLOCK);
end
