CREATE TABLE [dbo].[ApiKey] (
    [Id]           NVARCHAR (50)      NOT NULL,
    [UserId]       NVARCHAR (50)      NOT NULL,
    [ApiKeyHashed] NVARCHAR (200)     NOT NULL,
    [Created]      DATETIMEOFFSET (7) NOT NULL,
    [JSON]         NVARCHAR (MAX)     NOT NULL,
    CONSTRAINT [PK_ApiKey_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UQ_ApiKeyUnique] UNIQUE NONCLUSTERED ([ApiKeyHashed] ASC)
);

