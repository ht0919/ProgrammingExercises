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

insert into member values( 1,'青木',103);
insert into member values( 2,'青山',103);
insert into member values( 3,'赤坂',103);
insert into member values( 4,'井上',103);
insert into member values( 5,'上田',104);
insert into member values( 6,'岡田',103);
insert into member values( 7,'加藤',102);
insert into member values( 8,'菊池',101);
insert into member values( 9,'後藤',104);
insert into member values(10,'佐藤',103);
insert into member values(11,'武田',102);
insert into member values(12,'筒井',101);

insert into division values(101,'営業部');
insert into division values(102,'人事部');
insert into division values(103,'システム部');
insert into division values(104,'総務部');

select * from member;
select * from division;
