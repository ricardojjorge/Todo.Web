﻿CREATE TABLE [dbo].[Mutex] (
    [Id]   NVARCHAR (450) NOT NULL,
    [JSON] NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Mutex_Id] PRIMARY KEY CLUSTERED ([Id] ASC)
);

