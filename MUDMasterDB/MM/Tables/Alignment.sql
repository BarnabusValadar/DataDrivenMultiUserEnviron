CREATE TABLE [MM].[Alignment] (
    [AlignmentID]          INT          IDENTITY (1, 1) NOT NULL,
    [AlignmentName]        VARCHAR (50) NULL,
    [AlignmentDescription] VARCHAR (50) NULL,
    [Good]                 BIT          NULL,
    [Evil]                 BIT          NULL,
    [Neutral]              BIT          NULL,
    [Lawful]               BIT          NULL,
    [Chaotic]              BIT          NULL
);

