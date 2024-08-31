create user mydb identified by mydb;

grant dba to mydb;

connect mydb/mydb;

create table cust_info
(
    Cust_Id number(5) primary key,
    Cust_Name varchar(20),
    Cust_Address varchar(100),
    Cust_connect_date date,
    Contact_No varchar(15)
);

insert into cust_info values(101,'Rajeev Singh','Lucknow','12-Dec-2012','05226565114');
insert into cust_info values(102,'Jitendra Verma','Sitapur','01-Jan-2013','9838505980');
insert into cust_info values(103,'Ravi Singh','Barabnaki','15-Jan-2013','9936652039');
insert into cust_info values(104,'Priya Singh','Lucknow','16-Jan-2013','9936390301');
insert into cust_info values(105,'Brijesh Mishra','Barabnaki','16-Feb-2013','8738970899');
insert into cust_info values(106,'Amit Singh','Lucknow','18-March-2013','0548-2202798');

commit;

select * from cust_info;

select Cust_Id,Cust_Name from cust_info;

select Cust_Id,Cust_Name,Cust_connect_date from cust_info where  Cust_connect_date > '15-Jan-2013';

select * from cust_info where Cust_Address = 'Lucknow';

select * from cust_info order by Cust_Name ASC;

select * from cust_info order by Cust_Name DESC;

delete from cust_info where Cust_Id=105;

update cust_info set Contact_No='0522-6767144' where Cust_Id=106;

truncate table cust_info;

drop table cust_info;