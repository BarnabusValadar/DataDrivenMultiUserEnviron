CREATE TABLE [MM].[MonsterInstance] (
    [MonsterInstanceID] INT           IDENTITY (1, 1) NOT NULL,
    [MonsterID]         INT           NOT NULL,
    [MapLocationID]     INT           NOT NULL,
    [Name]              VARCHAR (50)  NOT NULL,
    [Description]       VARCHAR (200) NULL,
    [CurrentHP]         INT           NOT NULL,
    [StatusID]          INT           NOT NULL,
    [TreasureID]        INT           NULL
);



