CREATE TABLE [dbo].[Event] (
    [Id]                 NVARCHAR (50)      NOT NULL,
    [RelatedDocumentIds] NVARCHAR (MAX)     NOT NULL,
    [ProjectId]          NVARCHAR (50)      NULL,
    [EnvironmentId]      NVARCHAR (50)      NULL,
    [Category]           NVARCHAR (50)      NOT NULL,
    [UserId]             NVARCHAR (50)      NOT NULL,
    [Username]           NVARCHAR (200)     NOT NULL,
    [Occurred]           DATETIMEOFFSET (7) NOT NULL,
    [Message]            NVARCHAR (MAX)     NOT NULL,
    [JSON]               NVARCHAR (MAX)     NOT NULL,
    [TenantId]           NVARCHAR (50)      NULL,
    [AutoId]             BIGINT             IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_Event_Id] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_Event_Category_AutoId]
    ON [dbo].[Event]([Category] ASC, [AutoId] ASC)
    INCLUDE([Id]);


GO
CREATE NONCLUSTERED INDEX [IX_Event_AutoId]
    ON [dbo].[Event]([AutoId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Event_Occurred]
    ON [dbo].[Event]([Occurred] ASC)
    INCLUDE([Id]);


GO
CREATE NONCLUSTERED INDEX [IX_Event_CommonSearch]
    ON [dbo].[Event]([ProjectId] ASC, [EnvironmentId] ASC, [Category] ASC, [UserId] ASC, [Occurred] ASC, [TenantId] ASC)
    INCLUDE([Id], [RelatedDocumentIds]);

