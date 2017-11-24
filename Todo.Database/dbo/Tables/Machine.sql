CREATE TABLE [dbo].[Machine] (
    [Id]              NVARCHAR (50)  NOT NULL,
    [Name]            NVARCHAR (200) NOT NULL,
    [IsDisabled]      BIT            NOT NULL,
    [Roles]           NVARCHAR (MAX) NOT NULL,
    [EnvironmentIds]  NVARCHAR (MAX) NOT NULL,
    [JSON]            NVARCHAR (MAX) NOT NULL,
    [MachinePolicyId] NVARCHAR (50)  NULL,
    [TenantIds]       NVARCHAR (MAX) NULL,
    [TenantTags]      NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Machine_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UQ_MachineNameUnique] UNIQUE NONCLUSTERED ([Name] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_Machine_MachinePolicy]
    ON [dbo].[Machine]([MachinePolicyId] ASC);

