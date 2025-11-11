DROP DATABASE IF EXISTS BranchDept;
CREATE DATABASE BranchDept;
USE BranchDept;

DROP TABLE IF EXISTS Branch;
CREATE TABLE Branch (
  branchID       VARCHAR(30),
  branchName     VARCHAR(25),
  CONSTRAINT Branch_PK PRIMARY KEY (branchID)
);

-- Inserting values into the Branch table
INSERT INTO Branch (branchID, branchName) 
    VALUES ("111", "Boston");
INSERT INTO Branch (branchID, branchName) 
    VALUES ("222", "New York");
INSERT INTO Branch (branchID,branchName) 
    VALUES ("333", "Philadelphia");
INSERT INTO Branch (branchID,branchName) 
    VALUES ("444", "Los Angelas");

DROP TABLE IF EXISTS Dept;
CREATE TABLE Dept (
  deptID      VARCHAR(50),
  deptName    VARCHAR(50),
  branchID_FK VARCHAR(50),
	
  CONSTRAINT Dept_PK PRIMARY KEY(deptID),
	CONSTRAINT Dept_FK1 FOREIGN KEY(branchID_FK)
	REFERENCES Branch(branchID)	
);

-- Inserting values into the table Dept
INSERT INTO Dept (deptID, deptName, branchID_FK)
    VALUE ("10","Accounting", "111");
INSERT INTO Dept (deptID, deptName, branchID_FK) 
    VALUE ("20","Research", "222");
INSERT INTO Dept (deptID, deptName, branchID_FK) 
    VALUE ("30","Sales", "333");
INSERT INTO Dept (deptID, deptName, branchID_FK) 
    VALUE ("40","Operations", "444");

DROP TABLE IF EXISTS Worker;
CREATE TABLE Worker (
  workerID   VARCHAR(50),
	lName      VARCHAR(50),
	Gender     CHAR(1),
	Salary     DOUBLE,
	Commission DOUBLE,
	deptID_FK  VARCHAR(50),
	
	CONSTRAINT workerID_PK PRIMARY KEY(workerID),
	CONSTRAINT workerID_FK1 FOREIGN KEY(deptID_FK)
	REFERENCES Dept(deptID)
);

-- Inserting values into the table Worker
INSERT INTO Worker (workerID, lName, Gender, Salary, Commission, deptID_FK) 
     VALUE ("2022","Curie", "F", 80000, 500, "10");
INSERT INTO Worker (workerID, lName, Gender, Salary, Commission, deptID_FK)
     VALUE ("7024","Galilei", "M", 100000, 1500, "10");
INSERT INTO Worker (workerID, lName, Gender, Salary, Commission, deptID_FK)
     VALUE ("2102","Rutherford", "M", 5000, 10000, "20");
INSERT INTO Worker (workerID, lName, Gender, Salary, Commission, deptID_FK)
     VALUE ("7014","Pascal", "M", 96000, 500, "40");
INSERT INTO Worker (workerID, lName, Gender, Salary, Commission, deptID_FK)
     VALUE ("4032","Hooke", "M", 200000, 5200, "40");
INSERT INTO Worker (workerID, lName, Gender, Salary, Commission, deptID_FK)
     VALUE ("1222","Newton", "M", 2000, 1500, "30");
INSERT INTO Worker (workerID, lName, Gender, Salary, Commission, deptID_FK)
     VALUE ("1022","Watt", "M", 30000, 50, "20");
INSERT INTO Worker (workerID, lName, Gender, Salary, Commission, deptID_FK)
     VALUE ("4702","Ohm", "M", 90000, 0, "20");
INSERT INTO Worker (workerID, lName, Gender, Salary, Commission, deptID_FK)
     VALUE ("8820","Einstein", "M", 100000, 1500, "30");
