create table EmployeeDetails(
	Id int identity (1,1) primary key,
	FirstName varchar(20) not null,
	LastName varchar(20) not null, 
	Email varchar(40) unique not null, 
	Phone bigint not null,
	Password varchar(15) not null, 
	RegisteredDate datetime default sysdatetime()
);

select * from EmployeeDetails

Create procedure SignUpDetails
(
 @FirstName varchar(20),
 @LastName varchar(20),
 @Email varchar(40),
 @Phone bigint,
 @Password varchar(15)
)
as
begin
     declare @Count int
	 declare @ReturnCode int
	 select @Count = count(Email) from EmployeeDetails where Email = @Email
	 if(@Count>0)
		begin
		set @ReturnCode = -1
		end
	 else
		begin
		set @ReturnCode = 1
	    insert into EmployeeDetails (FirstName,LastName,Email,Phone,Password) values ( @FirstName, @LastName , @Email, @Phone, @Password)
		end
	 select @ReturnCode as ReturnValue
end 

