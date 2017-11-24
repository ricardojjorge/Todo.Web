CREATE TABLE [dbo].[Configuration] (
    [Id]   NVARCHAR (50)  NOT NULL,
    [JSON] NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Configuration_Id] PRIMARY KEY CLUSTERED ([Id] ASC)
);

