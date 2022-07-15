set names utf8;
drop database if exists ice_cream;
create database ice_cream charset=utf8;
use ice_cream;
create table product(
	pid int ,    			#编号 主键   
	series varchar(10),		#系列
	brand varchar(20),		#品牌
	pic varchar(20),		#图片	
	details text,			#详细介绍
	price decimal(4,1),		#价格
	id int     				#品牌id
);
create table index_all(
	swiper varchar(20),
	tid int 
);
create table index_img(
	tid	int,
	img varchar(50),
	pid int
);
create table maker(
	bname varchar(20),			#品牌名
	bid int primary key         #品牌id
	);		
create table mixture_na (
	id int primary key, 
	nname varchar(10), 
	content varchar(10),  #每100克含量
	reference int  #参考值

);
create table mixture_prower (
	id int primary key, 
	pname varchar(10), 
	content varchar(10),  #每100克含量
	reference int  #参考值

);
create table mixture_protein (
	id int primary key, 
	pname varchar(10), 
	content varchar(10),  #每100克含量
	reference int  #参考值

);
create table mixture_carbon (
	id int primary key, 
	pname varchar(10), 
	content varchar(10),  #每100克含量
	reference int  #参考值

);
create table mixture_oil (
	id int primary key, 
	pname varchar(10), 
	content varchar(10),  #每100克含量
	reference int  #参考值

);

insert into product values(1,'小黄人','钟薛高','/img/a','这是钟薛高',30,1);
insert into product values(2,'小黄人','钟薛高','/img/a','这是钟薛高',20,1);
insert into product values(3,'小黄人','钟薛高','/img/a','这是钟薛高',70,1);
insert into product values(4,'小黄人','钟薛高','/img/a','这是钟薛高',120,1);
insert into product values(5,'小黄人','钟薛高','/img/a','这是钟薛高',110,1);
insert into product values(6,'小黄人','钟薛高','/img/a','钟薛高看有蛋白质雪糕10片海盐椰椰枚荔牛乳椰冰淇淋',60,1);
insert into product values(7,'小黄人','钟薛高','/img/a','钟薛高醇香系列丝绒可可8加纳黑金2巧克力雪糕冰淇淋10片分享装',208,1);
insert into maker values('钟薛高',1);
insert into maker values('茅台',2);
insert into maker values('xxx',3);
insert into index_all values('/img/c','钟薛高品牌');
insert into index_img values(1,'/img/b',1);
insert into index_img values(1,'/img/b',2);
insert into index_img values(1,'/img/b',3);
insert into index_img values(1,'/img/b',4);
insert into index_img values(2,'/img/b',5);
insert into index_img values(2,'/img/b',6);
insert into index_img values(2,'/img/b',7);
insert into index_img values(2,'/img/b',8);
insert into index_img values(3,'/img/b',9);
insert into index_img values(3,'/img/b',10);
insert into mixture_carbon values(1,'碳水化合物','17.8克',6);
insert into mixture_prower values(1,'能量','858克',10);
insert into mixture_protein values(1,'蛋白质','7.0克',12);
insert into mixture_na values(1,'钠','78毫克',6);
insert into mixture_oil values(1,'脂肪','11.8克',4);