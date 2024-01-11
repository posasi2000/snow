<%@ page language="java" contentType="text/html; charset=utf-8"   pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>bbs.jsp</title>
<style type="text/css">
   h3 {font-size:20pt; font-weight:bold; color:#ff00ff; }
</style>

<script type="text/javascript">
  var myflag = false;  //전역변수=멤버변수=global
  var mytotal = 0 ;    //전역변수=멤버변수=global
  var mymessage = "안내문"; //전역변수=멤버변수=global
  
  function mycheck(){ //함수를 기술후 반드시 호출
	var mtitle = document.myform.title.value;  //지역변수 
	if (mtitle =="" || mtitle == null){
		//alert("제목데이터를 입력하세요");
		document.getElementById("title_ch").innerHTML="<font style='color:red'>*제목데이터입력하세요*</font>";
		document.myform.title.focus();
		return; //함수탈출 아래문장처리안하고 탈출
	}else{ document.myform.price.focus(); }
	
	var mprice =   document.myform.price.value; //지역변수
	if(mprice=="" || mprice==null) {
		//alert("가격데이터를 입력하세요");
		document.myform.price.focus();
		return; //함수탈출 아래문장처리안하고 탈출
	}else{ document.myform.name.focus(); }
	
	var mname =   document.myform.name.value; //지역변수 
	if(mname=="" || mname==null) {
		//alert("이름데이터를 입력하세요");
		document.myform.name.focus();
		return; //함수탈출 아래문장처리안하고 탈출
	}else{ document.myform.email.focus(); }
	
	
	var memail =   document.myform.email.value; //지역변수 
	
	//input type=submit역할 = document.myform.submit();
	//document.myform.submit(); //저장확인 bbsCommit.jsp문서 이동성공 확인후 주석 
  }//end
</script>


</head>  
<body>
  <div align="center">
     <img src="./images/bar.gif" width=450>
     <h3> bbs.jsp 입력화면 </h3>
     <form name="myform" action="bbsCommit.jsp" method="get">
       제목: <input type=text name="title"  id="title"> 
            <span  id="title_ch"></span><br>
       가격: <input type=text name="price"  id="price">
            <span  id="price_ch"></span><br> 
       이름: <input type=text name="name"   id="name">
            <span  id="name_ch"></span><br> 
       메일: <input type=text name="email"  id="email" > 
            <span  id="email_ch"></span><br>
       <input type="button" onclick="mycheck()" value="전송button"> &nbsp;
       <input type="reset" value="취 소">
     </form>
     
     <p>
   	 <a href="index.jsp">index</a>
   	 <a href="bbs.jsp">글쓰기</a>
   	 <a href="bbsList.jsp">전체출력</a>
  </div>
</body>
</html>



