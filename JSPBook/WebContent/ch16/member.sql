--drop table member;

create table if not exists member(
	id varchar(20) not null,
	passwd varchar(20),
	name varchar(30),
	primary key (id)
)default character set utf8 collate utf8_general_ci;

select * from member;

--show tables;
--desc member;
