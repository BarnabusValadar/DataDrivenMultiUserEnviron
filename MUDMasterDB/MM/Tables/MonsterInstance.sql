CREATE TABLE [MM].[MonsterInstance] (
    [MonsterInstanceID] INT           IDENTITY (1, 1) NOT NULL,
    [Name]              VARCHAR (50)  NOT NULL,
    [Description]       VARCHAR (200) NULL,
    [Climate]           VARCHAR (50)  NULL,
    [GridX]             INT           NOT NULL,
    [GridY]             INT           NOT NULL,
    [CurrentHP]         INT           NOT NULL,
    [StatusID]          INT           NOT NULL,
    [TreasureID]        INT           NULL
);

