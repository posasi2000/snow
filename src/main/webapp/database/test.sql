포트확인및 포트삭제 
C:\~> netstat -ano
C:\~> tastkill /F /pid 포트번호4628

C:\~> mysql -u root  -p 
enter password : 1234


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
 
 insert into test(title,price,wdate,name,email) values('desk', 56, now(),'park','pk@xyz.com' ); 
 insert into test(title,price,wdate,name,email) values('note', 98, now(),'choi','ch@abc.com' );
 commit ;
  
 
 insert into test(title,price,wdate,name,email) values
  ('book', 71, now(),'kim','aa@kt.com'),
  ('aaa', 21, now(),'kim','aa@lg.org'),('aab', 22, now(),'kim','aa@lg.org'),
  ('aac', 23, now(),'kim','aa@lg.org'),('aad', 24, now(),'kim','aa@lg.org'),
  ('aae', 25, now(),'kim','aa@lg.org'),('aae', 26, now(),'kim','aa@lg.org'),
  ('aaf', 27, now(),'kim','aa@lg.org'),('aag', 28, now(),'kim','aa@lg.org'),
  ('aah', 28, now(),'kim','aa@lg.org'),('aai', 20, now(),'kim','aa@lg.org'),

  ('bba', 21, now(),'lee','vv@kt.org'),('bbb', 21, now(),'lee','vv@kt.org'),
  ('bbc', 21, now(),'lee','vv@kt.org'),('bbd', 21, now(),'lee','vv@kt.org'),
  ('bbe', 21, now(),'lee','vv@kt.org'),('bbf', 21, now(),'lee','vv@kt.org'),
  ('bbg', 21, now(),'lee','vv@kt.org'),('bbh', 21, now(),'lee','vv@kt.org'),
  ('bbi', 21, now(),'lee','vv@kt.org'),('bbj', 21, now(),'lee','vv@kt.org'),
    
   ('cca', 41, now(),'goo','gg@sk.com'),('ccb', 41, now(),'goo','gg@sk.com'),
   ('ccc', 41, now(),'goo','gg@sk.com'),('ccd', 41, now(),'goo','gg@sk.com'),
   ('cce', 41, now(),'goo','gg@sk.com'),('ccf', 41, now(),'goo','gg@sk.com'),
   ('ccg', 41, now(),'goo','gg@sk.com'),('cch', 41, now(),'goo','gg@sk.com'),
   ('cci', 41, now(),'goo','gg@sk.com'),('ccj', 41, now(),'goo','gg@sk.com'),
 
  ('dda', 78, now(),'woo','do@sk.com'),('ddb', 78, now(),'woo','do@sk.com'),
  ('ddc', 78, now(),'woo','do@sk.com'),('ddd', 78, now(),'woo','do@sk.com'),
  ('dde', 78, now(),'woo','do@sk.com'),('ddf', 78, now(),'woo','do@sk.com'),
  ('ddg', 78, now(),'woo','do@sk.com'),('ddh', 78, now(),'woo','do@sk.com'),
  ('ddi', 78, now(),'woo','do@sk.com'),('ddj', 78, now(),'woo','do@sk.com'),
 
  ('eea', 21, now(),'kim','do@dt.com'),('eeb', 21, now(),'kim','do@dt.com'),
  ('eec', 21, now(),'kim','do@dt.com'),('eed', 21, now(),'kim','do@dt.com'),
  ('eee', 21, now(),'kim','do@dt.com'),('eef', 21, now(),'kim','do@dt.com'),
  ('eeg', 21, now(),'kim','do@dt.com'),('eeh', 21, now(),'kim','do@dt.com'),
  ('eei', 21, now(),'kim','do@dt.com'),('eej', 21, now(),'kim','do@dt.com'),
  
  ('ffa', 54, now(),'foo','ff@bc.com'),('ffb', 54, now(),'foo','ff@bc.com'),
  ('ffc', 54, now(),'foo','ff@bc.com'),('ffd', 54, now(),'foo','ff@bc.com'),
  ('ffe', 54, now(),'foo','ff@bc.com'),('fff', 54, now(),'foo','ff@bc.com'),
  ('ffg', 54, now(),'foo','ff@bc.com'),('ffh', 54, now(),'foo','ff@bc.com'),
  ('ffi', 54, now(),'foo','ff@bc.com'),('ffj', 54, now(),'foo','ff@bc.com'),
  
  ('gga', 54, now(),'lee','gg@bc.com'),('ggb', 73, now(),'lee','gg@bc.com'),
  ('ggc', 54, now(),'lee','gg@bc.com'),('ggd', 73, now(),'lee','gg@bc.com'),
  ('gge', 54, now(),'lee','gg@bc.com'),('ggf', 73, now(),'lee','gg@bc.com'),
  ('ggg', 54, now(),'lee','gg@bc.com'),('ggh', 73, now(),'lee','gg@bc.com'),
  ('ggi', 54, now(),'lee','gg@bc.com'),('ggj', 73, now(),'lee','gg@bc.com'),
  
  ('hha', 14, now(),'shin','sh@kt.com'),('hhb', 14, now(),'shin','sh@kt.com'),
  ('hhc', 14, now(),'shin','sh@kt.com'),('hhd', 14, now(),'shin','sh@kt.com'),
  ('hhe', 14, now(),'shin','sh@kt.com'),('hhf', 14, now(),'shin','sh@kt.com'),
  ('hhg', 14, now(),'shin','sh@kt.com'),('hhh', 14, now(),'shin','sh@kt.com'),
  ('hhi', 14, now(),'shin','sh@kt.com'),('hhj', 14, now(),'shin','sh@kt.com'),
  
  ('iia', 19, now(),'shin','sh@kt.com'),('iib', 19, now(),'shin','sh@kt.com'),
  ('iic', 19, now(),'shin','sh@kt.com'),('iid', 19, now(),'shin','sh@kt.com'),
  ('iie', 19, now(),'shin','sh@kt.com'),('iif', 19, now(),'shin','sh@kt.com'),
  ('iig', 19, now(),'shin','sh@kt.com'),('iih', 19, now(),'shin','sh@kt.com'),
  ('iii', 19, now(),'shin','sh@kt.com'),('iij', 19, now(),'shin','sh@kt.com'),
  
  ('kka', 21, now(),'park','ko@kt.com'), ('kkb', 21, now(),'park','ko@kt.com'),
  ('kkc', 21, now(),'park','ko@kt.com'), ('kkd', 21, now(),'park','ko@kt.com'),
  ('kke', 21, now(),'park','ko@kt.com'), ('kkf', 21, now(),'park','ko@kt.com'),
  ('kkg', 21, now(),'park','ko@kt.com'), ('kkh', 21, now(),'park','ko@kt.com'),
  ('kki', 21, now(),'park','ko@kt.com'), ('kkj', 21, now(),'park','ko@kt.com'),
  
  ('tta', 31, now(),'tea','tt@sk.com'), ('ttb', 31, now(),'tea','tt@sk.com'),
  ('ttc', 31, now(),'tea','tt@sk.com'), ('ttd', 31, now(),'tea','tt@sk.com'),
  ('tte', 31, now(),'tea','tt@sk.com'), ('ttf', 31, now(),'tea','tt@sk.com'),
  ('ttg', 31, now(),'tea','tt@sk.com'), ('tth', 31, now(),'tea','tt@sk.com'),
  ('tti', 31, now(),'tea','tt@sk.com'), ('ttj', 31, now(),'tea','tt@sk.com') ;
  commit ;
  select * from test ;
  
   insert into test(title,price,wdate,name,email) values
  ('sta', 31, now(),'tea','m@bc.com'), ('mtb', 31, now(),'tea','m@bc.com'),
  ('stc', 31, now(),'tea','m@bc.com'), ('mtd', 31, now(),'tea','m@bc.com'),
  ('ste', 31, now(),'tea','m@bc.com'), ('mtf', 31, now(),'tea','m@bc.com'),
  ('stg', 31, now(),'tea','m@bc.com'), ('mth', 31, now(),'tea','m@bc.com'),
  ('sti', 31, now(),'tea','m@bc.com'), ('mtj', 31, now(),'tea','m@bc.com'),
  
  ('mta', 31, now(),'rim','m@sk.com'), ('mtb', 31, now(),'aea','m@sk.com'),
  ('mtc', 31, now(),'rim','m@sk.com'), ('mtd', 31, now(),'bea','m@sk.com'),
  ('mte', 31, now(),'rim','m@sk.com'), ('mtf', 31, now(),'cea','m@sk.com'),
  ('mtg', 31, now(),'rim','m@sk.com'), ('mth', 31, now(),'aea','m@sk.com'),
  ('mti', 31, now(),'rim','m@sk.com'), ('mtj', 31, now(),'aea','m@sk.com'),
  
  ('bta', 31, now(),'ared','m@sk.com'), ('btb', 31, now(),'aea','m@sk.com'),
  ('btc', 31, now(),'nred','m@sk.com'), ('btd', 31, now(),'bea','m@sk.com'),
  ('bte', 31, now(),'kred','m@sk.com'), ('btf', 31, now(),'cea','m@sk.com'),
  ('btg', 31, now(),'lred','m@sk.com'), ('bth', 31, now(),'stea','m@sk.com'),
  ('bti', 31, now(),'mred','m@sk.com'), ('btj', 31, now(),'mtea','m@sk.com'),
    
  ('mta', 31, now(),'wtea','m@sk.com'), ('rtb', 31, now(),'rea','m@sk.com'),
  ('mtc', 31, now(),'mtea','m@sk.com'), ('rtd', 31, now(),'ptea','m@sk.com'),
  ('mte', 31, now(),'rtea','m@sk.com'), ('rtf', 31, now(),'otea','m@sk.com'),
  ('mtg', 31, now(),'tea','m@sk.com'), ('rth', 31, now(),'ltea','m@sk.com'),
  ('mti', 31, now(),'ytea','m@sk.com'), ('rtj', 31, now(),'mtea','m@sk.com'),
  
  ('zta', 31, now(),'abc','m@sk.com'), ('ptb', 31, now(),'ntea','m@sk.com'),
  ('ztc', 31, now(),'abc','m@sk.com'), ('ptd', 31, now(),'btea','m@sk.com'),
  ('zte', 31, now(),'abc','m@sk.com'), ('ptf', 31, now(),'atea','m@sk.com'),
  ('ztg', 31, now(),'abc','m@sk.com'), ('pth', 31, now(),'xtea','m@sk.com'),
  ('zti', 31, now(),'abc','m@sk.com'), ('ptj', 31, now(),'ctea','m@sk.com');
  commit ;
  select * from test ;
 
 insert into test(title,price,wdate,name,email) values('java', 98, now(),'you','ch@abc.com' );
 commit ;
 select * from test ;
 
 
 
 
 