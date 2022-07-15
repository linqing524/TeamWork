const express=require('express')
const mysql=require('mysql')
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
		Onefloor:['钟薛高',],
		Twofloor:['中学高系列',],
		Threefloor:['xxxxilie',],
	}
	results.forEach(items=>{
		if(items.brand==data.Onefloor[0])
		{
			data.Onefloor.push(items)
		}else if(items.brand==data.Twofloor[0])
		{
			data.Twofloor.push(items)
		}else if(items.brand==data.Twofloor[0])
		{
			data.Threefloor.push(items)
		}
		
		
		
	})
    res.send({ message: 'ok', code: 200, result: data});
   
  })

})