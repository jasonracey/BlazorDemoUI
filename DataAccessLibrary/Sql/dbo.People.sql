DROP TABLE [dbo].[People]
GO

CREATE TABLE [dbo].[People]
(
	[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
    [FirstName] NVARCHAR(MAX) NULL, 
    [LastName] NVARCHAR(MAX) NULL, 
    [DateOfBirth] DATETIME NULL, 
    [EmailAddress] NVARCHAR(MAX) NULL
)
GO

INSERT INTO [dbo].[People] VALUES ('Bilbo', 'Baggins', '9/22/2890', 'bilbo@shire.com')
INSERT INTO [dbo].[People] VALUES ('Frodo', 'Baggins', '9/22/2968', 'frodo@shire.com')
INSERT INTO [dbo].[People] VALUES ('Peregrin', 'Took', '1/1/2990', 'pippin@shire.com')
INSERT INTO [dbo].[People] VALUES ('Meriadoc', 'Brandybuck', '1/1/2982', 'merry@shire.com')
GO