<%@ page language="java" contentType="text/html; charset=utf-8"   pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>bbs.jsp</title>
<style type="text/css">
   h3 {font-size:20pt; font-weight:bold; color:#ff00ff; }
</style>
</head>  
<body>
  <div align="center">
     <img src="./images/bar.gif" width=450>
     <h3> bbs.jsp 입력화면 </h3>
     <form action="bbsCommit.jsp" method="get">
       제목: <input type=text name="title" > <br>
       가격: <input type=text name="price" value="27"> <br>
       이름: <input type=text name="name"  value="kim"> <br>
       메일: <input type=text name="email"  value="su@kt.org"> <br>
       <input type="submit" value="전송submit"> &nbsp;
       <input type="reset" value="취 소">
     </form>
     
     <p>
   	 <a href="index.jsp">index</a>
   	 <a href="bbs.jsp">글쓰기</a>
   	 <a href="bbsList.jsp">전체출력</a>
  </div>
</body>
</html>



