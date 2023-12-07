create database univdb;

use univdb;


create table department(
    departid int NOT NULL auto_increment,
    name varchar(30) NOT NULL,
    numstudent int NULL,
    homepage varchar(30) NULL, -- 수정: hompage -> homepage
    PRIMARY KEY(departid)
);

insert into department(name, numstudent, homepage) values('전자공학과', 85, 'www.electronics.ac.kr');
insert into department(name, numstudent, homepage) values('화학공학과', 75, 'www.chemical.ac.kr');
insert into department(name, numstudent, homepage) values('통계학과', 70, 'www.statistics.ac.kr');
insert into department(name, numstudent, homepage) values('기계공학과', 90, 'www.mechanical.ac.kr');
insert into department(name, numstudent, homepage) values('물리학과', 60, 'www.physics.ac.kr');
create table department(
	departid int NOT NULL auto_increment ,
	name varchar(30) NOT NULL,
	numstudent int  NULL,
	hompage varchar(30) NULL,
	PRIMARY KEY(departid)
);

insert into department(name, numstudent,hompage) values('전자공학과',85,'www.electronics.ac.kr');
insert into department(name, numstudent,hompage) values('화학공학과', 75, 'www.chemical.ac.kr');
insert into department(name, numstudent,hompage) values('통계학과', 70, 'www.statistics.ac.kr');
insert into department(name, numstudent,hompage) values('기계공학과', 90, 'www.mechanical.ac.kr');
insert into department(name, numstudent,hompage) values('물리학과', 60, 'www.physics.ac.kr');





