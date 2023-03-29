create database a2
use a2

create TABLE PERSON
(
  Name VARCHAR(9),
  Address VARCHAR(9),
  SSN CHAR(9) NOT NULL,
  Phone NUMERIC(4),
  PRIMARY KEY(SSN)
);

insert into PERSON values
('vaneeza1', 'Islamabad', '61101', 1234);
insert into PERSON values
('vaneeza2', 'Lahore', '61102', 1233);
insert into PERSON values
('vaneeza3', 'Islamabad', '61103', 1224);
insert into PERSON values
('vaneeza4', 'Karachi', '61104', 1214);
insert into PERSON values
('vaneeza5', 'kashmir', '61105', 1134);
insert into PERSON values
('vaneeza6', 'Lahore', '61106', 1534);
insert into PERSON values
('vaneeza7', 'Quetta', '61107', 1634);
insert into PERSON values
('vaneeza8', 'Lahore', '61108', 1274);
insert into PERSON values
('vaneeza9', 'Karachi', '61109', 1284);
insert into PERSON values
('vaneeza10', 'Islamabad', '61110', 1294);
insert into PERSON values
('vaneeza11', 'Quetta', '61111', 2224);
insert into PERSON values
('vaneeza12', 'Peshawar', '61112', 2234);
insert into PERSON values
('minha1', 'Quetta', '61113', 2244);
insert into PERSON values
('minha2', 'Peshawar', '61114', 1235);
insert into PERSON values
('minha3', 'kashmir', '61115', 7244);
insert into PERSON values
('minha4', 'Islamabad', '61116', 8834);
insert into PERSON values
('minha5', 'Lahore', '61117', 1288);
insert into PERSON values
('minha6', 'Islamabad', '61118', 8934);
insert into PERSON values
('minha7', 'Karachi', '61119', 1894);
insert into PERSON values
('minha8', 'Lahore', '61120', 1298);


create TABLE CORPORATION
(
  Name VARCHAR(9),
  Address VARCHAR(9),
  Phone NUMERIC(4),
  PRIMARY KEY(Name)
);
 
insert into corporation values
('FUNAVRY', 'Islamabad', 6789);
insert into corporation values
('PIA', 'Islamabad', 6788);
insert into corporation values
('Aerospace', 'Karachi', 6781);
insert into corporation values
('NESCOM', 'Islamabad', 6782);
insert into corporation values
('FAST', 'Lahore', 6783);
insert into corporation values
('Flyaway', 'Quetta', 6784);
insert into corporation values
('Aeroknow', 'Karachi', 6785);
insert into corporation values
('PAF', 'Lahore', 6786);
insert into corporation values
('HBL', 'Karachi', 6787);
insert into corporation values
('Aerocut', 'Karachi', 6790);
insert into corporation values
('NUST', 'Lahore', 6791);
insert into corporation values
('Stars', 'Quetta', 6792);
insert into corporation values
('Alburhan', 'Kashmir', 6793);



create TABLE POWNER
(
  SSN CHAR(9),
  Name VARCHAR(9),
  Foreign KEY (SSN) References PERSON (SSN),
  Foreign key (Name) References CORPORATION (Name),
  OWNS INTEGER 
  FOREIGN KEY (OWNS) REFERENCES Airplane(Reg#)
);

--SELECT* FROM POWNER
insert into POWNER values
('61101', NULL, 2312);
insert into POWNER values
('61102', NULL, 2314);
insert into POWNER values
('61103', NULL, 4567);
insert into POWNER values
('61104', NULL, 6323);
insert into POWNER values
('61105', NULL, 7343);
insert into POWNER values
(NULL, 'FUNAVRY', 7355);
insert into POWNER values
(NULL, 'FAST', 7366);
insert into POWNER values
(NULL, 'FUNAVRY', 7367);
insert into POWNER values
(NULL, 'PIA', 7369);
insert into POWNER values
(NULL, 'PAF', 7453);
insert into POWNER values
(NULL, 'NUST', 7680);
insert into POWNER values
(NULL, 'NESCOM', 7689);
insert into POWNER values
(NULL, 'FAST', 7856);
insert into POWNER values
(NULL, 'PAF', 7890);
insert into POWNER values
(NULL, 'Alburhan', 8369);
insert into POWNER values
(NULL, 'Aerospace', 8533);
insert into POWNER values
(NULL, 'Aeroknow', 8564);
insert into POWNER values
(NULL, 'Flyaway', 9009);
insert into POWNER values
(NULL, 'HBL', 9099);
insert into POWNER values
(NULL, 'Aerocut', 9190);
insert into POWNER values
(NULL, 'Stars', 9856);

create TABLE OWNS
(
  Purchase_Date date,
  Own_SSN CHAR(9) ,
  Own_Name VARCHAR(9) ,
  Own_Reg# integer,
  Foreign Key (Own_Reg#) references Airplane(Reg#),
  Foreign KEY (Own_SSN) References PERSON (SSN),
  Foreign key (Own_Name) References CORPORATION (Name)
);

--alter table OWNS
--add Own_Reg# integer,
--Foreign Key (Own_Reg#) references Airplane(Reg#);

--SELECT* FROM OWNS
insert into OWNS values 
('27-FEB-2023','61101', NULL, 2312);
insert into OWNS values
('25-FEB-2023','61102', NULL, 2314);
insert into OWNS values
('12-FEB-2023','61103', NULL, 4567);
insert into OWNS values
('27-JAN-2023','61104', NULL, 6323);
insert into OWNS values
('26-FEB-2023','61105', NULL, 7343);
insert into OWNS values
('27-FEB-2023',NULL, 'FUNAVRY', 7355);
insert into OWNS values
('14-FEB-2023',NULL, 'FAST', 7366);
insert into OWNS values
('22-JAN-2023',NULL, 'FUNAVRY', 7367);
insert into OWNS values
('01-JAN-2023',NULL, 'PIA', 7369);
insert into OWNS values
('02-FEB-2023',NULL, 'PAF', 7453);
insert into OWNS values
('01-FEB-2023',NULL, 'NUST', 7680);
insert into OWNS values
('09-FEB-2023',NULL, 'NESCOM', 7689);
insert into OWNS values
('08-FEB-2023',NULL, 'FAST', 7856);
insert into OWNS values
('06-FEB-2023',NULL, 'PAF', 7890);
insert into OWNS values
('29-JAN-2023',NULL, 'Alburhan', 8369);
insert into OWNS values
('01-JAN-2023',NULL, 'Aerospace', 8533);
insert into OWNS values
('02-JAN-2023',NULL, 'Aeroknow', 8564);
insert into OWNS values
('27-DEC-2022',NULL, 'Flyaway', 9009);
insert into OWNS values
('26-DEC-2022',NULL, 'HBL', 9099);
insert into OWNS values
('25-DEC-2022',NULL, 'Aerocut', 9190);
insert into OWNS values
('12-DEC-2022',NULL, 'Stars', 9856);


--select* from POWNER
create TABLE Employee
(
   ESSN CHAR(9) NOT NULL primary key,
   Foreign KEY (ESSN) References PERSON (SSN),
   salary integer,
   --e_shift varchar(9)
   e_shift time
);

--alter table Employee
--alter column e_shift time
insert into Employee values
('61106', 45000, '13:13:13');
insert into Employee values
('61107', 48000, '06:00:00');
insert into Employee values
('61108', 35000, '23:13:00');
insert into Employee values
('61109', 65000, '23:10:00');
insert into Employee values
('61110', 75000, '22:13:13');
insert into Employee values
('61111', 15000, '22:20:10');
insert into Employee values
('61112', 56000, '07:00:00');
insert into Employee values
('61113', 43000, '09:20:30');

create TABLE Maintain
(
   Emp_SSN CHAR(9) NOT NULL,
   Foreign KEY (Emp_SSN) References Employee (ESSN),
   Mwork_code varchar(9),     -- Employee Work code
   Airplane_Reg integer, 
  foreign key (Airplane_Reg) references Airplane(Reg#)
);


select* from Maintain
--drop table Maintain
select* from PSERVICE
select* from Employee
select* from works_on
select* from of_type


insert into Maintain values ---
('61106','1237',7355);
insert into Maintain values ----
('61106','1003',9099);
--insert into Maintain values
--('61106','1234',7856);
--insert into Maintain values
--('61107','1234',2314);
insert into Maintain values ---
('61107','1002', 7343);
insert into Maintain values ---
('61108','1001',7890);
insert into Maintain values ----
('61109','1234',7369);
insert into Maintain values ----
('61109','1235',7366);
insert into Maintain values ---
('61110','1231',4567);
insert into Maintain values ---
('61110','1230',9009);
insert into Maintain values ---
('61111','1004',2312);
insert into Maintain values ---
('61111','1236',7367);
--insert into Maintain values
--('61112','1234',7680);
--insert into Maintain values
--('61112','1234',8564);
insert into Maintain values ---
('61112','1239',8369);
insert into Maintain values ---
('61113','1233',6323);
insert into Maintain values ---
('61113','1238',7453);


create Table Pilot
(
   Pilot_SSN CHAR(9) NOT NULL ,
   Foreign KEY (Pilot_SSN) References PERSON (SSN),
   Lic_num varchar(9) NOT NULL primary key,
   Restr  varchar(30)
);

--SELECT* FROM Pilot

insert into Pilot values
('61114', 3333, 'ANTONOV');
insert into Pilot values
('61115', 3334, 'ANTONOV3');
insert into Pilot values
('61116', 3335, 'ARMSTRONG');
insert into Pilot values
('61117', 3336, 'FORTRESS2');
insert into Pilot values
('61118', 3337, 'F16');
insert into Pilot values
('61119', 3338, 'EMBRAER');
insert into Pilot values
('61120', 3339, 'CRJ');


create Table Plane_Type
(
  Model varchar(9) NOT NULL primary key,
  PCAPACITY integer,
  weight integer,
  --of_type varchar(20)
);

--alter table Plane_Type
--drop column of_type ;

create Table works_on
(
   work_emp_SSN CHAR(9) NOT NULL ,
   Foreign KEY (work_emp_SSN) References Employee (ESSN),
    Plane_Model varchar(9) NOT NULL,
  Foreign KEY (Plane_Model) References Plane_Type (Model),
);

insert into works_on values
('61106', 'EMBRAER');
insert into works_on values
('61107', 'AIRBUS');
insert into works_on values
('61108', 'JETSTREAM');
insert into works_on values
('61109', 'JF17');
insert into works_on values
('61110', 'BOEING');
insert into works_on values
('61111', 'ANTONOV');
insert into works_on values
('61112', 'ARMSTRONG');
insert into works_on values
('61113', 'CRJ');
insert into works_on values
('61106', 'BEECHCRAF');
insert into works_on values
('61107', 'ANTONOV3');
insert into works_on values
('61108', 'BOEING');
insert into works_on values
('61109', 'F16');
insert into works_on values
('61110', 'FORTRESS2');
insert into works_on values
('61111', 'LOCKHEED');
insert into works_on values
('61112', 'TURBOPROP');
insert into works_on values
('61113', 'JUMBOJET');


create Table flies
(
   Pilot_Lic_num varchar(9) NOT NULL ,
   Foreign KEY ( Pilot_Lic_num) References Pilot (Lic_num),
    Plane_fly_Model varchar(9) NOT NULL,
  Foreign KEY (Plane_fly_Model) References Plane_Type (Model),
);

--select* from pilot

insert into flies values
('3333', 'EMBRAER');
insert into flies values
('3334', 'AIRBUS');
insert into flies values
('3335', 'JETSTREAM');
insert into flies values
('3336', 'JF17');
insert into flies values
('3337', 'BOEING');
insert into flies values
('3338', 'ANTONOV');
insert into flies values
('3339', 'ARMSTRONG');
insert into flies values
('3333', 'CRJ');
insert into flies values
('3334', 'BEECHCRAF');
insert into flies values
('3335', 'ANTONOV3');
insert into flies values
('3336', 'BOEING');
insert into flies values
('3337', 'F16');
insert into flies values
('3338', 'FORTRESS2');
insert into flies values
('3339', 'LOCKHEED');
insert into flies values
('3333', 'TURBOPROP');
insert into flies values
('3334', 'JUMBOJET');

create Table Airplane
(
  Reg# integer NOT NULL primary key
);

create Table Hangar
(
  HCAPACITY integer,
  Location varchar(30),
  Number integer NOT NULL Primary key
);

create Table of_type
(
  Planetype_Model varchar(9) NOT NULL,
  Foreign KEY (Planetype_Model) References Plane_Type (Model),
  Airplane_type_Reg# integer NOT NULL,
   Foreign KEY (Airplane_type_Reg#) References Airplane (Reg#),
);

create Table stored_in
(
  HNumber integer NOT NULL ,
  Foreign KEY (HNumber) References Hangar (Number),
  Airplane_Reg# integer NOT NULL,
   Foreign KEY (Airplane_Reg#) References Airplane (Reg#),
);
--drop table stored_in


create Table PSERVICE
(
  Hours integer,
  work_code varchar(9),
  Sdate date,
  plane_service INTEGER 
  FOREIGN KEY (plane_service) References Airplane(Reg#)
);


INSERT INTO Plane_Type VALUES
 ('ANTONOV', 200, 2000);
INSERT INTO Plane_Type VALUES
  ('AIRBUS', 300, 2710);
INSERT INTO Plane_Type VALUES
  ('BOEING', 500, 1020);
INSERT INTO Plane_Type VALUES
  ('CRJ', 400, 2045);
INSERT INTO Plane_Type VALUES
  ('ANTONOV3', 700, 3100);
INSERT INTO Plane_Type VALUES
  ('EMBRAER', 200, 4141);
INSERT INTO Plane_Type VALUES
  ('F16', 80, 9295);
INSERT INTO Plane_Type VALUES
  ('LOCKHEED', 150, 1111);
INSERT INTO Plane_Type VALUES
  ('JF17', 10, 4500);
INSERT INTO Plane_Type VALUES
  ('JUMBOJET', 13, 2710);
INSERT INTO Plane_Type VALUES
  ('ARMSTRONG', 170,3000);
INSERT INTO Plane_Type VALUES
  ('FORTRESS2', 110, 7100);
INSERT INTO Plane_Type VALUES
  ('BEECHCRAF', 900, 8900);
INSERT INTO Plane_Type VALUES
  ('JETSTREAM', 140, 2232);
INSERT INTO Plane_Type VALUES
  ('TURBOPROP', 150, 2896);


INSERT INTO of_type VALUES
 ('ANTONOV', 2312);
INSERT INTO of_type VALUES
  ('AIRBUS', 2314);
INSERT INTO of_type VALUES
  ('BOEING', 4567);
INSERT INTO of_type VALUES
  ('CRJ', 6323);
INSERT INTO of_type VALUES
  ('ANTONOV3', 7343);
INSERT INTO of_type VALUES
  ('EMBRAER', 7355);
INSERT INTO of_type VALUES
  ('F16', 7366);
INSERT INTO of_type VALUES
  ('LOCKHEED', 7367);
INSERT INTO of_type VALUES
  ('JF17', 7369);
INSERT INTO of_type VALUES
  ('JUMBOJET', 7453);
INSERT INTO of_type VALUES
  ('ARMSTRONG', 7680);
INSERT INTO of_type VALUES
  ('FORTRESS2', 7689);
INSERT INTO of_type VALUES
  ('BEECHCRAF', 7856);
INSERT INTO of_type VALUES
  ('JETSTREAM', 7890);
INSERT INTO of_type VALUES
  ('TURBOPROP', 8369);
INSERT INTO of_type VALUES
  ('TURBOPROP', 8533);

  INSERT INTO of_type VALUES
  ('ARMSTRONG', 8564);
INSERT INTO of_type VALUES
  ('FORTRESS2', 9009);
INSERT INTO of_type VALUES
  ('BEECHCRAF', 9099);
INSERT INTO of_type VALUES
  ('JETSTREAM', 9190);
INSERT INTO of_type VALUES
  ('F16', 9856);

select* from PSERVICE
select* from POWNER
SELECT* FROM Airplane
select* from stored_in
select* from of_type
select* from Hangar
select* from flies
select* from works_on
select* from Plane_Type
select* from Pilot
select* from Employee
select* from OWNS
select* from CORPORATION
select* from PERSON
select* from Maintain



INSERT INTO PSERVICE VALUES
(1, 1234, CONVERT(DATE, '17-DEC-1989'), 7369);
INSERT INTO PSERVICE VALUES
(11, 1235, CONVERT(DATE, '17-DEC-2022'), 7366);
INSERT INTO PSERVICE VALUES
(9, 1236, CONVERT(DATE, '27-MAR-1980'), 7367);
INSERT INTO PSERVICE VALUES
(4, 1237, CONVERT(DATE, '27-MAR-2023'), 7355);
INSERT INTO PSERVICE VALUES
(6, 1238, CONVERT(DATE, '17-FEB-2023'), 7453);
INSERT INTO PSERVICE VALUES
(7, 1239, CONVERT(DATE, '17-JAN-2023'), 8369);
INSERT INTO PSERVICE VALUES
(8, 1230, CONVERT(DATE, '07-FEB-2023'), 9009);
INSERT INTO PSERVICE VALUES
(10, 1233, CONVERT(DATE, '12-FEB-2021'), 6323);
INSERT INTO PSERVICE VALUES
(12, 1231, CONVERT(DATE, '11-MAR-2023'), 4567);
INSERT INTO PSERVICE VALUES
(1, 1001, CONVERT(DATE, '15-MAR-2023'), 7890);
INSERT INTO PSERVICE VALUES
(2, 1002, CONVERT(DATE, '17-MAR-2023'), 7343);
INSERT INTO PSERVICE VALUES
(3, 1003, CONVERT(DATE, '16-MAR-2023'), 9099);
INSERT INTO PSERVICE VALUES
(5, 1004, CONVERT(DATE, '24-MAR-2023'), 2312);

--values not used---
--INSERT INTO POWNER VALUES
--('1111', NULL, 2312);
--INSERT INTO POWNER VALUES
--('2111', NULL, 2314);
--INSERT INTO POWNER VALUES
--('3111', NULL, 4567);


insert into hangar values
(50, 'Islamabad', 1);
insert into hangar values
(150, 'Islamabad', 2);
insert into hangar values
(200, 'Lahore', 3);
insert into hangar values
(59, 'Lahore', 5);
insert into hangar values
(80, 'Karachi', 4);
insert into hangar values
(90, 'Karachi', 6);
insert into hangar values
(100, 'Peshawar', 7);
insert into hangar values
(120, 'Islamabad', 8);
insert into hangar values
(50, 'Lahore', 9);
insert into hangar values
(300, 'Quetta', 10);
insert into hangar values
(210, 'Quetta', 11);
insert into hangar values
(250, 'Karachi', 12);
insert into hangar values
(70, 'Peshawar', 13);
insert into hangar values
(110, 'Lahore', 14);
insert into hangar values
(180, 'Karachi', 15);


insert into stored_in values
  (1, 7369);
INSERT INTO stored_in VALUES
  (2, 7366);
INSERT INTO stored_in VALUES
  (3, 7367);
INSERT INTO stored_in VALUES
  (4, 7355);
INSERT INTO stored_in VALUES
  (5, 8369);
INSERT INTO stored_in VALUES
  (6, 7453);
INSERT INTO stored_in VALUES
  (7, 9009);
INSERT INTO stored_in VALUES
  (8, 6323);
INSERT INTO stored_in VALUES
  (9, 4567);
INSERT INTO stored_in VALUES
  (10, 7890);
INSERT INTO stored_in VALUES
  (11, 7343);
INSERT INTO stored_in VALUES
  (12, 9099);
INSERT INTO stored_in VALUES
  (13, 2312);
INSERT INTO stored_in VALUES
  (14, 7689);
INSERT INTO stored_in VALUES
  (15, 8564);
INSERT INTO stored_in VALUES
  (1, 7856);
INSERT INTO stored_in VALUES
  (2, 9190);
INSERT INTO stored_in VALUES
  (3, 2314);
INSERT INTO stored_in VALUES
  (4, 7680);
INSERT INTO stored_in VALUES
  (5, 8533);
INSERT INTO stored_in VALUES
  (6, 9856);



INSERT INTO Airplane VALUES
  (7369);
INSERT INTO Airplane VALUES
  (7366);
INSERT INTO Airplane VALUES
  (7367);
INSERT INTO Airplane VALUES
  (7355);
INSERT INTO Airplane VALUES
  (8369);
INSERT INTO Airplane VALUES
  (7453);
INSERT INTO Airplane VALUES
  (9009);
INSERT INTO Airplane VALUES
  (6323);
INSERT INTO Airplane VALUES
  (4567);
INSERT INTO Airplane VALUES
  (7890);
INSERT INTO Airplane VALUES
  (7343);
INSERT INTO Airplane VALUES
  (9099);
INSERT INTO Airplane VALUES
  (2312);
INSERT INTO Airplane VALUES
  (7689);
INSERT INTO Airplane VALUES
  (8564);
INSERT INTO Airplane VALUES
  (7856);
INSERT INTO Airplane VALUES
  (9190);
INSERT INTO Airplane VALUES
  (2314);
INSERT INTO Airplane VALUES
  (7680);
INSERT INTO Airplane VALUES
  (8533);
INSERT INTO Airplane VALUES
  (9856);

 
 ----QUERY 3 Write a SQL query to find the registration numbers of airplanes that have never undergone maintenance.----
 SELECT REG#
  FROM AIRPLANE where Reg# not in
 (SELECT REG#
  FROM AIRPLANE inner JOIN DBO.PSERVICE ON DBO. Airplane. Reg# = dbo. PSERVICE.plane_service);

  ---QUERY 4 Write a SQL query to find the names and addresses of corporations that own airplanes with a capacity greater than 200.---
  SELECT distinct POWNER.Name, CORPORATION.Address from POWNER INNER JOIN CORPORATION
  ON DBO.POWNER.Name=DBO.CORPORATION.NAME where POWNER.Name IN 
  (SELECT Name FROM POWNER WHERE OWNS in 
  (SELECT Airplane_type_Reg# from of_type inner join dbo.Plane_Type on dbo.of_type.Planetype_Model=dbo.Plane_Type.Model where PCAPACITY > 200));
  
  ---QUERY 5 Write a SQL query to find the average salary of employees who work the night shift (between 10 PM and 6 AM).
  select AVG(salary) as Averge_Salary from Employee WHERE Employee.salary in
  (Select salary from Employee where (e_shift > '22:00:00' AND e_shift<'23:59:59') or  e_shift  < '6:00:00')

  ---QUERY6 Write a SQL query to find the top 5 employees with the highest total number of maintenance hours worked.
  Select top 5 hours as Top_5_Hours_worked, Maintain.Emp_SSN
   from PSERVICE  inner join Maintain on
   PService.plane_service = Maintain.Airplane_Reg 
   order by hours desc

   --QUERY7 Write a SQL query to find the names and registration numbers of airplanes that have undergone maintenance in the past week.
   SELECT Airplane_type_Reg# As Reg#, Plane_Type.Model As Name from of_type inner join dbo.Plane_Type on dbo.of_type.Planetype_Model=dbo.Plane_Type.Model
   where Airplane_type_Reg# in (Select Reg# from Airplane inner join dbo.PSERVICE on dbo.Airplane.Reg#=dbo.PSERVICE.plane_service 
   where PSERVICE.Sdate < '27-MAR-2023' and PSERVICE.Sdate > '20-MAR-2023')

   --QUERY8 Write a SQL query to find the names and phone numbers of all owners who have purchased a plane in the past month.
   select PERSON.Name, PERSON.Phone from POWNER inner join dbo.PERSON on POWNER.SSN=PERSON.SSN 
   where POWNER.OWNS in
   (select  Own_Reg# from OWNS where OWNS.Purchase_Date > '01-FEB-2023' and OWNS.Purchase_Date<GETDATE())
   union 
   select POWNER.Name, CORPORATION.Phone from POWNER inner join dbo.CORPORATION on POWNER.Name=CORPORATION.Name 
   where POWNER.OWNS in
   (select  Own_Reg# from OWNS where OWNS.Purchase_Date > '01-FEB-2023' and OWNS.Purchase_Date<GETDATE());
  
  ---another approach for query 8 (just shows corporation name)
    --select distinct Name, Phone from CORPORATION,OWNS O  where O.Purchase_Date < GETDATE()


   --QUERY9 Write a SQL query to find the number of airplanes each pilot is authorized to fly.
    select count(Plane_fly_Model) As Planes_Authorized, Pilot_Lic_num 
	from flies
	group by Pilot_Lic_num
 
  --QUERY10 Write a SQL query to find the location and capacity of the hangar with the most available space.
  SELECT COUNT(HNumber) , count(Hangar.Number) from stored_in inner join Hangar on dbo.stored_in.HNumber= dbo.Hangar.Number 
  where HNumber=1

    Select Location, HCAPACITY from Hangar 
	where Hangar.HCAPACITY = (Select MAX(HCAPACITY) from Hangar)
  --alter table Hangar
  --drop column NumberOfPlanes;
  --alter table Hangar
  --drop column Hnum;
  select* from Hangar 
  --CREATE TABLE Pspace
  --(
  --NumberOfPlanes integer,
  --num integer,
  --capac integer
  --)
  --drop table Pspace
  --UNION

  --Insert into Pspace (NumberofPlanes, num)
  SELECT COUNT(Airplane_Reg#) as NumberOfPlanes, HNumber 
  FROM stored_in
  GROUP BY HNumber
  
  --Insert into Pspace (capac)
  --Select HCapacity from Hangar
  --Select Location, HCapacity, HCAPACITY - NumberOfPlanes as AvailableSpace from Hangar
  --ORDER BY COUNT(Airplane_Reg#) DESC;)
 
---QUERY11  Write a SQL query to find the number of planes owned by each corporation, sorted in
--descending order by number of planes.
   SELECT COUNT(Own_Reg#) as NumberOfPlanes, Own_Name as Corporation
   FROM OWNS
   where Own_Name is not Null
   GROUP BY Own_Name 
   order by NumberOfPlanes desc

---QUERY12 Write a SQL query to find the average number of maintenance hours per plane, broken
--down by plane type. 
   SELECT AVG(Hours) as Avg_Maintainence_hrs, plane_service as PlaneREG#, of_type.Planetype_Model FROM PSERVICE inner join of_type on PSERVICE.plane_service=of_type.Airplane_type_Reg#
   GROUP BY plane_service, Planetype_Model 
   
--QUERY13 Write a SQL query to find the names of owners who have purchased a plane that
--requires maintenance work from an employee who is not qualified to work on that type of plane.

select Own_Name from Maintain m
inner join of_type o on m.Airplane_Reg = o.Airplane_type_Reg#
inner join works_on w on w.Plane_Model != o.Planetype_Model
inner join OWNS ow on ow.Own_Reg# = o.Airplane_type_Reg#
where m.Emp_SSN = w.work_emp_SSN AND o.Planetype_Model
!= w.Plane_Model


---QUERY14. Write a SQL query to find the names and phone numbers of owners who have 
--purchased a plane from a corporation that has a hangar in the same location as the owner.
  
  --approach1
  select POWNER.SSN, PERSON.Name, Person.Phone  from POWNER inner join PERSON on POWNER.SSN=PERSON.SSN where PERSON.Address in
  (Select Hangar.Location from Hangar inner join CORPORATION on CORPORATION.Address=Hangar.Location Where CORPORATION.Address=Hangar.Location)

  --approach2
  select POWNER.SSN, PERSON.Name, Person.Phone  from POWNER inner join PERSON on POWNER.SSN=PERSON.SSN where PERSON.Address in
  (select Address FROM CORPORATION INNER JOIN OWNS on CORPORATION.Name=OWNS.Own_Name WHERE OWNS.Own_Reg# in 
  (select Reg# from Airplane inner join stored_in on Airplane.Reg#=stored_in.Airplane_Reg# where stored_in.HNumber in 
  (Select Hangar.Number from Hangar inner join PERSON on PERSON.Address=Hangar.Location where PERSON.Address=Hangar.Location)))

  ---approach3
  select PERSON.Name, Person.Phone  from POWNER inner join PERSON on POWNER.SSN=PERSON.SSN 
  union
  (select Name, Phone FROM CORPORATION INNER JOIN OWNS on CORPORATION.Name=OWNS.Own_Name WHERE OWNS.Own_Reg# in 
  (select Reg# from Airplane inner join stored_in on Airplane.Reg#=stored_in.Airplane_Reg# where stored_in.HNumber in 
  (Select Hangar.Number from Hangar inner join PERSON on PERSON.Address=Hangar.Location where PERSON.Address=Hangar.Location)))

  --QUERY15 Write a SQL query to find the names of pilots who are qualified to fly a plane that is currently undergoing maintenance.
   select Name from PERSON p
   inner join Pilot pi on
   p.SSN = pi.Pilot_SSN inner
   join flies f on pi.Lic_num = 
   f.Pilot_Lic_num inner join 
   of_type o on f.Plane_fly_Model =
   o.Planetype_Model inner join PService s
   on o.Airplane_type_Reg# = s.plane_service
   where s.Sdate = GETDATE();

   --Query # 16 Write a SQL query to find the names of employees who have worked on planes owned
-- by a particular corporation, sorted by the total number of maintenance hours worked.
 select Name, s.Hours as "Total_Hours_worked" from PERSON p 
 inner join Maintain m on 
 p.SSN = m.Emp_SSN inner join 
 PService s on m.Airplane_Reg = s.plane_service
 inner join OWNS o on 
 s.plane_service = o.Own_Reg# 
 order by s.Hours desc

 
  --Query17
select Own_Reg# as Reg# from OWNS
where Own_Name is NULL 
union
(select Airplane_Reg as Reg# from Maintain m inner join
Employee e on e.ESSN = m.Emp_SSN
where e_shift < '18:00:00')

---QUERY18 Write a SQL query to find the names and addresses of owners who have purchased a
-- plane from a corporation that has also purchased a plane of the same type in the past month.

select POWNER.Name, Address from POWNER inner join PERSON on PERSON.Name=POWNER.Name where POWNER.Name in
(Select POWNER.Name from POWNER inner join OWNS on OWNS.Own_Name=POWNER.Name where OWNS.Purchase_Date in 
(Select Purchase_Date from POWNER where Purchase_Date<GETDATE() and Purchase_Date>'01-FEB-2023')
)
Select POWNER.Name from POWNER inner join OWNS on POWNER.OWNS=OWNS.Own_Reg#
--where OWNS.Own_Reg# in ( Select Airplane_type_Reg# from of_type inner join pl

select* from OWNS
select* from POWNER

--Query19
select count(Airplane_Reg#) As Total_planes,HNumber
from stored_in
group by HNumber

--Query20
select count(Airplane_type_Reg#) As Total_planes,Planetype_Model
from of_type
group by Planetype_Model

--Query21
select count(work_code)As No_of_Services, plane_service as Plane_Reg# 
from PSERVICE 
group by plane_service

--Query22
select AVG(salary) as Avg_Salaray,e_shift
from Employee 
group by e_shift

-- Query23
select count(Own_Reg#) As No_of_Planes, Own_SSN, Own_Name 
from OWNS
group by Own_Name,Own_SSN

--QUERY25 USEFUL SELF MADE QUERIES

--query1 to count number of planeTYPES in each Hangar
select count(Planetype_Model) As No_of_Models, HNumber from of_type inner join stored_in on of_type.Airplane_type_Reg#=stored_in.Airplane_Reg#
group by HNumber

--query2 to find the plane registration number a pilot is not allowed to fly
select Pilot_SSN, Airplane_type_Reg# as Cannot_fly_Plane_Reg# from Pilot inner join of_type on of_type.Planetype_Model=Pilot.Restr

--query3 to find the plane Registration number a pilot is allowed to fly
select Pilot_Lic_num, Airplane_type_Reg# as Can_fly_Plane_Reg# from flies inner join of_type on of_type.Planetype_Model=flies.Plane_fly_Model

--query4 to find Pilots who live in same location where their is hangar of the plane they are authorized to fly
 
select Pilot_SSN from Pilot inner join PERSON on PERSON.SSN = Pilot_SSN where Pilot.Lic_num in 
(select Pilot_Lic_num from flies inner join of_type on of_type.Planetype_Model=flies.Plane_fly_Model where of_type.Airplane_type_Reg# in
(select Airplane_Reg# from stored_in where HNumber in (Select HNumber from Hangar inner join PERSON on PERSON.Address= Hangar.Location)))

select* from stored_in
select* from of_type
select* from Pilot
select* from flies
select* from Hangar
select * from PERSON
select* from stored_in