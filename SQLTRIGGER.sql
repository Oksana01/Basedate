 CREATE TRIGGER tginsert
 ON Child
 FOR INSERT
 AS 
    UPDATE Child
    SET FirstName = LTRIM (RTRIM(inserted.FirstName)),
     LastName = LTRIM (RTRIM(inserted.LastName))
 FROM Child
 JOIN inserted ON Child.ID = inserted.ID
 WHERE Child.ID = inserted.ID;
   





INSERT INTO Child
VALUES (74, '     Oksana   ', '   Van  ', '2018-12-14', '777-099-08-08', 2);

SELECT * FROM Child
WHERE GroupID = 2;
 