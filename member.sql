CREATE TABLE USERS(
id VARCHAR2(12) PRIMARY KEY,
passwd VARCHAR2(12),
addr VARCHAR2(50),
job VARCHAR2(30),
salary NUMBER,
name VARCHAR2(12));

select * from users;

INSERT INTO users values('java','java','서울시','강사',10000,'오강사');

DROP TABLE dog purge;
create table dog(
id number primary key,
kind varchar2(12),
price number,
image varchar2(20),
country varchar2(12),
height number,
weight number,
content varchar2(400),
readcount number);
select * from dog;

//중복 되지 않는 값이 자동으로 들어가게 하기 위해
create sequence dog_se start with 1 nocache;

insert into dog values (1,'푸들','10000','pu','프랑스','1','20','푸들푸들 귀여워요',0);
insert into dog values (2,'풍산개','20000','pung','한국','2','10','풍산풍산 귀여워요',0);
insert into dog values (3,'진도개','30000','jin','한국','3','50','진도진도 귀여워요',0);
insert into dog values (4,'삽살개','40000','sap','한국','2','20','삽살삽살 귀여워요',0);
