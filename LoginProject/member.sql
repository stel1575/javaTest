CREATE TABLE users(
     	id VARCHAR2(12) PRIMARY KEY,
     	passwd VARCHAR2(12),
     	addr VARCHAR2(50),
         age NUMBER,
     	email VARCHAR2(30),
         gender CHAR(1),
         name VARCHAR2(12),
     	nation VARCHAR2(16)
);
INSERT INTO users VALUES('java','java','서울시',40,'aaa@aaa.com','M','오정원','대한민국');
COMMIT
select * from USERS

alter table users add (grade varchar2(1));

update users set grade='N' where id = 'java';

INSERT INTO users VALUES('admin','admin','대구시',40,'sss@sss.com','M','관리자','대한민국','S');