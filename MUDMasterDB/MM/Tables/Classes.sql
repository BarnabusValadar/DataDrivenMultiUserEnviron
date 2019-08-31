CREATE TABLE [MM].[Classes] (
    [ClassID]          INT           IDENTITY (1, 1) NOT NULL,
    [ClassName]        VARCHAR (50)  NULL,
    [ClassDescription] VARCHAR (200) NULL,
    [Weapons allowed]  VARCHAR (50)  NULL,
    [Armour allowed]   VARCHAR (50)  NULL,
    [Wizard Spells]    VARCHAR (50)  NULL,
    [Cleric Spells]    VARCHAR (50)  NULL,
    [Druid Spells]     VARCHAR (50)  NULL
);

