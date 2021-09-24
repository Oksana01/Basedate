create DataBase Kindergarten
create table Child (ID int primary key,
                    FirstName varchar(30),
					LastName varchar(30),
					BirthDate date,
					PhoneNumber int,
					GroupID int);
create table Groups (ID int primary key,
                     GroupName varchar(10));
 alter table Child 
add GroupID int; 
alter table Child
add constraint fkgroup foreign key(GroupID)
references Groups(ID);
