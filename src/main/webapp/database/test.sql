show databases;
create database board;
show databases;
use board;

drop table test;
create table test (
    num int(4) not null  auto_increment primary key ,
    title varchar(10) not null ,
    price int not null,
    wdate datetime  default now() 
 );
       
 show tables ;
 desc test ;
 
  insert into  test(title, price) values('kim', 23) ;
  insert into  test(title, price) values('lee', 34) ;
  select * from test ;
  commit ;
  
  
 // 다시 필드추가
   ssi.jsp문서 전역변수  Gname,Gemail,Ghit 3개추가 
 bbs.jsp문서 이름/메일입력란 추가
 bbsCommit.jsp문서 insert ~~ 항목추가 
 bbsList.jsp문서 name필드출력
  
mysql> drop table test ; 
mysql> create table test ( 
         num  int(4) not null  auto_increment primary key  ,          
         title varchar(30) not null ,
         price int not null ,
         wdate  datetime  default now() ,
         name varchar(30) not null ,
         email varchar(30) not null ,
         hit int(3) default 0
      );
mysql> commit ;
mysql> desc test ;

 insert into test(title,price,wdate,name,email) values('cake', 23, now(),'kim','aa@kt.com'); 
 insert into test(title,price,wdate,name,email) values('pizza', 45, now(),'goo','bb@kt.com' ); 
 select * from  test ;
 commit ;
  