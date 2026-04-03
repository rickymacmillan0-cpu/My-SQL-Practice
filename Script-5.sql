create database library;
create database if not exists library;
show databases;
show create database library;
use library;
alter database library default character set gbk collate gbk_bin;
show create database library;
drop database library;
show databases;
use my_study;
create table books
(
Bookid char(6),
Bookname varchar(50),
Author varchar(50),
Press varchar(40),
Pubdate date,
Type varchar(20),
Number int(2),
Info varchar(255)
);
show tables;
show create table books;
describe books;
alter table books rename tb_books;
alter table tb_books change Author bookAuthor varchar(50);
describe tb_books;
alter table tb_books modify Bookname varchar(100);
describe tb_books;
alter table tb_books add column1 int after Press;
describe tb_books;
alter table tb_books drop column1;
alter table tb_books modify Press varchar(100) after Bookid;
describe tb_books;
drop table tb_books;
desc tb_books;
create table books
(
Bookid char(6) primary key,
Bookname varchar(50),
Author varchar(50),
Press varchar(40),
Pubdate date,
Type varchar(20),
Number int(2),
Info varchar(255)
);
describe books;
alter table books rename tb_books;
drop table tb_books;
create table books
(
Bookid char(6) ,
Bookname varchar(50),
Author varchar(50),
Press varchar(40),
Pubdate date,
Type varchar(20),
Number int(2),
Info varchar(255)
);
alter table books modify Bookid char(6) primary key;
desc books;
alter table books drop primary key;
desc books;
create table company
(
company_id int(11) primary key,
company_name varchar(50),
company_address varchar(200)
);
desc company;
alter table company modify company_address varchar(200) not null;
desc company;
alter table company modify company_address varchar(206);
desc company;
alter table company modify company_address varchar(206) unique;
desc company;
alter table company modify company_address varchar(206);
desc company;
alter table company drop index company_address;
desc company;
alter table company add company_tel varchar(20) default '0371-';
desc company;
alter table company modify company_name varchar(55) unique;

alter table company modify company_address varchar(200) not null;
desc company;
alter table company modify company_id int(11) auto_increment;
desc company;