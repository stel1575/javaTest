CREATE TABLE KScomUser(
		id VARCHAR(15) PRIMARY KEY,
		passwd VARCHAR(15),
		addr VARCHAR(50),
		age INT,
		email VARCHAR(30),
		gender CHAR(1),
		name VARCHAR(15)
);
INSERT INTO KScomUser VALUES('java','java','서울시',40,'aaa@aaa.com','M','오정원','N');
INSERT INTO KScomUser VALUES('testuser','test','부산시',30,'bbb@bbb.com','W','이정현','N');
INSERT INTO KScomUser VALUES('admin','admin','대구시',40,'sss@sss.com','M','관리자','S');