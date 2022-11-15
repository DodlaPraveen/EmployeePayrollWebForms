create table LogInDetails(
	Id int identity (1,1) primary key, 
	Email varchar(50) not null, 
	Password varchar(15) not null, 
	LoggedTime datetime default sysdatetime()
);

select * from LogInDetails;

Create procedure LogInCredentials
(
 @Email varchar(20),
 @Password varchar(15)
)
as
declare @count int
begin      
     select @count = count(Email) from EmployeeDetails where (Email=@Email and Password=@Password) 
     if(@count = 1)
	 begin
		insert into LogInDetails (Email,Password) values ( @Email, @Password)
		select * from EmployeeDetails where (Email=@Email and Password=@Password)
		select 1 as ReturnCode
	 end
	 else
	 begin
		select -1 as ReturnCode
	 end
end 