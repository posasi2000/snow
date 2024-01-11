<%@ page language="java" contentType="text/html; charset=utf-8"   pageEncoding="utf-8" %>
<%@ include  file="./ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title> bbsDetail.jsp </title>
<style type="text/css">
  *{ font-size:20pt; }
</style>

</head>
<body>
 <div align="center">
     <img src="./images/main_4.jpg" width=450 height=150>
     <h4> bbsDetail.jsp화면 단독실행X </h4>
 
<%
  String data = request.getParameter("idx");
  msg="select * from  test  where num = " + data ; 
  System.out.println("상세 " +  msg );
	  
  ST = CN.createStatement(); //명령어생성 ST생성
  RS = ST.executeQuery(msg); //RS는 조회select~~무조건 실행함수 executeQuery("select~~") 
  if(RS.next()==true){
	Gnum = RS.getInt("num") ;
	Gtitle = RS.getString("title");
	Gprice = RS.getInt("price") ;
  	Gwdate = RS.getDate("wdate") ;
  } //while반복문대신 if제어문변경
  	//한건상세문서 bbsDetail.jsp문서 
%>

<table width=1000 border=1 cellspacing=0   style="margin-left: auto; margin-right: auto;">
  <tr align="center" bgcolor="#abcdef" style="color:white">
    <th colspan="2" height=50> 상세정보출력 </th>
  <tr>
  
  <tr align="center">
  	<td rowspan="4" align="center" width=350  style="padding:0px;"> 
  		<img src="./images/hydran.png" width=400 height=300> 
  	</td>
  	<td> 번 호 : <%= Gnum %> </td>
  </tr>
  
  <tr align="center">
  	<td colspan="2"> 제 목: <%= RS.getString("title") %> </td>
  </tr>
  
  <tr align="center">
  	<td colspan="2"> 가 격: <%= RS.getInt("price") %> </td>
  </tr>
  
  <tr align="center">
  	<td colspan="2"> 날 짜:  <%= RS.getDate("wdate") %> </td>
  </tr>
 
  <tr align="center">
   <td colspan="2" height=50 >
       <a href="index.html">index</a>
       <a href="bbsUpdate.jsp?idx=<%= Gnum %>">[수정]</a>
  	   <a href="bbsList.jsp">[전체출력]</a>
  	   <a href="bbsDelete.jsp?idx=<%= Gnum %>">[삭제]</a>
   </td>
  </tr>
 </table>

 </div>
</body>
</html>


<%
// insert into test(title,price) values( 'bc', 20 ) ; 
// insert into test(title,price) values( 'kb', 30 ) ; 
// insert into test(title,price) values( 'ck', 40 ) ; 
// insert into test(title,price) values( 'sk', 50 ) ; 
// insert into test(title,price) values( 'sm', 60 ) ;
// commit ;
// select * from  test ;
%>



