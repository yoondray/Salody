<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인정보 수정</title>
<script type="text/javascript" src="../resources/js/jquery-3.5.1.js"></script>
<script type="text/JavaScript" src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
function openDaumZipAddress() {
	new daum.Postcode({
	oncomplete:function(data) {
		jQuery("#postcode1").val(data.postcode1);
		jQuery("#postcode2").val(data.postcode2);
		jQuery("#zonecode").val(data.zonecode);
		jQuery("#address").val(data.address);
		jQuery("#address_etc").focus();
		console.log(data);
		}
				}).open();
			}
	</script>
<script type="text/javascript" src="../resources/js/Member_Update.js"></script>
<link rel="stylesheet" href="../resources/css/Member_Join.css">
<link rel="stylesheet" href="../resources/css/Footer.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../resources/css/Header.css">
<script type="text/javascript" src="../resources/js/jquery-3.5.1.js"></script>
<!-- <script type="text/javascript" src="resources/js/Salody_Main.js"></script>  -->
</head>
<body>

<%@include file="../Header.jsp" %>

<form name="frm3">
<div id="join">
<h1>개인정보 수정 </h1>
<br><br>
<hr color="black">
<br><br><br><br>
<h3>기본정보</h3>
<h5 style="margin-left: 900px "><span style="color: red">*</span>필수입력사항</h5>
<table id="info" >
  <tr>
    <td class="sub">아이디<span>*</span></td>
    <td class="in">&nbsp;&nbsp;<input name="id" type="text" id="id" value="${loginId}" readonly="readonly">
    </td>
  </tr>
  <tr>
    <td class="sub" style="font-weight: bolder;">비밀번호 변경<span>*</span></td>
    <td class="in">&nbsp;&nbsp;<input name="pw" type="password" value="${Mypage.pw}">
  	<br><h6 style="margin-left: 15px;">비밀번호는 영문,숫자,특수문자 포함 15자 이내로 작성해주세요</h6></td>
  </tr>
  <tr>
    <td class="sub" style="font-weight: bolder;">비밀번호 변경 확인<span>*</span></td>
    <td class="in">&nbsp;&nbsp;<input type="password" value="${Mypage.pw}">
  	<br><h6 style="margin-left: 15px;">비밀번호를 다시 입력해주세요</h6></td>
  </tr>
  <tr>
    <td class="sub">이름<span>*</span></td>
    <td>&nbsp;&nbsp;<input name="user_name" type="text" readonly="readonly" value="${Mypage.user_name}"></td>
 </tr>
  <tr style="height: 100px;">
    <td class="sub">현재 주소<span>*</span></td>
    <td class="in">&nbsp;&nbsp;${Mypage.addr} </td>
  </tr>
  <tr style="height: 100px;">
    <td class="sub" style="font-weight: bolder;">주소변경<span>*</span></td>
    <td class="in">&nbsp;
	<input id="zonecode" type="text" value="" style="width:50px;">
	&nbsp;
	<input type="button" onClick="openDaumZipAddress();" value = "주소 찾기" />
   	<br>&nbsp;&nbsp;<input type="text" id="address" value="" style="width:240px;" readonly/>
    <br>&nbsp;&nbsp;<input type="text" id="address_etc" value="" style="width: 200px;">
   	<!-- hidden --> 
   	<input type="hidden" id="add" name="addr" style="width: 100px" value="${Mypage.addr}">
   	<!-- hidden end -->
    
    </td>
  </tr>
  <tr>
    <td class="sub">현재휴대전화<span>*</span></td>
    <td class="in">&nbsp;&nbsp;${Mypage.phone}<br>
    	
    </td>
  </tr>
  <tr>
    <td class="sub" style="font-weight: bolder;">휴대전화 변경<span>*</span></td>
    <td class="in">
    	&nbsp;&nbsp;<select id="phone1">
    	<option value="sel1">선택하세요</option>
    	<option value="010">010</option>
    	<option value="011">011</option>
    	<option value="017">017</option>
    	<option value="016">016</option>
    	<option value="018">018</option>
    	<option value="010">070</option>
    	</select>-
    	<input type="text" id="phone2" style="width: 50px">-
    	<input type="text" id="phone3" style="width: 50px">
    	
    	<!-- hidden으로 숨기기 -->
    	<input type="hidden" id="phone" name="phone" style="width: 100px" value="${Mypage.phone}">
    	
    </td>
  </tr>
  <tr style="height: 65px;">
    <td class="sub">현재이메일<span>*</span></td>
    
    <td class="in">&nbsp;&nbsp;${Mypage.email}</td>
  </tr>
  <tr style="height: 65px;">
    <td class="sub" style="font-weight: bolder;">이메일 변경<span>*</span></td>
    
    <td class="in">
    	&nbsp;&nbsp;
    	<input id="mail1" type="text" style="width: 70px">@
    	<input type="text" placeholder="직접입력" style="width: 100px" id="mail2">
    	<select id="mail3">
    	<option value="1">직접입력</option>
    	<option value="naver.com">naver.com</option>
    	<option value="daum.net">daum.net</option>
    	<option value="gmail.com">gmail.com</option>
    	<option value="yahoo.com">yahoo.com</option>
    	<option value="nate.com">nate.com</option>
    	<option value="hotmail.com">hotmail.com</option>
    	</select>
    	<!-- hidden -->
    	<input type="hidden" id="mail" name="email" value="${Mypage.email}">
    	</td>
  </tr>
</table>  
  <br><br><br><br>
<h3>추가정보</h3>
<br>
<table id="info2">
	<tr>
		<td class="sub">성별</td>
		<td class="in">&nbsp;&nbsp;${Mypage.gender}</td>
	</tr>
	<tr>
	<td class="sub">생년월일</td>
	<td class="in">&nbsp;&nbsp;${Mypage.birth}</td>
	</tr>
</table>


<div id="submitB">
<input class="bu" type="submit" value="정보수정" onclick="btn_click('Update')">
<input class="bu" type="submit" value="취소" onclick="btn_click('Cancel')">
</div>
<br><br><br><br><br><br><br><br>

</div>
</form>

<div style="margin-bottom: 400px;"></div>
<%@include file="../Footer.jsp" %>


</body>
</html>