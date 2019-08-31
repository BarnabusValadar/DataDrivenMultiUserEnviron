CREATE TABLE [MM].[Races] (
    [RaceID]          INT           IDENTITY (1, 1) NOT NULL,
    [RaceName]        VARCHAR (50)  NULL,
    [RaceDescription] VARCHAR (200) NULL,
    [StrBonus]        VARCHAR (50)  NULL,
    [ConBonus]        INT           NULL,
    [DexBonus]        INT           NULL,
    [IntBonus]        INT           NULL,
    [WisBonus]        INT           NULL,
    [ChaBonus]        INT           NULL
);

