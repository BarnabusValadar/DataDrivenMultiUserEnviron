CREATE TABLE [MM].[Characters] (
    [CharacterID]          INT           IDENTITY (1, 1) NOT NULL,
    [PlayerID]             INT           NULL,
    [CharacterRaceID]      INT           NULL,
    [CharacterClassID]     INT           NULL,
    [CharacterAlignmentID] INT           NULL,
    [CharacterName]        VARCHAR (50)  NULL,
    [CharacterDescription] VARCHAR (100) NULL,
    [Level]                INT           NULL,
    [XP]                   INT           NULL,
    [HP Max]               INT           NULL,
    [AC Base]              INT           NULL,
    [Str]                  INT           NULL,
    [Int]                  INT           NULL,
    [Dex]                  INT           NULL,
    [Wis]                  INT           NULL,
    [Con]                  INT           NULL,
    [Cha]                  INT           NULL
);

