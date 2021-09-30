insert into Groups (ID, GroupName)
values (1, 'Sonechko'),
(2, 'Metelyk'),
(3, 'Kvitochka'),
(4, 'Kapelka'),
(5, 'Rosynka');
insert into Child(ID, FirstName, LastName, BirthDate, ParentsPhoneNumber, GroupID)
values (1, 'Petro', 'Ivanenko', '2017/01/12', 0780659076, 3),
(2, 'Anna', 'Kozlova', '2019/05/09', 0970367578, 1),
(3, 'Yulia', 'Potapenko', '2017/08/09', 0970860809,3),
(4, 'Ivan', 'Petrenko', '2018/11/11', 0780645676, 2),
(5, 'Mariya', 'Denysova', '2018/05/10', 0970367578, 2),
(6, 'Mark', 'Myhailiv', '2017/10/02', 0970860809,4),
(7, 'Lilianna', 'Kulkova', '2016/12/01', 0678954656, 5),
(8, 'Inna', 'Shal', '2019/07/10', 0887744331, 1),
(9, 'Ivan', 'Batko', '2016/05/05', 0978759999,5),
(10, 'Andriy', 'Zagagulka', '2019/11/11', 0987556767, 1),
(11, 'Valentyna', 'Andriyovska', '2017/05/10', 0734445588, 3),
(12, 'Vladyslav', 'Lubiy', '2017/10/02', 0634556789,4)