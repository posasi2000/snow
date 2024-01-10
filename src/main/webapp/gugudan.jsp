<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>gugudan.jsp</title>
</head>
<body>
<h2>gugudan.jsp문서 </h2>

  int dan=7 ;
  for(int i=1; i<10; i++){
   System.out.println(dan+"*"+i+"="+(dan*i));
  }
  
 <p>
<%
 int dan=7 ;
 for(int i=1; i<10; i++){
   System.out.println(dan+"*"+i+"="+(dan*i)); //console
   out.println(dan+"*"+i+"="+(dan*i)+"<br>"); //web
 }
 
 String title="monday" ;
 int age = 21;
 
 //문제1 제목 , 나이 웹브라우저 jsp내장객체 out웹화면출력
 out.println("<br>");
 out.println("제목 : " + title + "<br>");
 out.println("나이 : " + age);
 
%>


</body>
</html>





