connect system/system;

create user Ankit identified by 1234;

Q. 3(i) :-
create table employee
(
    empid varchar2(10) check (empid like 'SPI%'),
    empname varchar2(20) check (empname =upper(empname)),
    country varchar2(5) check (country in ('India','Nepal')),
    salary number(6) check (salary<=100000),
    primary key (empid)
);

(ii) :-
 insert into employee values ('SPI1001', 'BRIJESH MISHRA', 'India', '50000');
 insert into employee values ('SPI1002', 'ROHIT KUMAR', 'India', '55000');
 insert into employee values ('SPI1003', 'YASHI ASTHANA', 'India', '100000');
 insert into employee values ('SPI1004', 'ANAND SINGH', 'India', '50000');
 insert into employee values ('SPI1005', 'SAGAR MISHRA', 'India', '40000');

 4 (i) :-
create table product(
    pid varchar2(10) primary key check (pid like ('P%')),
    pname varchar2(20) check (pname = upper(pname)),
    empid varchar2(10),
    foreign key (empid) references employee(empid)
);

(ii) :-

insert into product values ('P101', 'PRINTER', 'SPI1001');
insert into product values ('P102', 'SCANNER', 'SPI1002');
insert into product values ('P103', 'PLOTTER', 'SPI1002');
insert into product values ('P104', 'LAPTOP', 'SPI1003');
insert into product values ('P105', 'DESKTOP', 'SPI1004');
insert into product values ('P106', 'PROJECTOR', '');
or
insert into product (pid, pname)values ('P106', 'PROJECTOR');

5 (i) :-

select empname, pname from employee, product where employee.empid = product.empid;

select empname, pname from employee left join product on employee.empid = product.empid;

select empname, pname from employee right join product on employee.empid = product.empid;

5 (ii) :-
a):-
select * from employee where salary = (select max(salary) from employee);
b):-
select * from employee where salary = (select max(salary) from employee where salary < (select max(salary) from employee));

6 (i) :-
declare
first int;
second int;
temp int;
n int;
i int;
begin
first:=&First_Number;
second:=&Second_Number;
dbms_output.put_line('How many term you want ?');
n:=&n;
	dbms_output.put_line('Series:');
    dbms_output.put_line(first);
    dbms_output.put_line(second);
	for i in 2..n
	loop
		temp:=first+second;
first := second;
second := temp;
	dbms_output.put_line(temp);
end loop;
end;
/


(ii) :-
declare
empid varchar2(10);
empname varchar2(20);
country varchar2(5);
salary number(6);

begin
    empid:=&empid;
    empname:=&empname;
    country:=&country;
    salary:=&salary;
    insert into employee values (empid, empname, country, salary);
    commit;
end;
/