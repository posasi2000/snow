<%@ page language="java" contentType="text/html; charset=utf-8"   pageEncoding="utf-8" %>
<%@ include file="./ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>bbsDelete.jsp</title>
<style type="text/css">
   h3 {font-size:20pt; font-weight:bold; color:#ff00ff; }
</style>
</head>
<body>
  <div align="center">
     <img src="./images/main_4.jpg" width=350 height=200>
     <h3> bbsDelete.jsp </h3>
   	 <%
   	 try{
   		  Gnum = Integer.parseInt( request.getParameter("idx") ) ;
	   	  msg = "delete from test where  num = " + Gnum ;
	      System.out.println("삭제 " + msg);
	   	 ST = CN.createStatement();
	   	 int ok = ST.executeUpdate(msg); //select쿼리문 ST.executeQuery("select~")
	   	 if (ok>0) {
	   	    System.out.println("삭제 test테이블 삭제성공");
	   	    response.sendRedirect("bbsList.jsp");
	   	 }else{ System.out.println("삭제 test테이블 삭제실패 ");}
   	 }catch(Exception ex){ 
   	     System.out.println("삭제 test테이블 삭제실패 " + ex);
   	     response.sendRedirect("bbsList.jsp");
     }
   	 %>
   	 
  </div>
</body>
</html>



