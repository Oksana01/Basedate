CREATE TABLE Child (ID INT PRIMARY KEY,
                    FirstName VARCHAR(30) NOT NULL,
					LastName VARCHAR(30) NOT NULL,
					BirthDate DATE NOT NULL,
					PhoneNumber VARCHAR(15),
					GroupID INT NOT NULL,
					Gender VARCHAR(10),
					EnterAge int)
                     tablespace Oksana;
CREATE TABLE Groups (ID INT PRIMARY KEY,
                     GroupName VARCHAR(10) NOT NULL,
					 GroupType VARCHAR(10) NOT NULL,
					 MusicID INT)
                     tablespace Oksana ;
CREATE TABLE Educators( ID INT PRIMARY KEY,
                        Name VARCHAR(10) NOT NULL,
						Lastname VARCHAR(10) NOT NULL,
						PhoneNumber INT,
						GroupID INT,
						EducatorLevel VARCHAR(10),
						Rate INT)
                         tablespace Oksana;

ALTER TABLE Educators
ADD CONSTRAINT fkgroupid FOREIGN KEY(GroupID)
REFERENCES Groups(ID);
CREATE TABLE MusicTeacher (ID INT PRIMARY KEY,
                           Name VARCHAR(10) NOT NULL,
						   Lastname VARCHAR(10) NOT NULL,
						   PhoneNumber VARCHAR(10))
                            tablespace Oksana;
ALTER TABLE Groups 
ADD CONSTRAINT fkmusic FOREIGN KEY(MusicID)
REFERENCES MusicTeacher(ID);
CREATE TABLE ArtClub (ID INT PRIMARY KEY,
                      Name VARCHAR(10) NOT NULL,
					  Teacher VARCHAR(30) NOT NULL)
                      tablespace Oksana ;
CREATE TABLE ClubDetailes (ChildID INT,
                           ArtID INT)
                            tablespace Oksana;
ALTER TABLE ClubDetailes 
ADD CONSTRAINT fkchild FOREIGN KEY(ChildID)
REFERENCES Child(ID);
ALTER TABLE ClubDetailes 
ADD CONSTRAINT fkart FOREIGN KEY(ArtID)
REFERENCES ArtClub(ID); 
ALTER TABLE Child
ADD CONSTRAINT fkgroup FOREIGN KEY(GroupID)
REFERENCES Groups(ID);

ALTER TABLE GroupsADD UNIQUE (GroupName);

CREATE TABLE OL_ChildHistory (ID INT generated by default as identity PRIMARY KEY,
                           ChildID INT,
						   EventName VARCHAR(15),
						   EventDate DATE,
						   GroupIDto INT,
						   GroupIDfrom INT) 
                           tablespace Oksana ;
ALTER TABLE OL_ChildHistory 
ADD CONSTRAINT fkhistory FOREIGN KEY(ChildID)
REFERENCES OL_Child(ID);
CREATE TABLE OL_Statistic (ID INT generated by default as identity PRIMARY KEY,
                        StatisticYear INT,
						EnterAge INT,
						Gender VARCHAR(10),
						EventStatus VARCHAR(15))
                        tablespace Oksana;