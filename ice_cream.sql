set names utf8;
drop database if exists ice_cream;
create database ice_cream charset=utf8;
use ice_cream;
create table product(
	pid int primary key auto_increment,    			#编号 主键   
	series varchar(10),		#系列
	brand varchar(20),		#品牌
	pic varchar(50),		#图片	
	details text,			#详细介绍
	price decimal(4,1),		#价格
	id int ,    				#品牌id
	title varchar(20)
);
create table users(
	userid int primary key auto_increment,
	username varchar(20),
	phone varchar(11) unique,
	pwd varchar(20)
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

insert into product(brand,details) values('钟薛高','这是一款和你们共创的产品，<br/>你们说：<br/>要杯装的，<br/>要有梅肉的，<br/>要口感酸酸甜甜的，<br/>要好吃的……他来了');
insert into product(brand,pic) values('钟薛高','VCG211126853830.jpg');
insert into product(brand,pic) values('钟薛高','VCG211222513964.jpg');
insert into product(brand,details)values('茅台冰淇淋','冰醇之爱只为你');
insert into product(brand,pic)values('茅台冰淇淋','0606236251.jpg');
insert into product(brand,title,pic,details)values('清凉一夏','清凉一夏','VCG211126870018.jpg','哇，好好看啊');
insert into product(brand,title,pic,details)values('清凉一夏','清凉一夏','VCG211126849443.jpg','真不错');
insert into product(brand,title,pic,details)values('清凉一夏','清凉一夏','VCG211154262781.jpg','好想吃哦');
insert into product(brand,pic)values('swiper','VCG211163942350.jpg');
insert into product(brand,pic)values('swiper','VCG211222631624.jpg');
insert into product(brand,pic)values('swiper','VCG41N1173571291.jpg');
insert into product(brand,pic)values('swiper','VCG41N1171733545.jpg');
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