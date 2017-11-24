CREATE TABLE [dbo].[ExtensionConfiguration] (
    [Id]              NVARCHAR (50)   NOT NULL,
    [Name]            NVARCHAR (1000) NULL,
    [ExtensionAuthor] NVARCHAR (1000) NULL,
    [JSON]            NVARCHAR (MAX)  NOT NULL,
    CONSTRAINT [PK_ExtensionConfiguration_Id] PRIMARY KEY CLUSTERED ([Id] ASC)
);

