-----------------Creating the DataBase AddressBook (UC1)-----------------
create database AdvAddressBookDB;
use AdvAddressBookDB;

-----------------Creating the AddressBook Table (UC2)--------------------
Create Table AddressBook(
	FirstName varchar(50) not null,
	LastName varchar(50),
	Address varchar(255),
	City varchar(50),
	StateName varchar(50),
	ZipCode int,
	PhoneNum bigint,
	EmailId varchar(50)
);

------------------Inserting Value Into AddressBook Table (UC3)--------------
Insert Into AddressBook Values('Niraj', 'Kumar', 'Namkom', 'Ranchi', 'Jharkhand', 834010, 7004670887, 'nk321626@gmail.com'),
						('Sagar', 'kumar', '2NoTown', 'Daltonganj', 'Jharkhand', 822101, 7543065510, 'Sagar123@gmail.com'),	
						('Rani', 'Gupta', 'MadhuBazzar', 'Chaibasa', 'Jharkhand', 833201, 7004678878, 'Rani1029@gmail.com'),	
						('Rakesh', 'Kumar', 'Kasba', 'Purnea', 'Bihar', 854330, 9852364170, 'abc852@gmail.com'),	
						('Prem', 'Kamal', 'Daltonganj', 'Palamu', 'jharkhand', 822102, 9852741630, 'Prem741@gmail.com');