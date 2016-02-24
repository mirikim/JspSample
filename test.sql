select * from member2;
desc member2;
create table member2(
id varchar2(15),password varchar2(10),name varchar2(15),age number,
gender varchar2(5), email varchar2(30), primary key(id));

select * from member2;
 truncate table member2;
desc member2;

alter table member2 add(address varchar2(30), tel number);

create table test(
num NUMBER, name VARCHAR2(10), primary key(num));
select * from test;