<%@ page language="java" contentType="text/html; charset=utf-8"   pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>bbs.jsp</title>
<style type="text/css">
   * {font-size:14pt; font-weight:bold;}
   h3 {font-size:20pt; font-weight:bold; color:#ff00ff; }
   /* id접근을 스타일에서 할때 #접근  */
   #title_ch, #price_ch, #name_ch, #email_ch { margin-left:7px; }
   div {  margin-left:3px; }
</style>

<script type="text/javascript">
  var myflag = false;  //전역변수=멤버변수=global
  var mytotal = 0 ;    //전역변수=멤버변수=global
  var mymessage = "안내문"; //전역변수=멤버변수=global
  
  function mycheck(){ //함수를 기술후 반드시 호출
	var mname = document.myform.name.value; //지역변수 
	if(mname=="" || mname==null) {
		//alert("이름데이터를 입력하세요");
		document.getElementById("name_ch").innerHTML="<font style='color:red'>*이름데이터입력하세요*</font>";
		document.myform.name.focus();
		return; //함수탈출 아래문장처리안하고 탈출
	}else{ document.myform.title.focus(); document.getElementById("name_ch").innerHTML=""; }
	   
	var mtitle = document.myform.title.value;  //지역변수 
	if (mtitle =="" || mtitle == null){
		//alert("제목데이터를 입력하세요");
		document.getElementById("title_ch").innerHTML="<font style='color:red'>*제목데이터입력하세요*</font>";
		document.myform.title.focus();
		return; //함수탈출 아래문장처리안하고 탈출
	}else{ document.myform.price.focus(); document.getElementById("title_ch").innerHTML=""; }
	
	var mprice = document.myform.price.value; //지역변수
	if(mprice=="" || mprice==null) {
		//alert("가격데이터를 입력하세요");
		document.getElementById("price_ch").innerHTML="<font style='color:red'>*가격데이터입력하세요*</font>";
		document.myform.price.focus();
		return; //함수탈출 아래문장처리안하고 탈출
	}else{ document.myform.email.focus(); document.getElementById("price_ch").innerHTML=""; }
	
	
	var memail = document.myform.email.value; //지역변수 
	if(memail=="" || memail==null) {
	   //alert("이름데이터를 입력하세요");
	   document.getElementById("email_ch").innerHTML="<font style='color:red'>*메일데이터입력하세요*</font>";
	   document.myform.email.focus();
	   return; //함수탈출 아래문장처리안하고 탈출
	}else{   
		//document.getElementById("email_ch").innerHTML="";
		//var mail_reg="/^()@().()$/";
		var mail_reg=/^([a-z0-9]{2,10})@([a-z]{2,10})\.([a-z]{2,5})$/
		if(mail_reg.test(memail)==false){ //체크함수test( )
		 document.getElementById("email_ch").innerHTML="<font style='color:red'>*sky@nate.com형식*</font>";
		 document.myform.email.value = "";
		 document.myform.email.focus();
		}else{document.getElementById("email_ch").innerHTML=""; }
	}
	
	if(myflag == false){
		alert("아이디 이름중복체크 버튼을 클릭하세요");
		return ; 
	}
	//input type=submit역할 = document.myform.submit();
	//document.myform.submit(); //저장확인 bbsCommit.jsp문서 이동성공 확인후 주석 
  }//end
  
  
  function info(){
	  myflag=true;//전역변수
	  var data = myform.name.value;
	  if(data=="" || data==null){
		 alert("이름데이터가 공백입니다\n이름데이터를 입력하세요");
		 myform.name.focus();
		 return ; //함수탈출
	  }
	  window.open("bbsID.jsp?Gidx="+data ,"ab", "width=500,height=150,top=100");
  }//end
</script>

</head>  
<body>
  <div>
     <img src="./images/bar.gif" width=450>
     <h3> bbs.jsp 입력화면 </h3>
     <form name="myform" action="bbsCommit.jsp" method="get">
       이름: <input type=text name="name"   id="name" size=10>
            <span  id="name_ch"></span><input type=button value="중복체크" onclick="info()"><br> 
          
       제목: <input type=text name="title"  id="title" value="note">
            <span  id="title_ch"></span><br>
       가격: <input type=text name="price"  id="price" value="23">
            <span  id="price_ch"></span><br>   
       메일: <input type=text name="email"  id="email"  value="kim@sku.org">
            <span  id="email_ch"></span><br>
       <input type="button" onclick="mycheck()" value="전송button"> &nbsp;
       <input type="reset" value="취 소">
     </form>
     
     <p>
   	 <a href="index.html">index</a>
   	 <a href="bbs.jsp">글쓰기</a>
   	 <a href="bbsList.jsp">전체출력</a>
  </div>
</body>
</html>



