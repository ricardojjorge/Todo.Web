CREATE TABLE [dbo].[OctopusServerNode] (
    [Id]                  NVARCHAR (250)     NOT NULL,
    [Name]                NVARCHAR (200)     NOT NULL,
    [LastSeen]            DATETIMEOFFSET (7) NOT NULL,
    [Rank]                NVARCHAR (50)      NOT NULL,
    [JSON]                NVARCHAR (MAX)     NOT NULL,
    [MaxConcurrentTasks]  INT                CONSTRAINT [DF_OctopusServerNode_MaxConTasks] DEFAULT ((5)) NOT NULL,
    [IsInMaintenanceMode] BIT                CONSTRAINT [DF_OctopusServerNode_IsMaintMode] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_OctopusServerNode_Id] PRIMARY KEY CLUSTERED ([Id] ASC)
);

