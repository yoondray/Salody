<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기 수정</title>
<link rel="stylesheet" type="text/css" href="../resources/css/Board_Update.css">
<link rel="stylesheet" href="../resources/css/Footer.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../resources/css/Header.css">
</head>
<body>
<%@include file="../Header.jsp" %>
<div id="listUpdate">
<h2>제목을 꼭 입력해주세요</h2>
<br><br>
<form action="/Salody/board/Board_Update" method="post">
<table id="uptListForm">
	<tr>
		<td class="uptList">No</td>
		<td class="udtput">&nbsp;&nbsp;
		<input type="hidden" name="bno" value="${update2.bno}">
		${update2.bno}</td>
	</tr>	
	<!-- name값이 없다면 출력이 안됨 -->
	<tr>
		<td class="uptList">Title<span style="color:red">*</span></td>
		<td class="udtput">&nbsp;&nbsp;
		<input type="text" name="title" placeholder="제목 입력">
		</td>
	</tr>
	<tr>
		<td class="uptList">Writer</td>
		<td class="udtput">&nbsp;&nbsp;
		<input type="hidden" name="writer" value="${update2.writer}">
		${update2.writer}</td>
	</tr>
	<tr>
		<td class="uptList">Content</td>
		<td class="udtput">&nbsp;&nbsp;
		<textarea rows="10" cols="32" name="content"></textarea>
		</td>
	</tr>
	</table>
	<br><br>
	<div class="uptListBtn">	
	<input type="submit" class="uptBtn" value="게시글 수정">
	<input type="reset" class="delBtn" value="취소" onclick="location.href='/board/Board_List'">
	</div>
</form>

</div>
<%@include file="../Footer.jsp" %>
</body>
</html>