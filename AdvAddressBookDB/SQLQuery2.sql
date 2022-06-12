-----------------Creating the DataBase AddressBook (UC1)-----------------
create database AddressBook
use AddressBook

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
)

------------------Inserting Value Into AddressBook Table (UC3)--------------
Insert Into AddressBook Values('Niraj', 'Kumar', 'Namkom', 'Ranchi', 'Jharkhand', 834010, 7004670887, 'nk321626@gmail.com'),
						('Sagar', 'kumar', '2NoTown', 'Daltonganj', 'Jharkhand', 822101, 7543065510, 'Sagar123@gmail.com'),	
						('Rani', 'Gupta', 'MadhuBazzar', 'Chaibasa', 'Jharkhand', 833201, 7004678878, 'Rani1029@gmail.com'),	
						('Rakesh', 'Kumar', 'Kasba', 'Purnea', 'Bihar', 854330, 9852364170, 'abc852@gmail.com'),	
						('Prem', 'Kamal', 'Daltonganj', 'Palamu', 'jharkhand', 822102, 9852741630, 'Prem741@gmail.com');

------------------Edit Existing AddressBook Table Using Update (UC4)--------------
Update AddressBook Set EmailId='mansi@yahoo.com' Where FirstName='Rani';
Update AddressBook Set Address='Gandhinagar', City = 'Patna', StateName = 'Bihar' Where FirstName='Prem';
Update AddressBook Set Phonenum=7415986320 Where FirstName='Rakesh';
Update AddressBook Set LastName='Kumar' Where FirstName='Prem';
select * from AddressBook
---------------------------------------Delete Existing Contact From Table(UC5)-----------------------------------------------
Delete From AddressBook Where FirstName='Rakesh' And LastName = 'Kumar';
select * from AddressBook

--------------------------------Retrieve Person Record From Table By City Or State(UC6)---------------------------------------
Select * From AddressBook Where City='Daltonganj' Or StateName='Jharkhand'; 

----------------------Ability To Get The Size Of AddressBook By City And State Using Count(UC7)---------------------------------
Select Count(*) As Count,StateName,City From AddressBook Group By StateName,City;

--------------------------------------Retrive Sorted Persons Records By City(UC8)------------------------------------------------
Select * From AddressBook Where City = 'Daltonganj' Order By FirstName;

-----------------------------------------------Add AddressBookName And Type Column(UC9)----------------------------------------------------------
Alter Table AddressBook Add AddressBookName varchar(50), AddressBookType varchar(50);

Insert Into AddressBook(FirstName,LastName,Address,City,StateName,ZipCode,PhoneNum,EmailId) 
					Values('pushpa', 'Raj', 'Gandhinagar', 'Bengluru', 'Karnataka', 560045, 9823434561, 'abc012@gmail.com'),
						('Mahesh', 'Babu', 'Manglore', 'Bengluru', 'Karnataka', 560030, 7419632580, 'abc320@gmail.com'),	
						('Aftab', 'Alam', 'Noida', 'Delhi', 'NewDelhi', 965874, 7412589631, 'abc475@gmail.com'),	
						('Rahul', 'Gandhi', 'Chandani', 'Delhi', 'NewDelhi', 965875, 9874561230, 'abc456@gmail.com'),	
						('Bhrat', 'Kumar', 'Yalanka', 'Bengluru', 'Karnataka', 560015, 7456981230, 'abc786@gmail.com');
						------------------Updating The DataBase With New Coulmn Values
Update AddressBook Set AddressBookName='FreindsAddressBook',AddressBookType='Freinds' Where FirstName ='Pushpa' Or FirstName='Rahul' Or FirstName = 'Mahesh';
Update AddressBook Set AddressBookName='FamilyAddressBook',AddressBookType='Family' Where FirstName ='Rani' Or FirstName='Niraj' Or FirstName = 'sagar';
Update AddressBook Set AddressBookName='ProfesionAddressBook',AddressBookType='Profession' Where FirstName ='Prem' Or FirstName='Bhrat' Or FirstName = 'Rakesh' Or FirstName = 'Aftab';
Select * From AddressBook Order By FirstName;