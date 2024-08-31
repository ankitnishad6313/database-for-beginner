connect mydb/mydb;

create table login_info
(
 User_id number(5) primary key,
 Passwd varchar2(10) not null
);

alter table login_info add HINT_QUES varchar2(30);

desc login_info;

alter table login_info drop column HINT_QUES;

desc login_info;

alter table login_info modify Passwd varchar2(15);

desc login_info;

create table Employees
(
    Employee_Id number(5) not null,
    Employee_Name varchar2(20) null
);

create table Orders
(
    Product_Id number(5) not null,
    Product varchar2(20) null,
    Employee_Id number(5)
);

insert into Employees values(1001,'Karan');
insert into Employees values(1002,'Shikhar');
insert into Employees values(1003,'Rajan');

insert into Orders values(1,'Table',1001);
insert into Orders values(2,'Chair',1002);
insert into Orders values(3,'Printer',1003);

select Employee_Name, Product from Employees, Orders where Employees.Employee_Id=Orders.Employee_Id;

select Employee_Name, Product from Employees left join Orders on Employees.Employee_Id=Orders.Employee_Id;

select Employee_Name, Product from Employees right join Orders on Employees.Employee_Id=Orders.Employee_Id;