<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글쓰기</title>
<link rel="stylesheet" type="text/css" href="../resources/css/Board_Enroll.css">
<script type="text/javascript" src="../resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="../resources/js/Board_Upload.js"></script>
<link rel="stylesheet" href="../resources/css/Footer.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../resources/css/Header.css">
</head>
<body>
<%@include file="../Header.jsp" %>
<div id="enroll">
<h1>게시글 등록</h1>
<br><br>

<!--${name}
<form action="/board/write" method="post" enctype="multiPart/form-data">
<input type="file" name="files" multiple>
<br><br>  -->
<form role="form" action="writePost" method="post" enctype="multipart/form-data">
	
	<table id="enrollForm">
	<tr>
		<td class="enList">제목</td>
		<td class="enput">
		<input type="text" name="title" size="69"></td>
	</tr>
	<tr>
		<td class="enList">글쓴이</td>
		<td class="enput">&nbsp;&nbsp;
		<%=session.getAttribute("loginId")%>
		<input type="hidden" name="writer" value="<%=session.getAttribute("loginId")%>">
		</td>
	</tr>
	<tr>
		<td class="enList">내용</td>
		<td class="enput">
		<div contentEditable="true">
		<textarea rows="10" cols="70" name="content"></textarea></div>
		</td>
	</tr>
	<tr>
		<td class="enList">첨부파일</td>
		<td class="enput">&nbsp;&nbsp;
		<input type="file" name="uploadFile" multiple>
		</td>
	</tr>
	</table>
	<div id="submitB">
	<input type="submit" class="enBtn" value="게시글 등록">
	<input type="reset" class="reBtn" value="취소">
	</div>
<br>

<div class="loadsult">
<ul>
</ul>
</div>
</form>

</div>
<%@include file="../Footer.jsp" %>
</body>
</html>
