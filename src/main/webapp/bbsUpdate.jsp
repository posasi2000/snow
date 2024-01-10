<%@ page language="java" contentType="text/html; charset=utf-8"   pageEncoding="utf-8" %>
<%@ include file="./ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>bbsUpdate.jsp</title>
<style type="text/css">
   h3 {font-size:20pt; font-weight:bold; color:#ff00ff; }
</style>
</head>
<body>
 <%	 
    String data = request.getParameter("idx");
  	msg = "select * from test where num = " + data;
  	System.out.println("수정 " + msg);
  	ST = CN.createStatement();
   
   	RS = ST.executeQuery(msg);
 if(RS.next()==true){
	Gnum = RS.getInt("num");
	Gtitle = RS.getString("title");
	Gprice =  RS.getInt("price");
	Gwdate = RS.getDate("wdate");
 } //수정편집입력을 위해서 수정대상데이터 조회 
%> 	
	
  <div align="center">
     <img src="./images/bar.gif" width=450>
     <h3> bbsUpdate.jsp 수정화면 </h3>
     <form action="bbsUpdateCommit.jsp" method="get"> <br>
       번호: <input type=text name="num" value="<%= Gnum %>" readonly> <br>
       제목: <input type=text name="title" value="<%= Gtitle %>"> <br>
       가격: <input type=text name="price" value="<%= Gprice %>"> <br>
       <input type=submit value="수 정"> &nbsp;
       <input type=reset value="취 소">
     </form>
     
    <p>
 	<a href="index.jsp">index</a>
 	<a href="bbs.jsp">글쓰기</a>
 	<a href="bbsList.jsp">전체출력</a>
  </div>
</body>
</html>



