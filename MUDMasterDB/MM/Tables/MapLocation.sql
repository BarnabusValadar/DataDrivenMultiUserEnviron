CREATE TABLE [MM].[MapLocation] (
    [MapLocationID] INT           IDENTITY (1, 1) NOT NULL,
    [Name]          VARCHAR (50)  NULL,
    [Description]   VARCHAR (200) NULL,
    [Climate]       VARCHAR (50)  NULL,
    [GridX]         INT           NULL,
    [GridY]         INT           NULL,
    [ExitN]         BIT           NULL,
    [ExitE]         BIT           NULL,
    [ExitW]         BIT           NULL,
    [ExitS]         BIT           NULL
);

