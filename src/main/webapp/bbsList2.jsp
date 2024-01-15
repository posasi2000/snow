<%@ page language="java" contentType="text/html; charset=utf-8"   pageEncoding="utf-8" %>
<%@ include  file="./ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>bbsList2.jsp</title>
<style type="text/css">
  *{ font-size:16pt; }
</style>

</head>
<body>
<%
 ST = CN.createStatement();
 RS = ST.executeQuery("select count(*) cnt from test ");
 if (RS.next()==true){ Gtotal = RS.getInt("cnt"); }

 //페이징및 검색관련 변수 
 String pnum="";  //a href=bbsList.jsp?page=16  [3클릭]
 int pageNUM=0;  //문자3을 숫자3로 변환해서 받는숫자
 int pagecount=0; 
 int start=0, end=0;  //[3클릭]  start=21  end=30
 int startpage, endpage;// [1startpage]~[3클릭]~[10endpage]
 int tmp=0;   //tmp = (27-1)%10  temp=6기억  [21] ~ [27클릭] ~ [30]

 String sqry="";  //조회쿼리문 중첩 
 String skey="", sval="" ; //skey=title필드  sval=p입력
 String returnpage="";  //페이지번호기억 a href=guestList.jsp?pageNum=16 [16]	
 
		 
 //첫번째문제1]  a href=bbsList.jsp?page=3 [3클릭]
 pnum = request.getParameter("page");
 if(pnum==null || pnum==""){ pnum="1"; } 
 pageNUM = Integer.parseInt(pnum); 
 start = (pageNUM-1)*10 + 1  ;   
 end = 10 ; 

 
 //두번째문제2] Gtotal총레코드데이터갯수  316, pagecount총페이지수 32페이지
 if(Gtotal%10==0){ pagecount=Gtotal/10; }
 else{ pagecount=(Gtotal/10)+1; }
 System.out.println("총데이터수: " + Gtotal +"   총페이지수: " + pagecount);

 //세번째문제3] 
 tmp = (pageNUM-1)%10; 
 startpage = pageNUM-tmp; 
 endpage = startpage+9 ; 
 if(endpage>pagecount){ endpage=pagecount; }
%>

 <div align="center">
     <img src="./images/main_4.jpg" width=350 height=150>
     <h4> bbsList2.jsp화면 단독실행 </h4>
 
<table width=1000 border=1 cellspacing=0 style="margin-left: auto; margin-right: auto;">
  <tr align="right">
    <td colspan="4">
       <a href="index.html">[index]</a>
       <a href="bbsList2.jsp">[전체출력2]</a> &nbsp;&nbsp;
      전체레코드갯수: <%= Gtotal %> &nbsp; 
     </td>
  </tr> 
   
  <tr bgcolor="#abcdef">
  	<th> num </th> <th>제 목</th> <th> 가 격 </th> <th> 날 짜 </th>
  </tr> 
<%
  //msg="select * from  test ";
  msg="select * from  test limit " + start + ", " + end ;
  System.out.println("\n전체 " +  msg );
	  
  ST = CN.createStatement(); //명령어생성 ST생성
  RS = ST.executeQuery(msg); //RS는 조회한 결과데이터 전체기억 
  while(RS.next()==true){
	Gnum = RS.getInt("num") ;
	Gtitle = RS.getString("title");
	Gprice = RS.getInt("price") ;
  	Gwdate = RS.getDate("wdate") ;
%>
 <tr>
   <td> <%= Gnum  %>  </td>
   <td> <a href="bbsDetail.jsp?idx=<%= Gnum %>"> <%= Gtitle  %> </a> </td>
   <td> <%= Gprice  %> </td>
   <td> <%= Gwdate  %> </td>
 </tr>
 
<% } //while end %>	 
 
 
 <tr align="center">
  <td colspan="4"> 
  <%
    //[이전]
   if(startpage>10){  
    out.println("<a href=bbsList2.jsp?page="+(startpage-10) +">[이전]</a>");	 
   }


   for(int i=startpage; i<=endpage; i++){
    	if(i==pageNUM){
    	 out.println("<font style='font-size:22pt; color:red'>["+i+"]</font>");	
    	}else{
    	 out.println("<a href=bbsList2.jsp?page="+i+">["+i+"]</a>");
    	}
    }//for end
   
   
    //다음
    if(endpage<pagecount){  
     out.println("<a href=bbsList2.jsp?page="+(startpage+10) +">[다음]</a>");	 
    }
  %>
  </td>
 </tr>	 
 </table>  
 
 <p>
 <a href="index.html">index</a>
 <a href="bbs.jsp">글쓰기</a>
 <a href="bbsList2.jsp">전체출력2</a>
 </div>
</body>
</html>


