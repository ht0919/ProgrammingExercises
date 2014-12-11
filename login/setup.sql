drop database if exists testdb;
create database testdb;
use testdb;
create table users (
    id int primary key not null auto_increment,
    name varchar(255) not null,
    password varchar(255) not null
) default character set=utf8;
insert into users (name, password) values
    ('yamada', sha1('yamada')),
    ('tanaka', sha1('tanaka')),
    ('kikuchi', sha1('kikuchi'));
