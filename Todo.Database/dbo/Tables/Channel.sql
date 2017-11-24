CREATE TABLE [dbo].[Channel] (
    [Id]          NVARCHAR (50)  NOT NULL,
    [Name]        NVARCHAR (200) NOT NULL,
    [ProjectId]   NVARCHAR (50)  NOT NULL,
    [LifecycleId] NVARCHAR (50)  NULL,
    [JSON]        NVARCHAR (MAX) NOT NULL,
    [TenantTags]  NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Channel_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UQ_ChannelUniqueNamePerProject] UNIQUE NONCLUSTERED ([Name] ASC, [ProjectId] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_Channel_ProjectId]
    ON [dbo].[Channel]([ProjectId] ASC);

