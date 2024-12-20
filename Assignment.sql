create database project;
use project;

create table Member (
	Member_ID int auto_increment,
    First_Name varchar(20),
    Last_Name varchar(20),
    Member_Location varchar(20),
    Member_Age int,
    primary key (Member_ID)
    );
    
create table Vehicle (
	Vehicle_Registration varchar(10),
    Vehicle_Make varchar(10),
    Vehicle_Model varchar(10),
    Member_ID int,
    primary key (Vehicle_Registration),
    foreign key(Member_ID) references Member(Member_ID)
    );
    
    create table Engineer (
		Engineer_ID int auto_increment,
        First_Name varchar(20),
        Last_Name varchar(20),
        primary key (Engineer_ID)
        );
        
create table Breakdown (
	Breakdown_ID int auto_increment,
    Vehicle_Registration varchar(10),
    Engineer_ID int,
    primary key(Breakdown_ID),
    Breakdown_Date date,
    Breakdown_Time time,
    Breakdown_Location varchar(20),
    foreign key(Vehicle_Registration) references Vehicle(Vehicle_Registration),
    foreign key (Engineer_ID) references Engineer(Engineer_ID)
    );
    
use project; 

    insert into Member 
    (First_Name, Last_Name, Member_location, Member_Age)
    Values
    ('John', 'Doe', 'New York', 32),
    ('Jane', 'Smith', 'Los Angeles', 27),
    ('Mark','Jones', 'Chicago', 45),
    ('Emily', 'Davis', 'Houston', 30),
    ('Luke', 'Brown', 'Phoenix', 38),
    ('Sophia', 'White', 'Dallas', 29),
    ('Liam', 'Taylor', 'Miami', 41),
    ('Olivia', 'Green', 'San Diego', 36),
    ('James', 'Harris', 'Denver', 33),
    ('Mia', 'Robinson', 'Atlanta', 25);
    
    insert into Vehicle
    (Vehicle_Registration, Vehicle_Make, Vehicle_Model, member_id)
    Values
	('ABC1234', 'Toyota', 'Corolla', 1),
	('XYZ5678', 'Ford', 'Mustang', 2),
	('DEF1111', 'Honda', 'Civic', 3),
	('GHI2222', 'Chevy', 'Cruze', 4),
	('JKL3333', 'BMW', 'X5', 5),
	('MNO4444', 'Audi', 'A4', 1),
	('PQR5555', 'Mercedes', 'C300', 2),
	('STU6666', 'Nissan', 'Altima', 3),
	('VWX7777', 'Hyundai', 'Elantra', 6),
	('YZA8888', 'Tesla', 'Model S', 7),
	('BCD9999', 'Kia', 'Sportage', 8),
	('EFG1112', 'Subaru', 'Forester', 9),
	('HIJ1212', 'Jeep', 'Wrangler', 10),
	('KLM1414', 'Mazda', 'CX-5', 4),
	('NOP1515', 'Honda', 'Accord', 5),
	('QRS1616', 'Chevy', 'Malibu', 6),
	('TUV1717', 'Nissan', 'Sentra',7),
	('WXY1818', 'Ford', 'Explorer', 8),
	('ZAB1919', 'Volvo', 'XC90', 9),
	('CDE2020', 'Lexus', 'RX350', 10);
    
    insert into Engineer
    (First_Name, Last_Name)
    values
    ('Ethan', 'Williams'),
    ('Olivia', 'Miller'),
    ('Sophia', 'Clark'),
    ('Noah', 'Walker');
    
    insert into Breakdown
    ( Breakdown_Date, Breakdown_Time, Breakdown_Location, Vehicle_Registration, Engineer_ID)
    values
    ('2024-09-10', '10:30:00', 'New York', 'ABC1234', 1),
    ('2024-09-10', '11:00:00', 'Los Angeles', 'XYZ5678', 2),
    ('2024-09-10', '12:30:00', 'Chicago', 'DEF1111', 3),
    ('2024-09-15', '14:00:00', 'Houston', 'GHI2222', 4),
    ('2024-09-18', '09:45:00', 'Phoenix', 'JKL3333', 1),
    ('2024-09-25', '08:20:00', 'New York', 'MNO4444', 2),
    ('2024-09-28', '11:15:00', 'Los Angeles', 'PQR5555', 3),
    ('2024-09-30', '15:30:00', 'Chicago', 'STU6666', 4),
    ('2024-10-10', '9:30:00', 'New York', 'ABC1234', 2),
    ('2024-10-15', '13:30:00', 'Los Angeles', 'XYZ5678', 3),
    ('2024-10-20', '14:45:00', 'Chicago', 'DEF1111', 4),
    ('2024-10-22', '16:20:00', 'New York', 'MNO4444', 1),
    ('2024-10-25', '17:00:00', 'Phoenix', 'JKL3333', 2),
   ('2024-11-01', '08:00:00', 'Dallas', 'VWX7777', 3),
	('2024-11-05', '09:00:00', 'Miami', 'YZA8888', 4),
	('2024-11-10', '10:30:00', 'San Diego', 'BCD9999', 1),
	('2024-11-15', '14:00:00', 'Denver', 'EFG1112', 2),
	('2024-11-18', '11:00:00', 'Atlanta', 'HIJ1212', 3),
	('2024-11-20', '15:45:00', 'Houston', 'KLM1414', 4),
    ('2024-11-25', '16:30:00', 'Phoenix', 'NOP1515', 1);
    
   select * from Breakdown;
   
   select * from member limit 5;
   
   select * from member limit 5, 5;
   
   select * from member where member_age>30;
   
   select * from member where member_location= 'New York' or member_location= 'Los Angeles';
   
   select * from vehicle where vehicle_make = 'Toyota' or vehicle_make= 'Honda';
   
   select * from member where member_age >= 25 and member_age <= 40;
   
   select * from vehicle where vehicle_registration like 'A%';
   
   select * from vehicle where vehicle_model like '%5';
   
   select * from engineer order by last_name asc;
   
   select * from member order by member_age desc;
   
   select count(member_id) as TotalNumberofMembers from member;
   
	select * from breakdown where breakdown_date >= 2024-01-01;
    
    select * from breakdown where vehicle_registration= 'ABC1234' or vehicle_registration= 'XYZ5678';
    
   select * from vehicle where vehicle_make = 'ford';
   
   select * from member where  first_name like 'J%';
   
   select * from breakdown where breakdown_date < 2024-09-01;
   
   select * from member where last_name like '%son%';
   
   select * from breakdown where breakdown_location like '%new%';
   
   select * from member order by member_age  asc limit 1;
   
   select * from member order by member_age desc limit 1;
   
   select * from vehicle inner join member on vehicle.Member_ID=member.member_ID where member.member_location = 'Los Angeles';
     
   /*22*/
   
   
    
    
    