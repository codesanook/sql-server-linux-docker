CREATE TABLE [dbo].[Users]
(
    [Id] [INT] NOT NULL PRIMARY KEY IDENTITY(1,1),
    [Email] [nvarchar](50) NOT NULL,
    [FirstName] [nvarchar](50) NOT NULL,
    [LastName] [nvarchar](50) NOT NULL,
    [DateOfBirth] [datetime] NULL
)
