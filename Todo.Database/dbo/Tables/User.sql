CREATE TABLE [dbo].[User] (
    [Id]                  NVARCHAR (50)    NOT NULL,
    [Username]            NVARCHAR (200)   NOT NULL,
    [IsActive]            BIT              NOT NULL,
    [IsService]           BIT              NOT NULL,
    [IdentificationToken] UNIQUEIDENTIFIER NOT NULL,
    [JSON]                NVARCHAR (MAX)   NOT NULL,
    [EmailAddress]        NVARCHAR (400)   NULL,
    [ExternalId]          NVARCHAR (400)   NULL,
    [ExternalIdentifiers] NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_User_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UQ_UserUsernameUnique] UNIQUE NONCLUSTERED ([Username] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_User_ExternalId]
    ON [dbo].[User]([ExternalId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_User_EmailAddress]
    ON [dbo].[User]([EmailAddress] ASC);

