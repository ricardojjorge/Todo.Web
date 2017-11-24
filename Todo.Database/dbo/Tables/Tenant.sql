CREATE TABLE [dbo].[Tenant] (
    [Id]         NVARCHAR (50)  NOT NULL,
    [Name]       NVARCHAR (200) NOT NULL,
    [ProjectIds] NVARCHAR (MAX) NOT NULL,
    [JSON]       NVARCHAR (MAX) NOT NULL,
    [TenantTags] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Tenant_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UQ_TenantName] UNIQUE NONCLUSTERED ([Name] ASC)
);

