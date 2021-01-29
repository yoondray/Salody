<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<script type="text/javascript" src="../resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="../resources/js/Member_Mypage.js"></script> 
<link rel="stylesheet" href="../resources/css/Footer.css">
<link rel="stylesheet" href="../resources/css/Header.css">
<link rel="stylesheet" href="../resources/css/Member_Mypage.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
<%@include file="../Header.jsp" %>

<form name="frm2">
<div id="join">
<h1>마이페이지 </h1>
<br><br>
<hr color="black">
<br><br><br><br>
<h3>기본정보</h3>
<table id="info" >
  <tr>
    <td class="sub">아이디</td>
    <td class="in">&nbsp;&nbsp;${Mypage.id}<br>
    <input type="hidden" name="id" value="${Mypage.id}"></td>
  </tr>
  <tr>
    <td class="sub">이름</td>
    <td>&nbsp;&nbsp;${Mypage.user_name}<br>
    <input type="hidden" name="user_name" value="${Mypage.user_name}"></td>
 </tr>
  <tr style="height: 100px;">
    <td class="sub">주소</td>
    <td class="in">&nbsp;&nbsp;${Mypage.addr}<br>
    <input type="hidden" name="addr" value="${Mypage.addr}"></td>
  </tr>
  <tr>
    <td class="sub">휴대전화</td>
    <td class="in">&nbsp;&nbsp;${Mypage.phone}<br>
    <input type="hidden" name="phone" value="${Mypage.phone}"></td>
  </tr>
  <tr style="height: 65px;">
    <td class="sub">이메일</td>
    <td class="in">&nbsp;&nbsp;${Mypage.email}<br>
    <input type="hidden" name="email" value="${Mypage.email}"></td>
  </tr>
</table>  
  <br><br><br><br>
<h3>추가정보</h3>
<br>
<table id="info2">
	<tr>
		<td class="sub">성별</td>
		<td class="in">&nbsp;&nbsp;${Mypage.gender}<br>
    <input type="hidden" name="gender" value="${Mypage.gender}"></td>
	</tr>
	<tr>
	<td class="sub">생년월일</td>
	<td class="in">&nbsp;&nbsp;${Mypage.birth}<br>
    <input type="hidden" name="birth" value="${Mypage.birth}"></td>
	</tr>
</table>


<div id="submitB">
<input type="submit" id="Update" value="개인정보 수정" onclick="btn_click('Update')" class="bu">
<input type="submit" id="Delete" value="탈퇴하기" onclick="btn_click('Delete')"class="bu">
</div>
<br><br><br><br><br><br><br><br>

</div>
</form>







<div style="margin-bottom: 150px;"></div>
<%@include file="../Footer.jsp" %>
</body>
</html>