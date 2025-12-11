create database company2A
CREATE TABLE Department (
    DNUM        INT PRIMARY KEY,
    DName       VARCHAR(50),
    HiringDate  DATE
);
CREATE TABLE Employee (
    SSN        INT PRIMARY KEY,
    DNUM       INT,
    BirthDate  DATE,
    Gender     CHAR(1),
    Fname      VARCHAR(30),
    LName      VARCHAR(30),
    Supervises INT,

    FOREIGN KEY (DNUM) REFERENCES Department(DNUM),
    FOREIGN KEY (Supervises) REFERENCES Employee(SSN)
);
CREATE TABLE Dependent (
    DName     VARCHAR(30),
    SSN       INT,
    Gender    CHAR(1),
    BirthDate DATE,

    PRIMARY KEY (DName, SSN),
    FOREIGN KEY (SSN) REFERENCES Employee(SSN)
);
CREATE TABLE Projects (
    PNumber  INT PRIMARY KEY,
    Location VARCHAR(50),
    City     VARCHAR(50),
    Pname    VARCHAR(50)
);
CREATE TABLE Dep_Location (
    DNUM     INT,
    Location VARCHAR(50),

    PRIMARY KEY (DNUM, Location),
    FOREIGN KEY (DNUM) REFERENCES Department(DNUM)
);
CREATE TABLE WorkOn (
    SSN         INT,
    PNumber     INT,
    WorkingHours INT,

    PRIMARY KEY (SSN, PNumber),
    FOREIGN KEY (SSN) REFERENCES Employee(SSN),
    FOREIGN KEY (PNumber) REFERENCES Projects(PNumber)
);
