CREATE TABLE [dbo].[KeyAllocation] (
    [CollectionName] NVARCHAR (50) NOT NULL,
    [Allocated]      INT           NOT NULL,
    CONSTRAINT [PK_KeyAllocation_CollectionName] PRIMARY KEY CLUSTERED ([CollectionName] ASC)
);

