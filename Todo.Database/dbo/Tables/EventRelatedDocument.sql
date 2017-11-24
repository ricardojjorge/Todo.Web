CREATE TABLE [dbo].[EventRelatedDocument] (
    [Id]                INT            IDENTITY (1, 1) NOT NULL,
    [RelatedDocumentId] NVARCHAR (250) NOT NULL,
    [EventId]           NVARCHAR (50)  NOT NULL,
    CONSTRAINT [PK_EventRelatedDocument] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EventRelatedDocument_EventId] FOREIGN KEY ([EventId]) REFERENCES [dbo].[Event] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_EventRelatedDocument_EventId]
    ON [dbo].[EventRelatedDocument]([EventId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_EventRelatedDocument_RelatedDocumentId]
    ON [dbo].[EventRelatedDocument]([RelatedDocumentId] ASC);

