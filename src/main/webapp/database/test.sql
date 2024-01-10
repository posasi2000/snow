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
   test테이블삭제후 작성  name필드 varchar(30)  email필드 varchar(30), hit필드  int(3)  
   기존test테이블 alter명령어 추가 
   test(num,title,price,wdate, name,email,hit)

 ssi.jsp문서 전역변수  Gname,Gemail,Ghit 3개추가 
 bbs.jsp문서 이름/메일입력란 추가
 bbsCommit.jsp문서 insert ~~ 항목추가 
 bbsList.jsp문서 name필드출력
  
mysql> drop table test ; 
mysql> create table test ( 
         num  int(4) not null  auto_increment primary key  ,          
         title varchar(30) not null ,
         price int not null ,
         wdate  datetime  default now() 
      );
mysql> commit ;
mysql> desc test ;

 insert into test(title,price,wdate,name,email,hit) values('cake', 23, now(),'kim','lee@kt.com', 0 ); 
 insert into test(title,price,wdate,name,email,hit) values('cake', 23, now(),'kim','lee@kt.com', 0 ); 
 select * from  test ;
 commit ;
  