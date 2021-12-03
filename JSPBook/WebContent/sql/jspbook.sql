use jspbookdb;
CREATE TABLE IF NOT EXISTS member(
	id int NOT NULL AUTO_INCREMENT,
	passwd VARCHAR(20),
	name VARCHAR(30),
	PRIMARY KEY (id)
)
show tables;
desc member;

alter table member add phone varchar(100);
alter table member drop column phone;

alter table member change column passwd password varchar(60);

rename table member to student;
desc student;

insert into student (id, password, name) values('1','1234','Chang');
insert into student (id, password, name) values('2','5566','Jing');
insert into student (id, password, name) values('3','9382','Kim');
insert into student (id, password, name) values('4','6212','Shin');

select * from student;
select * from student limit 2;
select * from student where id=4;

delete from student where id=4;
delete from student;
desc student;

drop table student;
show tables;

