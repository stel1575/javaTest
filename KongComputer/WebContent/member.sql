CREATE TABLE KScomUser(
		id VARCHAR2(12) PRIMARY KEY,
		passwd VARCHAR2(12),
		addr VARCHAR2(50),
		age NUMBER,
		email VARCHAR2(30),
		gender CHAR(1),
		name VARCHAR2(12)
);
INSERT INTO KScomUser VALUES('java','java','서울시',40,'aaa@aaa.com','M','오정원');
COMMIT
select * from KScomUser

alter table KScomUser add (grade varchar2(1));

update KScomUser set grade='N' where id = 'java';

INSERT INTO KScomUser VALUES('admin','admin','대구시',40,'sss@sss.com','M','관리자','S');