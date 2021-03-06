﻿CREATE TABLE [dbo].[Lifecycle] (
    [Id]   NVARCHAR (50)  NOT NULL,
    [Name] NVARCHAR (200) NOT NULL,
    [JSON] NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Lifecycle_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UQ_LifecycleNameUnique] UNIQUE NONCLUSTERED ([Name] ASC)
);

