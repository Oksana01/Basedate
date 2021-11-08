CREATE TRIGGER tginsertchild
 ON Child
 INSTEAD OF INSERT
 AS DECLARE
 @CFirstName VARCHAR(30),
 @ChildID INT,
 @CLastName VARCHAR(30),
 @Quantity INT,
 @CGroupID INT,
 @CBirthDate DATE,
 @CPhoneNumber VARCHAR(15) ;
SELECT @CFirstName = ins.FirstName FROM inserted ins;
SELECT @ChildID = ins.ID FROM inserted ins;
SELECT @CLastName = ins.LastName FROM inserted ins;
SELECT @CGroupID = ins.GroupID FROM inserted ins;
SELECT @CBirthDate = ins.BirthDate FROM inserted ins;
SELECT @CPhoneNumber = ins.PhoneNumber FROM inserted ins;
SELECT @Quantity = COUNT(*) FROM Child
WHERE GroupID = @CGroupID
IF @Quantity<19 
BEGIN
INSERT INTO Child (ID, FirstName, LastName, BirthDate, PhoneNumber, GroupID)
VALUES (@ChildID, @CFirstName, @CLastName, @CBirthDate, @CPhoneNumber, @CGroupID)
END;
ELSE 
BEGIN 
THROW 51000, 'CHECK CHILD', 1; 
END;

INSERT INTO Child
VALUES (75, 'Lisa', 'Ararat', '2017-09-09', '877-099-56-56', 3);
INSERT INTO Child
VALUES (76, 'Lena', 'Barna', '2017-07-08', '866-079-99-76', 3);

SELECT * FROM Child
WHERE GroupID=3;