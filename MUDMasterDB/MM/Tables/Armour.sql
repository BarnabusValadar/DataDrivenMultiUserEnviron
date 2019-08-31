CREATE TABLE [MM].[Armour] (
    [ArmourID]             INT          IDENTITY (1, 1) NOT NULL,
    [ArmourName]           VARCHAR (50) NULL,
    [ArmourType]           VARCHAR (50) NULL,
    [ArmourStealth]        VARCHAR (50) NULL,
    [ArmourWeight_Pounds]  INT          NULL,
    [ArmourClassValue]     INT          NULL,
    [ArmourMaxDexModifier] INT          NULL,
    [ArmourCostGP]         INT          NULL,
    [ArmourStrengthMin]    INT          NULL,
    [Description]          VARCHAR (50) NULL
);



