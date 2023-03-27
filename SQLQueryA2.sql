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
create TABLE CORPORATION
(
  Name VARCHAR(9),
  Address VARCHAR(9),
  Phone NUMERIC(4),
  PRIMARY KEY(Name)
);
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
   e_shift varchar(9)
);
create Table Pilot
(
   Pilot_SSN CHAR(9) NOT NULL ,
   Foreign KEY (Pilot_SSN) References PERSON (SSN),
   Lic_num varchar(9) NOT NULL primary key,
   Restr  varchar(30)
);
SELECT* FROM Pilot


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
create Table flies
(
   Pilot_Lic_num varchar(9) NOT NULL ,
   Foreign KEY ( Pilot_Lic_num) References Pilot (Lic_num),
    Plane_fly_Model varchar(9) NOT NULL,
  Foreign KEY (Plane_fly_Model) References Plane_Type (Model),
);
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
  Foreign KEY (HNumber) References Hanger (Number),
  Airplane_Reg# integer NOT NULL,
   Foreign KEY (Airplane_Reg#) References Airplane (Reg#),
);
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
select* from Hanger
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

 
 ----QUERY 1 Write a SQL query to find the registration numbers of airplanes that have never undergone maintenance.----
 SELECT REG#
  FROM AIRPLANE where Reg# not in
 (SELECT REG#
  FROM AIRPLANE inner JOIN DBO.PSERVICE ON DBO. Airplane. Reg# = dbo. PSERVICE.plane_service);

  ---QUERY 2 Write a SQL query to find the names and addresses of corporations that own airplanes with a capacity greater than 200.---
  SELECT POWNER.Name, CORPORATION.Address from POWNER INNER JOIN CORPORATION
  ON DBO.POWNER.Name=DBO.CORPORATION.NAME IN 
  (SELECT OWNS FROM POWNER WHERE OWNS in 
  (SELECT Airplane_type_Reg# from of_type inner join dbo.Plane_Type on dbo.of_type.Planetype_Model=dbo.Plane_Type.Model where PCAPACITY > 200));