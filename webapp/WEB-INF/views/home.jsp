<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/resources/css/main.css" rel="stylesheet">
<link rel="stylesheet" href="resources/css/Footer.css">
<link rel="stylesheet" href="resources/css/Header.css">
<link rel="stylesheet" href="resources/css/home.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Welcome To Salody</title>
</head>
<body>
<div id="container">
<div id="install">
<div>
 <a onclick="location.href='/Salody/Member/Member_Join' " id="install1">샐로디 처음이신가요? 회원가입/ 앱 설치하고 5,000P 할인받으세요! (즉시 사용가능)
	</a>
</div>
</div>

<div style="width: 100%; ">
	<div style="margin-left: 1200px;">
	<nav style="margin-top: 10px; ">
	
	
	
	<c:choose>
		<c:when test = "${loginId!=null}">
			${loginId} 님 환영합니다.
			<a class="nav" href="Logout">로그아웃</a>&nbsp;&nbsp;
		</c:when>
		<c:otherwise>
			<a class="nav" href="/Salody/Member/Member_Login">로그인</a>&nbsp;&nbsp;
		</c:otherwise>
	
	</c:choose>	
	

	<c:choose>
		<c:when test = "${loginId!=null}">
			<a class="nav" href="/Salody/Member/Member_Mypage?id=${loginId}">마이페이지</a>&nbsp;&nbsp;
		</c:when>
		<c:otherwise>
			<a class="nav" href="/Salody/Member/Member_Join">회원가입</a>&nbsp;&nbsp;
		</c:otherwise>	
	</c:choose>	
	
	
	<a class="nav" href="/Salody/Board/Board_List">공지사항 | 이벤트</a>&nbsp;&nbsp;
	
	<!--
	<c:choose>
		<c:when test = "${loginId==genie}">
			<a class="nav" href="#">회원관리</a>&nbsp;&nbsp;
		</c:when>
		<c:otherwise>
			<a class="nav" href="Member_Join">회원가입</a>&nbsp;&nbsp;
		</c:otherwise>				
	</c:choose>	
	  -->
	
	</nav>
	</div>
	<div id="header" style="height: 110px; width: 1200px">
	<div style="width: 150px; height: 100px; float: left;">
			<img id="deli" src="resources/img/delivery.png">
	</div>
	
	<div style="width: 300px; height: 100px; float: left; margin: auto;">
		<a href="/Salody/"><img id="logo" src="resources/img/logo.PNG"></a>
	</div>
	
	</div>
</div>
<div style="width: 100%">
<hr style=" margin-bottom: 15px;">
<div style="width: 100%; text-align: center;">
<ul>
	<li><a class="menu" href="/Salody/Replaced">ITEM</a></li>
	<li><a class="menu" href="/Salody/Replaced">베스트</a></li>
	<li><a class="menu" href="/Salody/Replaced">소비자 트렌드</a></li>
	<li><a class="menu" href="/Salody/Board/Board_EvtPage">이벤트</a></li>
</ul>
</div>
<hr style="margin-top: 15px;">

 

</div>
<div class="section">
		<input type="radio" name="slide" id="slide01" checked>   
		<input type="radio" name="slide" id="slide02">   
		<input type="radio" name="slide" id="slide03">  
	<div class="slidewrap">

		<ul class="slidelist">
		<li>
			<a>
				<label for="slide03" class="left"></label>
				<img src="resources/img/earth.jpg">
				<label for="slide02" class="right"></label>
			</a>
		</li>
	
		<li>
			<a>
				<label for="slide01" class="left"></label>
				<img src="resources/img/deli_pic.jpg">
				<label for="slide03" class="right"></label>
			</a>
		</li>
	
		<li>
			<a>
				<label for="slide02" class="left"></label>
				<img src="resources/img/insta.jpg">
				<label for="slide01" class="right"></label>
			</a>
		</li>
	   
			<div class="slide-control">
				<div class="control01">
					<label for="slide03" class="left"></label>
					<label for="slide02" class="right"></label>
				</div>
				<div class="control02">
					<label for="slide01" class="left"></label>
					<label for="slide03" class="right"></label>
				</div>
				<div class="control03">
					<label for="slide02" class="left"></label>
					<label for="slide01" class="right"></label>
				</div>
			</div>
		</ul>
	</div>
</div>

<%@include file="Footer.jsp" %>
</body>
</html>