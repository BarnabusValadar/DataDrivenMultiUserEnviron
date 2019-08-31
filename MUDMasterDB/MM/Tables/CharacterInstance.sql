CREATE TABLE [MM].[CharacterInstance] (
    [CharacterInstanceID] INT          IDENTITY (1, 1) NOT NULL,
    [CharacterID]         INT          NULL,
    [HP_current]          INT          NULL,
    [MapLocationID]       INT          NULL,
    [StatusID]            INT          NULL,
    [Descriptor]          VARCHAR (50) NULL
);

