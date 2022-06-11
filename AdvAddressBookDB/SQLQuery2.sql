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