CREATE TABLE [dbo].[LibraryVariableSet] (
    [Id]            NVARCHAR (50)  NOT NULL,
    [Name]          NVARCHAR (200) NOT NULL,
    [VariableSetId] NVARCHAR (150) NULL,
    [ContentType]   NVARCHAR (50)  NOT NULL,
    [JSON]          NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_LibraryVariableSet_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UQ_LibraryVariableSetNameUnique] UNIQUE NONCLUSTERED ([Name] ASC)
);

