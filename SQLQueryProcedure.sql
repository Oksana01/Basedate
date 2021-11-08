CREATE PROCEDURE spAvgRateByGroups
	@Group VARCHAR(30), 
	@AvgRate NUMERIC(10, 5) OUTPUT
AS
SELECT @AvgRate = AVG(Educators.Rate)
FROM Educators
JOIN Groups
ON GroupID = Groups.ID
WHERE Groups.GroupName = @Group









DECLARE @AvgRate NUMERIC(10, 5) 
EXEC spAvgRateByGroups 'Metelyk', 
	@AvgRate OUTPUT 
SELECT @AvgRate;
