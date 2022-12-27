<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

데이터베이스 구조
<!-- 
	show databases;

create database airplain;

use airplain;
show tables;

create table user(
id varchar(10) primary key,
pw varchar(100),
name varchar(20),
phone varchar(15)
);

select * from user;

show tables;
select * from notice;

create table notice(
id int primary key auto_increment,
content varchar(100),
ndate timestamp not null default current_timestamp
);

select * from airplain;

select * from train;

create table airplain(
airid varchar(20) primary key,
airline varchar(30),
airday varchar(20),
airtime varchar(20),
airdepart varchar(30),
airdestination varchar(30)
);

create table train(
traid varchar(20) primary key,
traline varchar(30),
traday varchar(20),
tratime varchar(20),
tradepart varchar(30),
tradestination varchar(30)
);

create table airreserv(
airnum int primary key auto_increment,
id varchar(20),
airid varchar(20)
);

create table trareserv(
tranum int primary key auto_increment,
id varchar(20),
traid varchar(20)
);

select * from airreserv;
select * from trareserv;


drop table airplain;
drop table trareserv;
 -->

</body>
</html>