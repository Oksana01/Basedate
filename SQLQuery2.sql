alter table Groups
drop constraint fked;
alter table Groups
drop column EducatorID;
alter table Educators 
add GroupID int;
alter table Educators
add constraint fkgroupid foreign key(GroupID)
references Groups(ID);
create table MusicTeacher (ID int primary key,
                           Name varchar(10),
						   Lastname varchar(10),
						   PhoneNumber int);
alter table Groups 
add MusicID int; 
alter table Groups 
add constraint fkmusic foreign key(MusicID)
references MusicTeacher(ID);
create table ExtraGroup (ID int primary key,
                         Name varchar(10),
						 Teacher varchar(30));
create table ExtraDetailes (ChildID int,
                            ExtraID int);
alter table ExtraDetailes 
                         add constraint fkchild foreign key(ChildID)
                         references Child(ID);
alter table ExtraDetailes 
                        add constraint fkextra foreign key(ExtraID)
                         references ExtraGroup(ID); 