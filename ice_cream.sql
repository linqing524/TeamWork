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
	pwd varchar(32)
);
		
create table mixture (
	id int , 
	nname varchar(10), 
	content varchar(10),  #每100克含量
	reference int  #参考值
);
create table products(
	pid int primary key,
	title text,
	price decimal(5,2),
	iscar tinyint(1),
	isadd tinyint(1),
	pic varchar(20)
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

insert into mixture values(1,'碳水化合物','17.8克',6);
insert into mixture values(1,'能量','858克',10);
insert into mixture values(1,'蛋白质','7.0克',12);
insert into mixture values(1,'钠','78毫克',6);
insert into mixture values(1,'脂肪','11.8克',4);

insert into products values(1,'加油',152,1,0,'/img/a');
insert into products values(2,'快乐',34,1,0,'/img/a');
insert into products values(3,'马上',88.3,1,0,'/img/a');
insert into products values(4,'相信我',44.5,1,0,'/img/a');
insert into products values(5,'的SV',190.22,1,0,'/img/a');
insert into products values(6,'时代VSVS',152,1,0,'/img/a');