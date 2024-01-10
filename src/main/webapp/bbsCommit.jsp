<%@ page language="java" contentType="text/html; charset=utf-8"   pageEncoding="utf-8" %>
<%@ include  file="./ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>bbsCommit.jsp</title>

</head>
<body>
  <div align="center">
     <img src="./images/main_4.jpg" width=350 height=200>
     <h4> bbsCommit.jsp화면 단독실행금지 </h4>
   	 <%
   	 //bbs.jsp문서에서 데이터 입력후 submit=전송
   	 //bbsCommit.jsp단독실행하면 에러발생, 단독실행금지 
   	 //request내장객체는 문자열로 전송
   	  Gtitle = request.getParameter("title") ;
   	  Gprice = Integer.parseInt( request.getParameter("price") );
   	  out.println("넘어온 제목 " + Gtitle + "<br>") ;
   	  out.println("넘어온 가격 " + Gprice  + "<br>") ;
   	  
   	  //bbsCommit.jsp단독실행하면 에러발생, 단독실행금지 
   	  //insert into test(title,price,wdate) values('cake', 23, now() ); 
   	  //msg="insert into test(title,price,wdate) values('kim', 78, now() )"; 
   	  msg="insert into test(title,price,wdate) values('" + Gtitle + "', "+ Gprice + ", now() )"; 
   	  System.out.println( msg );
   	  out.println( msg );
   	  
   	  //DB드라이브연결성공, DB서버 포트/계정/비번  연결성공이면 
   	  //명령어생성 ST생성
	  ST = CN.createStatement(); //명령어생성 ST생성
   	  int ok=ST.executeUpdate(msg); //쿼리명령어진짜 실행처리 
   	  if (ok>0) {
   		System.out.println("test테이블저장 성공");
   		out.println("test테이블저장 성공");
   		response.sendRedirect("bbsList.jsp");
   	  }else{ 
   		System.out.println("test테이블저장 실패");
   		response.sendRedirect("index.jsp");
   	  }
   	 %>
   	 
   
   	 <p>
   	 <a href="index.jsp">index</a>
   	 <a href="bbs.jsp">글쓰기</a>
   	 <a href="#">게시판</a>
  </div>
</body>
</html>



