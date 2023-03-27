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

SELECT* FROM POWNER
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
  Foreign KEY (Own_SSN) References PERSON (SSN),
  Foreign key (Own_Name) References CORPORATION (Name)
);

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


create Table Pilot
(
   Pilot_SSN CHAR(9) NOT NULL ,
   Foreign KEY (Pilot_SSN) References PERSON (SSN),
   Lic_num varchar(9) NOT NULL primary key,
   Restr  varchar(30)
);
SELECT* FROM Pilot
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

alter table Plane_Type
drop column of_type ;

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
select* from pilot
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


INSERT INTO POWNER VALUES
('1111', NULL, 2312);
INSERT INTO POWNER VALUES
('2111', NULL, 2314);
INSERT INTO POWNER VALUES
('3111', NULL, 4567);


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
  Select hours as Top_5_Hours_worked, Maintain.Emp_SSN
   from PSERVICE  inner join Maintain on
   PService.plane_service = Maintain.Airplane_Reg 
   order by hours desc

   select* from PSERVICE