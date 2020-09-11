CREATE TABLE KScomUser(
	id	VARCHAR(15) PRIMARY KEY,
	passwd	VARCHAR(15),
	name	VARCHAR(15),
	age	INT,
	gender	VARCHAR(5),
	Addr	VARCHAR(30),
	email	VARCHAR(30),
	grade	VARCHAR(4)
);

INSERT INTO KScomUser VALUES
('java','java','오정원',40,'M','대구시','aaa@aaa.com','N');
INSERT INTO KScomUser VALUES
('testuser','test','이정현',30,'W','서울시','bbb@bbb.com','N');
INSERT INTO KScomUser VALUES
('admin','admin','관리자',40,'M','부산시','sss@sss.com','S');


CREATE TABLE member(
	num int primary key,
	id	VARCHAR(15),
	pwd	VARCHAR(15),
	name	VARCHAR(15),
	email	INT,
	phone	VARCHAR(10),
	admin	int,
	indate	VARCHAR(30)
);