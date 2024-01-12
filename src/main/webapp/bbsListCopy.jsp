<%@ page language="java" contentType="text/html; charset=utf-8"   pageEncoding="utf-8" %>
<%@ include  file="./ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>bbsListCopy.jsp</title>
<style type="text/css">
  *{ font-size:16pt; }
</style>

</head>
<body>
<%
 ST = CN.createStatement();
 RS = ST.executeQuery("select count(*) cnt from test ");
 if (RS.next()==true){ Gtotal = RS.getInt("cnt"); }
%>

 <div align="center">
     <img src="./images/main_4.jpg" width=350 height=150>
     <h4> bbsListCopy.jsp화면 단독실행 </h4>
 
<table width=1000 border=1 cellspacing=0 style="margin-left: auto; margin-right: auto;">
  <tr align="right">
    <td colspan="4">  전체레코드갯수: <%= Gtotal %> &nbsp; </td>
  </tr> 
   
  <tr bgcolor="#abcdef">
  	<th> num </th> <th>제 목</th> <th> 가 격 </th> <th> 날 짜 </th>
  </tr> 
<%
  msg="select * from  test "; 
  System.out.println("전체 " +  msg );
	  
  ST = CN.createStatement(); //명령어생성 ST생성
  RS = ST.executeQuery(msg); //RS는 조회한 결과데이터 전체기억 
  while(RS.next()==true){
	Gnum = RS.getInt("num") ;
	Gtitle = RS.getString("title");
	Gprice = RS.getInt("price") ;
  	Gwdate = RS.getDate("wdate") ;
%>
 <tr>
   <td> <%= Gnum  %>  </td>
   <td> <a href="bbsDetail.jsp?idx=<%= Gnum %>"> <%= Gtitle  %> </a> </td>
   <td> <%= Gprice  %> </td>
   <td> <%= Gwdate  %> </td>
 </tr>
 
<% } //while end %>	 
 	 
 </table>  
 
 <p>
 <a href="index.html">index</a>
 <a href="bbs.jsp">글쓰기</a>
 <a href="bbsList.jsp">전체출력</a>
 </div>
</body>
</html>



