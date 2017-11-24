CREATE TABLE [dbo].[ServerTask] (
    [Id]                      NVARCHAR (50)      NOT NULL,
    [Name]                    NVARCHAR (50)      NOT NULL,
    [Description]             NVARCHAR (MAX)     NOT NULL,
    [QueueTime]               DATETIMEOFFSET (7) NOT NULL,
    [StartTime]               DATETIMEOFFSET (7) NULL,
    [CompletedTime]           DATETIMEOFFSET (7) NULL,
    [ErrorMessage]            NVARCHAR (MAX)     NULL,
    [ConcurrencyTag]          NVARCHAR (100)     NULL,
    [State]                   NVARCHAR (50)      NOT NULL,
    [HasPendingInterruptions] BIT                NOT NULL,
    [HasWarningsOrErrors]     BIT                NOT NULL,
    [ServerNodeId]            NVARCHAR (250)     NULL,
    [ProjectId]               NVARCHAR (50)      NULL,
    [EnvironmentId]           NVARCHAR (50)      NULL,
    [TenantId]                NVARCHAR (50)      NULL,
    [DurationSeconds]         INT                NOT NULL,
    [JSON]                    NVARCHAR (MAX)     NOT NULL,
    CONSTRAINT [PK_ServerTask_Id] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_ServerTask_Common]
    ON [dbo].[ServerTask]([State] ASC, [Name] ASC, [ProjectId] ASC, [EnvironmentId] ASC, [TenantId] ASC, [ServerNodeId] ASC)
    INCLUDE([Description], [QueueTime], [StartTime], [CompletedTime], [ErrorMessage], [ConcurrencyTag], [HasPendingInterruptions], [HasWarningsOrErrors], [DurationSeconds], [JSON]);


GO
CREATE NONCLUSTERED INDEX [IX_ServerTask_TaskQueue_PopTask]
    ON [dbo].[ServerTask]([QueueTime] ASC, [State] ASC, [ConcurrencyTag] ASC, [HasPendingInterruptions] ASC, [ServerNodeId] ASC)
    INCLUDE([Name], [Description], [StartTime], [CompletedTime], [ErrorMessage], [HasWarningsOrErrors], [ProjectId], [EnvironmentId], [TenantId], [DurationSeconds], [JSON]);


GO
CREATE NONCLUSTERED INDEX [IX_ServerTask_TaskQueue_GetActiveConcurrencyTags]
    ON [dbo].[ServerTask]([State] ASC, [ConcurrencyTag] ASC);

