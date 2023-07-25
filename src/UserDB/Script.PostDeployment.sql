if not exists (Select 1 from dbo.[User])
begin
	insert into dbo.[User] (FirstName, LastName)
	values ('Daniel' , 'Jesus'),
	('Renato', 'Groofe'),
	('Thiago', 'Adriano'),
	('Ray', 'Carneiro')

end