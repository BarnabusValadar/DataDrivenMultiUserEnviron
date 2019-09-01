-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE Dev_AttackandDamageRoll
	AS
BEGIN
DECLARE @AttackRollNumber INT;
DECLARE @AttackBonus INT = 0;
DECLARE @Count INT = 1;
DECLARE @Dice INT = 1;
DECLARE @WeaponDice INT = 10;
DECLARE @DamageBonus INT = 0;
DECLARE @DamageRollNumber INT;
DECLARE @OpponentAC INT = 15;
DECLARE @OpponentHP INT = 10;

WHILE @Count <= @Dice
BEGIN
SET @AttackRollNumber = ROUND(RAND(CONVERT(VARBINARY,NEWID()))*20,0,1)+1;
print @AttackRollNumber;
IF @AttackRollNumber = 20
BEGIN
print 'Critical Hit!';
SET @DamageRollNumber = (ROUND(RAND(CONVERT(VARBINARY,NEWID()))*@WeaponDice,0,1)+1)*2;
print 'You do '+CONVERT(VARCHAR(2),@DamageRollNumber + @DamageBonus)+' HP damage.';
END;
IF @AttackRollNumber <> 20 AND @AttackRollNumber + @AttackBonus >= @OpponentAC
--apply damage
BEGIN
print 'Hit!';
SET @DamageRollNumber = ROUND(RAND(CONVERT(VARBINARY,NEWID()))*@WeaponDice,0,1)+1;
print 'You do '+CONVERT(VARCHAR(2),@DamageRollNumber + @DamageBonus)+' HP damage.'
END;
IF @AttackRollNumber <> 20 AND @AttackRollNumber + @AttackBonus < @OpponentAC
BEGIN
print 'Miss!'
END;
SET @Count += 1;
END;
END