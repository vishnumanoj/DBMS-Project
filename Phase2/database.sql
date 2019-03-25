drop database hospital;

create database hospital;

\c hospital;

CREATE TABLE Admin (
  Admin_ID INT PRIMARY KEY NOT NULL,
  First_Name VARCHAR(40) NOT NULL,
  Last_Name VARCHAR(40) NOT NULL,
  Age INT NOT NULL,
  Salary INT NOT NULL,
JoiningDate DATE NOT NULL
);

CREATE TABLE Patient (
  Patient_ID INT PRIMARY KEY NOT NULL,
  Doctor_ID INT NOT NULL,
  Nurse_ID INT, 
  First_Name VARCHAR(40) NOT NULL,
  Last_Name VARCHAR(40) NOT NULL,
  Age INT NOT NULL,
  Disease VARCHAR(20) NOT NULL
);

CREATE TABLE Doctor (
  Doctor_ID INT PRIMARY KEY NOT NULL,
  First_Name VARCHAR(40) NOT NULL,
  Last_Name VARCHAR(40) NOT NULL,
  Department_ID VARCHAR(40) NOT NULL,
Patient_ID INT NOT NULL,
Nurse_ID INT NOT NULL,
Assistant_ID INT NOT NULL,
  Age INT NOT NULL,
Salary INT NOT NULL,
JoiningDate DATE NOT NULL
  );

CREATE TABLE Nurse (
  Nurse_ID INT PRIMARY KEY NOT NULL,
Patient_ID INT NOT NULL,
Doctor_ID INT NOT NULL,
First_Name VARCHAR(40) NOT NULL,
  Last_Name VARCHAR(40) NOT NULL,
  Age INT NOT NULL,
Salary INT NOT NULL,
JoiningDate DATE NOT NULL
);

CREATE TABLE Assistant (
  Assistant_ID INT PRIMARY KEY NOT NULL,
Patient_ID INT NOT NULL,
Nurse_ID INT NOT NULL,
Doctor_ID INT NOT NULL,
 First_Name VARCHAR(40) NOT NULL,
  Last_Name VARCHAR(40) NOT NULL,
  Age INT NOT NULL,
Salary INT NOT NULL,
JoiningDate DATE NOT NULL
);

CREATE TABLE Controls(
Admin_ID INT NOT NULL,
Patient_ID INT NOT NULL,
Nurse_ID INT NOT NULL,
Doctor_ID INT NOT NULL,
Assistant_ID INT NOT NULL,
CONSTRAINT FK_Admin FOREIGN KEY(Admin_ID) REFERENCES Admin(Admin_ID),
CONSTRAINT FK_Patient FOREIGN KEY(Patient_ID) REFERENCES Patient(Patient_ID),
CONSTRAINT FK_Nurse FOREIGN KEY(Nurse_ID) REFERENCES Nurse(Nurse_ID),
CONSTRAINT FK_Doctor FOREIGN KEY(Doctor_ID) REFERENCES Doctor(Doctor_ID),
CONSTRAINT FK_Assistant FOREIGN KEY(Assistant_ID) REFERENCES Assistant(Assistant_ID)
);

CREATE TABLE Helps(
Nurse_ID INT NOT NULL,
Patient_ID INT NOT NULL,
CONSTRAINT FK_Patient FOREIGN KEY(Patient_ID) REFERENCES Patient(Patient_ID),
CONSTRAINT FK_Nurse FOREIGN KEY(Nurse_ID) REFERENCES Nurse(Nurse_ID)
);

CREATE TABLE Treats(
Doctor_ID INT NOT NULL,
Patient_ID INT NOT NULL,
CONSTRAINT FK_Doctor FOREIGN KEY(Doctor_ID) REFERENCES Doctor(Doctor_ID),
CONSTRAINT FK_Patient FOREIGN KEY(Patient_ID) REFERENCES Patient(Patient_ID)
);

CREATE TABLE Instructs(
Doctor_ID INT NOT NULL,
Assistant_ID INT NOT NULL,
CONSTRAINT FK_Doctor FOREIGN KEY(Doctor_ID) REFERENCES Doctor(Doctor_ID),
CONSTRAINT FK_Assistant FOREIGN KEY(Assistant_ID) REFERENCES Assistant(Assistant_ID)
);

CREATE TABLE Guides(
Nurse_ID INT NOT NULL,
Assistant_ID INT NOT NULL,
CONSTRAINT FK_Nurse FOREIGN KEY(Nurse_ID) REFERENCES Nurse(Nurse_ID),
CONSTRAINT FK_Assistant FOREIGN KEY(Assistant_ID) REFERENCES Assistant(Assistant_ID)
);


Insert into admin values ('1','Vishnu','Manoj','19','9999','2019-01-01');
Insert into admin values ('2','Ritwik','Sinha','19','8888','2019-01-02');
Insert into admin values ('3','Pratik','Byathnal','20','7777','2019-01-03');
Insert into admin values ('4','Parv','Nangalia','19','6666','2019-01-04');
Insert into admin values ('5','Keshav','Agarwal','19','5555','2019-01-05');

Insert into patient values ('1','1','1','John','Jacob','39','Fever'); 
Insert into patient values ('2','2','2','Paul','Jacob','45','Cancer');
Insert into patient values ('3','3','3','Logan','Jacob','12','Pneumonia');
Insert into patient values ('4','4','4','Austin','Jacob','53','Chicken Pox');
Insert into patient values ('5','5','5','Mohammed','Jacob','87','Jaundice');

Insert into doctor values('1','Siana','Catherine','Opthamology','1','1','1','32','999999','2019-02-03');
Insert into doctor values('2','Manisha','Sumner','Radiology','2','2','2','42','888888','2019-02-03');
Insert into doctor values('3','RaihanLena','Solomon','Cardiology','3','3','3','33','777777','2019-02-04');
Insert into doctor values('4','Lena','Barnard','Endoscopy','4','4','4','32','666666','2019-02-07');
Insert into doctor values('5','Willard','Matthews','Chaplaincy','5','5','5','23','555555','2019-02-09');

insert into nurse values('1','1','1','Alanna','Mueller','32','13123','2019-01-21');
insert into nurse values('2','2','2','Angharad','Ferreira','33','2131','2019-04-21');
insert into nurse values('3','3','3','Tilly','Mahoney','23','3133','2019-01-31');
insert into nurse values('4','4','4','Regina','Mckeown','41','4243','2019-03-21');
insert into nurse values('5','5','5','Kaycee','Ashton','53','1412','2019-01-11');

insert into assistant values('1','1','1','1','Tamsin','Mcintosh','32','24323','2019-01-21');
insert into assistant values('2','2','2','2','Penelope','Denton','21','12312','2019-01-24');
insert into assistant values('3','3','3','3','Johan','Wong','34','42342','2019-02-13');
insert into assistant values('4','4','4','4','Jakob','Sargent','54','43243','2019-03-15');
insert into assistant values('5','5','5','5','Reid','Rhodes','23','13123','2019-01-12');

insert into controls values ('1','1','1','1','1');
insert into controls values ('2','2','2','2','2');
insert into controls values ('3','3','3','3','3');
insert into controls values ('4','4','4','4','4');
insert into controls values ('5','5','5','5','5');

insert into helps values ('1','1');
insert into helps values ('2','2');
insert into helps values ('3','3');
insert into helps values ('4','4');
insert into helps values ('5','5');

insert into treats values ('1','1');
insert into treats values ('2','2');
insert into treats values ('3','3');
insert into treats values ('4','4');
insert into treats values ('5','5');

insert into instructs values ('1','1');
insert into instructs values ('2','2');
insert into instructs values ('3','3');
insert into instructs values ('4','4');
insert into instructs values ('5','5');

insert into guides values ('1','1');
insert into guides values ('2','2');
insert into guides values ('3','3');
insert into guides values ('4','4');
insert into guides values ('5','5');