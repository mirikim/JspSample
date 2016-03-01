/* DAY 39 */
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


/* Day 40 BOARD TEST*/
CREATE TABLE BOARD(BOARD_NUM NUMBER,BOARD_ID varchar2(20), BOARD_NAME VARCHAR2(20), BOARD_PASS VARCHAR2(15),
BOARD_SUBJECT VARCHAR2(50), BOARD_CONTENT VARCHAR2(2000),BOARD_FILE VARCHAR2(50),
BOARD__RE_REF NUMBER,BOARD_RE_LEV NUMBER,BOARD_RE_SEQ NUMBER,
BOARD_READCOUNT NUMBER,BOARD_DATE DATE,  PRIMARY KEY(BOARD_NUM));

select * from BOARD;
alter table BOARD add(BOARD_ID varchar2(20));

delete table BOARD;

/*MEMBERBOARD*/
CREATE TABLE MEMBERBOARD(BOARD_NUM NUMBER,BOARD_ID varchar2(20), BOARD_SUBJECT VARCHAR2(50), 
BOARD_CONTENT VARCHAR2(2000),BOARD_FILE VARCHAR2(50),
BOARD__RE_REF NUMBER,BOARD_RE_LEV NUMBER,BOARD_RE_SEQ NUMBER,
BOARD_READCOUNT NUMBER,BOARD_DATE DATE,  PRIMARY KEY(BOARD_NUM));
select * from memberboard;

alter table MEMBERBOARD ADD CONSTRAINT pk_board_id FOREIGN KEY(board_id) REFERENCES member3(member_id);

/* MEMBER3*/
CREATE table MEMBER3(MEMBER_ID varchar2(15), MEMBER_PW varchar2(13),
MEMBER_NAME varchar2(15), MEMBER_AGE number, MEMBER_GENDER varchar2(5),
MEMBER_EMIAL varchar2(30), primary key(MEMBER_ID));
select * from member3;