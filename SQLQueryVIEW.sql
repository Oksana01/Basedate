CREATE VIEW List AS
SELECT FirstName, Child.LastName, GroupName, Educators.Lastname as Educator
FROM Child LEFT JOIN Groups 
ON Child.GroupID = Groups.ID
LEFT JOIN Educators 
ON Groups.ID = Educators.GroupID
WHERE EducatorLevel = 'high';
  
  SELECT * FROM List;
