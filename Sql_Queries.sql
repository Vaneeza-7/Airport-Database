create database assignment2;
use assignment2;

create Table Airplane
(REG# NUMERIC (4) NOT NULL,
 PMODEL VARCHAR(10),
 HNUMBER NUMERIC(4),
 PDATE DATE,
 CNAME VARCHAR(9),
 PSSN NUMERIC(4),
 WORK_CODE NUMERIC(4)
);

INSERT INTO Airplane VALUES
  (7369, 'ANTONOV', 1, CONVERT(DATE, '17-DEC-1980'),'Aerospaco', NULL, 2016);
INSERT INTO Airplane VALUES
  (7366, 'AIRBUS', 3, CONVERT(DATE, '17-AUG-1980'),'AeroKnow', NULL, 2710);
INSERT INTO Airplane VALUES
  (7367, 'BOEING', 5, CONVERT(DATE, '15-JUN-1981'),NULL, 3456, 1020);
INSERT INTO Airplane VALUES
  (7355, 'CRJ', 4, CONVERT(DATE, '23-APR-1983'),'MicroJet', NULL, 2045);
INSERT INTO Airplane VALUES
  (8369, 'ANTONOV3', 7, CONVERT(DATE, '1-JAN-1986'), NULL, 4532, 3100);
INSERT INTO Airplane VALUES
  (7453, 'EMBRAER', 2, CONVERT(DATE, '11-FEB-1999'),'MetaSpace', NULL, 4141);
INSERT INTO Airplane VALUES
  (9009, 'F16', 8, CONVERT(DATE, '20-JAN-1997'),'PAF', NULL, 9295);
INSERT INTO Airplane VALUES
  (6323, 'LOCKHEED', 6, CONVERT(DATE, '09-MAR-1990'),NULL, 2003, 1111);


INSERT INTO Airplane VALUES
  (4567, 'JF17', 10, CONVERT(DATE, '13-DEC-1981'),'AeroKnow', NULL, NULL);
INSERT INTO Airplane VALUES
  (7890, 'JUMBOJET', 13, CONVERT(DATE, '15-AUG-1981'),'PIA', NULL, 2710);
INSERT INTO Airplane VALUES
  (7343, 'CRJ', 5, CONVERT(DATE, '12-JUN-1982'),NULL, 1123, NULL);
INSERT INTO Airplane VALUES
  (9099, 'EMBRAER', 7, CONVERT(DATE, '03-APR-1984'),'FlyAway', NULL, NULL);
INSERT INTO Airplane VALUES
  (2312, 'LOCKHEED', 11, CONVERT(DATE, '11-JAN-1987'), NULL, 3445, 3100);
INSERT INTO Airplane VALUES
  (7689, 'ANTONOV', 12, CONVERT(DATE, '21-FEB-2000'),NULL, 5623, NULL);
INSERT INTO Airplane VALUES
  (8564, 'BOEING', 18, CONVERT(DATE, '27-JAN-1998'),'FAST', NULL, NULL);
INSERT INTO Airplane VALUES
  (7856, 'AIRBUS', 16, CONVERT(DATE, '08-MAR-1991'),NULL, 2896, 1111);

INSERT INTO Airplane VALUES
  (9190, 'ARMSTRONG', 17, CONVERT(DATE, '04-MAY-1985'),'TakeOff', NULL, NULL);
INSERT INTO Airplane VALUES
  (2314, 'FORTRESS2', 11, CONVERT(DATE, '12-FEB-1988'), NULL, 3445, 7100);
INSERT INTO Airplane VALUES
  (7680, 'BEECHCRAFT', 9, CONVERT(DATE, '22-MAR-2001'),'NESCOM', NULL, NULL);
INSERT INTO Airplane VALUES
  (8533, 'JETSTREAM', 14, CONVERT(DATE, '28-OCT-1999'),'Funavry', NULL, 2232);
INSERT INTO Airplane VALUES
  (9856, 'TURBOPROP', 15, CONVERT(DATE, '20-SEP-1992'),NULL, 2896, NULL);
 
 
 SELECT REG# 
  FROM Airplane WHERE WORK_CODE IS NULL
  ORDER BY REG#