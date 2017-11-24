CREATE TABLE [dbo].[TagSet] (
    [Id]        NVARCHAR (50)  NOT NULL,
    [Name]      NVARCHAR (200) NOT NULL,
    [SortOrder] INT            NOT NULL,
    [JSON]      NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_TagSet_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UQ_TagSetName] UNIQUE NONCLUSTERED ([Name] ASC)
);

