<%@ page language="java" contentType="text/html; charset=UTF-8"   %>
<!DOCTYPE html>
<html>
<head>
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="html5">
  <meta name="author" content="kim young">
  
<title></title>
   <style type="text/css">
      * {
         font-size: 14pt; 
         font-weight: bold; 
         font-family: Comic Sans MS ;
        }
        
       #title_ch, #email_ch{ margin-left: 55px; }
   </style>
   
   
 <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    
 <script type="text/javascript">
    var flag=false;  //전역변수
 
 	function check(){
 	  var a=myform.title.value; //제목데이터
 	  
 	  if(a==""  || a==null){
 		document.getElementById("title_ch").innerHTML="<font style='font-size:12pt; color:red'>*제목데이터를 입력하세요*</font>";         
 		myform.title.focus(); 
 		return false;
      }else{
    	document.getElementById("title_ch").innerHTML="";
    	myform.email.focus();
    	return false;
      }
 	  
 	var b=myform.email.value; //메일데이터
	 	 if(b=="" || b==null){
	 		document.getElementById("email_ch").innerHTML="<font style='font-size:12pt; color:red'>*메일데이터를 입력하세요*</font>";
	 		myform.emailfocus(); 
	 		return false;
	     }else{ //공백이 아닐때 정규식 
	    	var mail_reg=/^([a-zA-Z0-9-_\.]{3,15})@([a-zA-Z]{2,15})\.([a-zA-Z]{2,10})$/;
	        if(mail_reg.test(b)==false){
	          document.getElementById("email_ch").innerHTML="<font style='font-size:12pt; color:red'>*sky@nate.com형식으로 입력하세요*</font>";
	          myform.email.value="";
	          myform.email.focus();
	        }else{
	        	document.getElementById("email_ch").innerHTML="";
	        	return false;
	        }
	     }
 	}//end===================================================
 	
    function emailcheck(){
   	 var b=myform.email.value; //메일데이터
 	 if(b=="" || b==null){
 		document.getElementById("email_ch").innerHTML="<font style='font-size:12pt; color:red'>*메일데이터를 입력하세요*</font>";
 		myform.emailfocus(); 
 		return false;
     }else{ //공백이 아닐때 정규식 
    	var mail_reg=/^([a-zA-Z0-9-_\.]{3,15})@([a-zA-Z]{2,15})\.([a-zA-Z]{2,10})$/;
        if(mail_reg.test(b)==false){
          document.getElementById("email_ch").innerHTML="<font style='font-size:12pt; color:red'>*sky@nate.com형식으로 입력하세요*</font>";
          myform.email.value="";
          myform.email.focus();
        }else{
        	document.getElementById("email_ch").innerHTML="";
        	return false;
        }
     }
 	}//end=================================================
 		
 	function info(){
 		 flag=true;
 		 var data=document.myform.sabun.value;
 		 if(data==null || data==""){
 		   alert("중복아이디=사번데이터 공백입니다 \n데이터를 다시 입력하세요");
 		   myform.sabun.focus();
 		   return false;
 		  }
 		window.open("openID.jsp?Gidx="+data, "bc", "width=500,height=150,left=700,top=300"); 
 	}//end====================================================
 		
 	//다음우편번호
	function execDaumPostcode() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            var fullAddr = '';
	            var extraAddr = '';
	            
	            if (data.userSelectedType === 'R') fullAddr = data.roadAddress;
	            else fullAddr = data.jibunAddress;

	            if(data.userSelectedType === 'R') {
	                if(data.bname !== '') extraAddr += data.bname;
	                if(data.buildingName !== '') extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                
	                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
	            }

               document.getElementById('jusocode').value = data.zonecode; //5자리 새우편번호 사용
	           //document.getElementById("jusocode").value = data.postcode;
	           document.getElementById("juso1").value = fullAddr;
	           document.getElementById("juso2").focus();
	        }
	    }).open();
	} //execDaumPostcode end==================================================
		
 	function pwdNumber(){
		//onkeyup="pwdNumber()"
  	   var pwd=myform.sabun.value;   //84b입력
  	   var size=myform.sabun.value.length;
  	   for(var i=0; i<size; i++){
  	    if(pwd.charAt(i)<'0' || pwd.charAt(i)>'9'){
  	      alert("정확한 숫자를 입력하세요");
  	      myform.sabun.value=pwd.substring(0,i); //권장
  	      //myform.user_pwd.value=pwd.substr(0,i);
  	      myform.sabun.focus();
  	    }
  	   }//for end
  	}//end===================================================	
 </script>
 
 
</head>
<body>

<div style="width:1000px; margin-left: 50px" >
  <form name="myform">
   	  사번:<input type=text name="sabun" value="9700" size=10>
   	  <input type=button value="아이디중복" onclick="info();"><br>
          이름:<input type=text name="name"  value="gildong"> <br>
          
   	  제목:<input type=text name="title"> <br>
   	     <span id="title_ch"></span> <br>
   	     
          메일:<input type=text name="email" id="email" onblur="emailcheck();"> <br>
         <span id="email_ch"></span> <br>
         
   	  우편:<input type=text name="jusocode" id="jusocode" size=10>
   	     <input type=button value="우편변호" onclick="execDaumPostcode();">
   	   <br>
   	  주소:<input type=text name="juso1"  id="juso1"> <br>
   	  상세:<input type=text name="juso2"  id="juso2" value="성결관 303호"> <br>
   	  파일:<input type=file name="file"> <p>
   	  <input type="button"  onclick="check();" value="버튼확인">
   	  <input type="reset" value="입력취소">
  </form>
 </div>
  
</body>
</html>



