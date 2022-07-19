const express=require('express')
const mysql=require('mysql')
const md5 = require('md5');
const app=express()
app.listen(3000,function(){
	console.log('服务器启动')
})
const pool = mysql.createPool({
  host: '127.0.0.1',   //MySQL服务器地址
  port: 3306,          //MySQL服务器端口号
  user: 'root',        //数据库用户的用户名
  password: '',        //数据库用户密码
  database: 'ice_cream',    //数据库名称
  connectionLimit: 20, //最大连接数
  charset: 'utf8'      //数据库服务器的编码方式
});
const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({
  extended: false
}));
const cors=require('cors')
app.use(cors({
  origin: ['http://localhost:8080', 'http://127.0.0.1:8080']
}));
app.get('/show',(req,res)=>{
  let brand=req.query.brand
	let sql=`select *  from product`
  pool.query(sql,[brand],(err,results)=>{
    if(err) throw err
	let data={
		Swiper:[],
		Onefloor:{brand:'钟薛高',pic:[],details:''},
		Twofloor:{brand:'茅台冰淇淋',pic:[],details:''},
		Threefloor:[],
	}
	results.forEach(items=>{
		if(items.brand==data.Onefloor.brand)
		{
			if(items.details)
			data.Onefloor.details=items.details
			if(items.pic)
			data.Onefloor.pic.push(items.pic)
		}else if(items.brand==data.Twofloor.brand)
		{
			if(items.details)
			data.Twofloor.details=items.details
			if(items.pic)
			data.Twofloor.pic.push(items.pic)
		}else if(items.brand=='清凉一夏')
		{
			data.Threefloor.push(items)
		
		}else if(items.brand=='swiper'){
			data.Swiper.push(items.pic)
		}
		
		
		
	})
    res.send({ message: 'ok', code: 200, result: data});
   
  })

})
app.post('/insert',(req,res)=>{
	let phone=req.body.phone
	let uname=req.body.username
	let pwd=req.body.pwd
	let sql=`select userid from users where phone=? and username=?`
	let sql2=`insert into users (username,phone,pwd)  values(?,?,md5(?))`
	pool.query(sql,[phone,uname],(err,results)=>{
		if (err) throw err;
		if(results.length==0){
		pool.query(sql2,[uname,phone,pwd],(err,results)=>{
			if(err) throw err;
			res.send({ message: 'ok', code: 200})
		})
			
		}else{
			res.send({ message: '用户已存在', code: 200})
		}
			
	})
	
})
app.post('/login',(req,res)=>{
	let uname = req.body.username;
	let pwd = req.body.pwd;
	let sql = `select userid,username,pwd from users where username=? and pwd=md5(?)`
	pool.query(sql,[uname,pwd],(err,results)=>{
		if(err) throw err
		console.log(results)
		if(results.length == 0)
		{ 
			res.send({message:'登陆失败',code:201});
		} else {                
			res.send({message:'ok',code:200,result:results[0]});
    }
		
	})
})