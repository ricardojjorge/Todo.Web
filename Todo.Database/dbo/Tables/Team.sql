CREATE TABLE [dbo].[Team] (
    [Id]              NVARCHAR (50)  NOT NULL,
    [Name]            NVARCHAR (200) NOT NULL,
    [MemberUserIds]   NVARCHAR (MAX) NOT NULL,
    [ProjectIds]      NVARCHAR (MAX) NOT NULL,
    [EnvironmentIds]  NVARCHAR (MAX) NOT NULL,
    [JSON]            NVARCHAR (MAX) NOT NULL,
    [TenantIds]       NVARCHAR (MAX) NULL,
    [TenantTags]      NVARCHAR (MAX) NULL,
    [ProjectGroupIds] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Team_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UQ_TeamNameUnique] UNIQUE NONCLUSTERED ([Name] ASC)
);

