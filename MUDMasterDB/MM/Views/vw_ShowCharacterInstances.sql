








/****** Script for SelectTopNRows command from SSMS  ******/
--View all characters on map, location details and 
CREATE VIEW [MM].[vw_ShowCharacterInstances]
AS
SELECT 
C.CharacterName
,Cl.ClassName
,Ra.RaceName
,C.Level
,Al.AlignmentName
,We.WeaponName
,Ar.ArmourName
,i.HP_current
,St.StatusName
,C.Str
,C.Int
,C.Wis
,C.Dex
,C.Con
,C.Cha
,m.MapLocationID
,m.Climate
,m.Description
,m.GridX
,m.GridY
,m.ExitN
,m.ExitE
,m.ExitW
,m.ExitS
,mi.Name as 'Monster Present at Grid'
  FROM [MUDMaster].[MM].[CharacterInstance] i
  INNER JOIN
  MM.Characters C on c.CharacterID = i.CharacterID
  INNER JOIN
  MM.MapLocation m on m.MapLocationID = i.MapLocationID
  INNER JOIN
  MM.Classes Cl on Cl.ClassID = c.CharacterClassID
  INNER JOIN
  MM.Races Ra on Ra.RaceID = c.CharacterRaceID
  INNER JOIN
  MM.Status St on St.StatusID = i.StatusID
  INNER JOIN MM.Alignment Al on Al.AlignmentID = c.CharacterAlignmentID
  INNER JOIN MM.Weapons We on We.WeaponID = i.WeaponID
  INNER JOIN MM.Armour Ar on Ar.ArmourID = i.ArmourID
  LEFT JOIN 
  MM.MonsterInstance Mi on Mi.GridX = m.GridX and Mi.GridY = m.GridY