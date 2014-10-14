drop table if exists member;
drop table if exists division;

create table member (
	member_id INT,
	name VARCHAR(10),
	division_id VARCHAR(10)
);

create table division (
	division_id INT,
	division_name VARCHAR(10)
);

insert into member values( 1,'��',103);
insert into member values( 2,'�R',103);
insert into member values( 3,'�ԍ�',103);
insert into member values( 4,'���',103);
insert into member values( 5,'��c',104);
insert into member values( 6,'���c',103);
insert into member values( 7,'����',102);
insert into member values( 8,'�e�r',101);
insert into member values( 9,'�㓡',104);
insert into member values(10,'����',103);
insert into member values(11,'���c',102);
insert into member values(12,'����',101);

insert into division values(101,'�c�ƕ�');
insert into division values(102,'�l����');
insert into division values(103,'�V�X�e����');
insert into division values(104,'������');

select * from member;
select * from division;
