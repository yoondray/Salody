<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
<link rel="stylesheet" href="../resources/css/Header.css">
<link rel="stylesheet" href="../resources/css/Footer.css">
<link rel="stylesheet" href="../resources/css/Member_Delete.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<%@include file="../Header.jsp" %>

<div id="delete1">
<h1>회원탈퇴</h1>
<br><br>
<hr color="black">
<br><br><br><br>
<br><br><br><br>
<div id="delete2">
<h3>정상적으로 탈퇴되었습니다.</h3>
그동안 샐로디를 이용해주셔서 감사합니다.
<br><br><br><br>
<br><br>

<button id="GoToHome" type="button" onclick="location.href='/Salody/' ">홈으로 가기</button>

<br><br>
<br><br><br><br>
<hr color="black">
</div>
</div>

<%@include file="../Footer.jsp" %>
</body>
</html>