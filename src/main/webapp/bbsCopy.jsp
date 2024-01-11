<%@ page language="java" contentType="text/html; charset=utf-8"   pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>bbsCopy.jsp</title>
<style type="text/css">
   h3 {font-size:20pt; font-weight:bold; color:#ff00ff; }
</style>

<script type="text/javascript">
  var myflag = false;
  var mytotal = 0 ;
  var mymessage = "안내문";
  
  function mycheck(){ //함수를 기술후 반드시 호출
	var msg = document.myform.title.value;  
	if (msg=="" || msg==null){
		alert("제목데이터를 입력하세요");
		document.myform.title.focus();
	}else{ document.myform.price.focus(); }
  }//end
</script>


</head>  
<body>
  <div align="center">
     <img src="./images/bar.gif" width=450>
     <h3> bbsCopy.jsp 입력화면 </h3>
     <form name="myform" action="bbsCommit.jsp" method="get">
       제목: <input type=text name="title" > <br>
       가격: <input type=text name="price" > <br>
       이름: <input type=text name="name"  value="lee"> <br>
       메일: <input type=text name="email"  value="su@kt.org"> <br>
       <input type="submit" value="전송submit"> &nbsp;
       <input type="reset" value="취 소">
     </form>
     
     <p>
   	 <a href="index.html">index</a>
   	 <a href="bbs.jsp">글쓰기</a>
   	 <a href="bbsList.jsp">전체출력</a>
  </div>
</body>
</html>



