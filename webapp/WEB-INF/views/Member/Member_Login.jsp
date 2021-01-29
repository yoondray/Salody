<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:if test="${check == 'fail'}">
<script>
	alert("아이디나 비밀번호가 틀렸습니다.")
</script>
</c:if>
<title>LOGIN PAGE</title>
<link rel="stylesheet" href="../resources/css/Header.css">
<link rel="stylesheet" href="../resources/css/Footer.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="../resources/css/Member_Login.css">
<script type="text/javascript" src="../resources/js/Member_Login.js"></script>


</head>
<body>

<%@include file="../Header.jsp" %>


<div id="divT">
<h1>로그인</h1>
<br><br>
<hr color="black">
<br>

<form name="frm1">
	<table id="logTable" >
	<tr>
		<td colspan="5" id="up"></td>
	</tr>
	<tr>
	<td rowspan="6" class="wing"></td><td colspan="3"></td><td rowspan="6" class="wing">
	</tr>
	<tr>
		<td id="idpw">아 이 디</td>
		<td><input type="text" id="bc" size=38 name="id"/></td>
		<td rowspan="2" id="blacklog">
		<input type="submit" id="login" value="로그인" onclick="btn_click('login')" ></td>
	</tr>
	<tr>
		<td id="idpw">비밀번호</td>
		<td><input type="password" id="bc" size=38 name="pw"/></td>
	</tr>
	<tr>
		<td></td><td><input type="button" value="아이디찾기   |" class="findIdPw">
		<input type="button" value="비밀번호찾기" class="findIdPw"></td>
		<td id="secu3">
		<input type="button" value="보안접속" id="security">
		</td>
	</tr>
	<tr>
		<td colspan="5" id="plusheight"></td>
	</tr>
	<tr>
		<td colspan="5" id="up"></td>
	</tr>
	
	<tr>
	<td colspan="5" id="joinTable">
	<input type="submit" id="join" value=" > 회원가입" onclick="btn_click('join')"> </td>
	</tr>
	

	</table>
</form> 
</div>
<br><br><br>
<%@include file="../Footer.jsp" %>

</body>
</html>