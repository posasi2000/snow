<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.sql.*" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>  </title>
<style type="text/css">
   h3 {font-size:20pt; font-weight:bold; color:#ff00ff; }
   a{font-weight:bold; color:blue; text-decoration:none; }
   a:hover{font-size:20pt; color:green; text-decoration:underline; font-family: comic Sans MS; Consolas; 궁서체;  }
</style>
</head>
<body>

 <%!
  Connection CN; //db서버연결정보, 명령어생성할때 참조
  Statement ST; //명령어생성 ST = CN.createStatement()
  PreparedStatement PST; //속도가빠름 PST = CN.prepareStatement("insert~/update~")
  ResultSet RS; //select조회한결과 RS=ST.executeQuery("select~~")
 
   String Gtitle;
   int Gnum, Gprice, Gtotal;
   java.util.Date  Gwdate;
   String msg = ""; //database=DB인식하는 언어 SQL
		   
   String Gname, Gemail ;
   int Ghit;
 %>
   <h2> </h2>
 <%
  try{
	  //순서1 db데이터베이스 드라이브연결
	   //Class.forName("oracle.jdbc.driver.OracleDriver");
	   //System.out.println("오라클드라이브 연결성공   ");
	   //out.println("오라클드라이브 연결성공   ");
	   Class.forName("com.mysql.jdbc.Driver");
	   //System.out.println("mysql드라이브 연결성공  ");
	   out.println("mysql드라이브 연결성공  <br>");
	   
	   //순서2 db데이터베이스 서버정보주소및포트 계정id/pwd
	   //String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
	   //CN=DriverManager.getConnection(url ,"system","1234");
	   //System.out.println("오라클서버정보및 id,pwd 연결성공   ");
	   //out.println("오라클서버정보및 id,pwd 연결성공   ");
	   
	   String url="jdbc:mysql://localhost:3306/board";
	   CN=DriverManager.getConnection(url ,"root","1234");
	   //System.out.println("mysql서버정보및 id,pwd 연결성공  ");
	   out.println("mysql서버정보및 id,pwd 연결성공 <br>");
  }catch(Exception ex){
	 System.out.println("에러발생 " + ex);
	 out.println("database 에러 " + ex.toString());
  }
 %>
</body>
</html>



