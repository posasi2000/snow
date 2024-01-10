<%@ page language="java" contentType="text/html; charset=utf-8"   pageEncoding="utf-8" %>
<%@ include  file="./ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>bbsUpdateCommit.jsp</title>

</head>
<body>
  <div align="center">
     <img src="./images/main_4.jpg" width=350 height=200>
     <h4> bbsUpdateCommit.jsp화면 단독실행금지 </h4>
     
  <%
 	 //bbsUpdateCommit.jsp단독실행하면 에러발생, 단독실행금지 
 	  int d_num = Integer.parseInt( request.getParameter("num") );
 	  String d_title = request.getParameter("title") ;
 	  int d_price = Integer.parseInt( request.getParameter("price") );
 	  System.out.println("수정넘어온 번호 " + d_num + "<br>") ;
 	  System.out.println("수정넘어온 제목 " + d_title + "<br>") ;
 	  System.out.println("수정넘어온 가격 " + d_price  + "<br>") ;
 	   
 	  msg="update test set title=?, price=?, wdate=now() where num=? "; 
 	  System.out.println("수정 " + msg );
 
 	  PST = CN.prepareStatement(msg); 
 	   PST.setString(1, d_title);  //필수 1번째 ?
 	   PST.setInt(2, d_price);     //필수 2번째 ?
 	   PST.setInt(3, d_num);       //필수 3번째 ?
 	  int ok = PST.executeUpdate();  //int ok = PST.executeUpdate(msg); 에러
 	  if (ok>0) {
 		System.out.println("수정 test테이블저수정 성공");
 		response.sendRedirect("bbsList.jsp");
 	  }else{ 
 		System.out.println("수정 test테이블수정처리 실패");
 		response.sendRedirect("index.jsp");
 	  }
  %>
  	 
   
   	 <p>
   	 <a href="index.jsp">index</a>
   	 <a href="bbs.jsp">글쓰기</a>
   	 <a href="bbsList.jsp">게시판</a>
  </div>
</body>
</html>



