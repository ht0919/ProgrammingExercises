drop table if exists user_age;

create table user_age (id int, age int);

insert into user_age values( 1, 17);
insert into user_age values( 2, 44);
insert into user_age values( 3, 70);
insert into user_age values( 4,  0);
insert into user_age values( 5,  2);
insert into user_age values( 6, 33);
insert into user_age values( 7, 24);
insert into user_age values( 8, 56);
insert into user_age values( 9, 50);
insert into user_age values(10, 15);

select * from user_age;
