<%@ page language="java" contentType="text/html; charset=utf-8"   pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title> test6Table.jsp </title>
</head>
<body>

 
  <table width=900  border="1"  cellspacing="0">
    <caption> <b>table테이블연습</b> </caption>
    <tr bgcolor="yellow">
      <th> 번 호</th> <th> 이 름 </th>  <th> 주 소 </th>
    </tr>
  
    <tr>
      <td> 1100 </td>  <td> 홍길동 </td>  <td> 안양시 </td>
    </tr>
    <tr>
      <td> 2200 </td>  <td> 고길동 </td>  <td> 쌍문동 </td>
    </tr>
     <tr>
      <td> 3300 </td>  <td> 이순신 </td>  <td> 한산도 </td>
    </tr>
  </table>
  
  <p><br>
    <table width=900  border="1"  cellspacing="0">
    <caption> <b>table테이블연습</b> </caption>
    
    <tr align="center">
      <td colspan="3"> <img src="./images/bar.gif" width=450 > </td>  
    </tr>
    
    <tr bgcolor="pink">
      <th> 번 호</th> <th> 이 름 </th>  <th> 주 소 </th>
    </tr>
    
    <tr>
      <td> 1100 </td>  <td> 홍길동 </td>  <td> 안양시 </td>
    </tr>
    <tr>
      <td> 2200 </td>  <td> 고길동 </td>  <td> 쌍문동 </td>
    </tr>
     <tr>
      <td> 3300 </td>  <td> 이순신 </td>  <td> 한산도 </td>
    </tr>
  </table>
  
  
  <br><br>
    <table width=900  border="1"  cellspacing="0">
    <caption> <b>table테이블연습</b> </caption>
    <tr bgcolor="#abcdef" height=50>
      <th> 이미지 </th> <th> 이 름 </th>  <th> 주 소 </th>
    </tr>
  
    <tr>
      <td rowspan="3" width=250> 
        <img src="./images/bbb.gif" width=200 >  
       </td>  
      <td> 홍길동 </td>  <td> 안양시 </td>
    </tr>
    <tr>
       <td> 고길동 </td>  <td> 쌍문동 </td>
    </tr>
     <tr>
       <td> 이순신 </td>  <td> 한산도 </td>
    </tr>
  </table>
  
  
  <br><br><br><br><br><br><br>
</body>
</html>


