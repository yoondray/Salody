<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event Page</title>
<link rel="stylesheet" type="text/css" href="../resources/css/Board_EvtPage.css">
<link rel="stylesheet" href="../resources/css/Footer.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../resources/css/Header.css">
</head>
<body>
<%@include file="../Header.jsp" %>
<div class="tab">
	<button class="tabMenu" style="color:white;">이벤트</button>
	<button onclick="location.href='Board_List'" class="tabMenu" style="color:white;">공지사항</button>
</div>
	<br>
<div class="evt">
<div class="currentEvt" style="margin-left:400px;">
<br><br>
<h2>진행중인 이벤트</h2>
<img src="../resources/img/event12.jpg">
<img src="../resources/img/event02.jpg">
</div>
<br>
<hr>
<br>
<div class="prevEvt" style="margin-left:400px;">
<h2>지난 이벤트</h2>
<img src="../resources/img/event07.jpg">
<br>
</div>

	
</div>
	<%@include file="../Footer.jsp" %>
</body>
</html>