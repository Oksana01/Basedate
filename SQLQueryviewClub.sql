CREATE VIEW Club AS
SELECT Child.FirstName, Child.LastName, ArtClub.Name
FROM Child  JOIN ClubDetailes
ON Child.ID = ChildID
 JOIN ArtClub 
ON ArtID = ArtClub.ID
GROUP BY ArtClub.Name, Child.FirstName, Child.LastName;


SELECT * FROM Club;

