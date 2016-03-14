CREATE TABLE [dbo].[Person]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(150) NOT NULL, 
    [Address] NVARCHAR(150) NOT NULL, 
    [DateOfBirth] DATETIME NOT NULL, 
    [Notes] NVARCHAR(MAX) NULL, 
    [HobbiesId] INT NULL, 
    CONSTRAINT [FK_Person_ToHobbies] FOREIGN KEY ([HobbiesId]) REFERENCES [Hobbies]([Id]) 
)
