﻿CREATE TABLE [dbo].[UserRole] (
    [Id]   NVARCHAR (50)  NOT NULL,
    [Name] NVARCHAR (200) NOT NULL,
    [JSON] NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_UserRole_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UQ_UserRoleNameUnique] UNIQUE NONCLUSTERED ([Name] ASC)
);

