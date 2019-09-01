



/****** Script for SelectTopNRows command from SSMS  ******/
--View all monsters on map, location details and 
CREATE VIEW [MM].[vw_ShowMonsterInstances]
AS
SELECT
i.Name as 'MonsterInstanceName'
,mo.Name as 'MonsterType'
,mo.ALIGNMENT
,mo.Size
,mo.AC
,i.CurrentHP
,St.StatusName
,mo.[Attack 1 damage]
,m.MapLocationID
,m.Climate
,m.Description
,m.GridX
,m.GridY
,m.ExitN
,m.ExitE
,m.ExitW
,m.ExitS

FROM [MM].[MonsterInstance] i
  INNER JOIN
  MM.Monsters mo on mo.MonsterID = i.MonsterID
  INNER JOIN
  MM.MapLocation m on m.MapLocationID = i.MapLocationID
  INNER JOIN
  MM.Status St on St.StatusID = i.StatusID