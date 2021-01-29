<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- home.jsp에서 import -->    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src=../resources/js/Member_Login.js></script>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" href="../resources/css/Header.css">
<link rel="stylesheet" type="text/css" href="../resources/css/Board_Board.css">
<link rel="stylesheet" href="../resources/css/Footer.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<%@include file="../Header.jsp" %>
		<div class="tab">
			<button onclick="location.href='/Salody/Board/Board_EvtPage'" class="tabMenu" style="color:white;">이벤트</button>
			<button class="tabMenu" style="color:white;">공지사항</button>
		</div>
		<br>
		
<h1 style="text-align:center;">공지사항</h1>	
<br>

<div class="List">
<form name="login" action="Board_Write" method="get">

	<table>
		<thead>
		<tr>
			<th>글 번호</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>조회수</th>
			<th>작성 날짜</th>
		</tr>
		</thead>		

		<tbody>
		<c:forEach items="${list2}" var="board">
		<tr>
			<td class="bno">${board.bno}</td>
			<td class="title"><a href="/Salody/Board/Board_Read?bno=${board.bno}">
			${board.title}</a></td>
			<td class="writer">${board.writer}</td>
			<td class="visit">${board.visit}</td>
			<td class="regiDate">${board.regiDate}</td>
		</tr>
		</c:forEach>
		</tbody>
	</table>	
		<!-- for문 끝 -->

	<div class="btn_wrap">
	<input type="submit" class="enroll" name="enroll" value="게시글 등록">
	</div>
</form>		
	
	<div class="pageMaker">
	<c:if test="${pageMaker.prev}">
	<a href="/Salody/Board/Board_List?pageNum=${pageMaker.startPage-1}&inAmount=${pageMaker.bcri.inAmount}">
	이전</a></c:if>	
	<!-- for(int i =1; i<8; i++) 자바 문법과 같음 begin=int i=1;	end=i<8 -->
	<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
	<a href="/Salody/Board/Board_List?pageNum=${num}&inAmount=${pageMaker.bcri.inAmount}">${num}</a>
	</c:forEach>
	<c:if test="${pageMaker.next}">
	<a href="/Salody/Board/Board_List?pageNum=${pageMaker.endPage+1}&inAmount=${pageMaker.bcri.inAmount}">
	다음</a></c:if>	
	</div>

<!--  
${pageMaker.startPage}
${pageMaker.endPage}
<br>-->
	<div class="bSearch">
	<form action="/Salody/board/Board_List" method="get"> 
	<input type="hidden" name="pageNum" value="${pageMaker.bcri.pageNum}">
	<input type="hidden" name="inAmount" value="${pageMaker.bcri.inAmount}">
	<select name="search">
		<option value="t">제목</option>
		<option value="c">내용</option>
		<option value="tc">제목 + 내용</option>
		<option value="w">작성자</option>
	</select>
	<input type="text" name="keyword">
	<input type="submit" value="검색">
	</form>
	</div>
	
	</div>	
	<div style="margin-bottom: 150px;"></div>
	<%@include file="../Footer.jsp" %>
</body>
</html>