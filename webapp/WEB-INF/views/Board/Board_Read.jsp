<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detail</title>
<link rel="stylesheet" href="../resources/css/Header.css">
<link rel="stylesheet" type="text/css" href="../resources/css/Board_Read.css">
<link rel="stylesheet" href="../resources/css/Footer.css">
<script type="text/javascript" src="../resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="../resources/js/Board_Reply.js"></script>
<script type="text/javascript" src="../resources/js/Board_Detail.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<%@include file="../Header.jsp" %>
<div id="read">
<h1>게시판 상세리스트입니다.</h1>
<br>

<div class="read"> 
<form name="frm1" action="/Salody/board/Board_Update" method="post">
<table id="detailForm">
	<tr>
		<td class="readList">글 번호</td>
		<td class="reput">&nbsp;&nbsp;
		<input type="hidden" id="bno" name="bno" value="${detail2.bno}">
		${detail2.bno}</td>
	</tr>
	<tr>
		<td class="readList">글쓴이</td>
		<td class="reput">&nbsp;&nbsp;
		<input type="hidden" name="writer" value="${detail2.writer}">
		${detail2.writer}</td>
	</tr>	
	<tr>
		<td class="readList">글 제목</td>
		<td class="reput">&nbsp;&nbsp;${detail2.title}</td>
	</tr>	
	<tr id="cntDetail">
		<td  class="readList">글 내용</td>
		<td colspan="3"  class="reput_content">&nbsp;&nbsp;
		${detail2.content}<br>
			<div class="readult">
			<ul></ul>
			</div>
		</td>
	</table>

	
		<div class="buttons">
		<input type="submit" class="uptBtn" value="게시글 수정" onclick="btn_click('update')"/>
		<input type="submit" class="delBtn" value="삭제"onclick="btn_click('delete')"/>
		<span><input type="button" class="brdList" value="목록" onclick="location.href='../board/Board_List'">
		</span></div>
		<br>
</form>		
</div>



<br><br><br><br><br>
<h3>Comment<span></span></h3>
<hr>
<!--  <div id="htmltest">-->

<div class="replyList">
<ul id="replies">

</ul> 
<br>

<!-- 댓글:jquery 생성 및 textarea 추가 -->
<form action="/Salody/board/Board_Read?bno=${bno}">
<div id="replyArea" style="width:1000px"><img src="../resources/img/newReply.png" style="width:40px;">
<textarea id="replyText" name="replyText" rows="2" cols="100" placeholder="댓글 추가..."></textarea>
<div style="width:800px; margin-left:490px"><input type="text" id="replyPpl" name="replyPpl" placeholder="<%=session.getAttribute("loginId")%>">

<button id="replyAddBtn">댓글 작성</button>
<input type="reset" value="취소">
</div>

</div>
<br><br>
</form>
</div>

</div>
<%@include file="../Footer.jsp" %>
</body>
</html>