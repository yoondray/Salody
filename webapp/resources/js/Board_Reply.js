/**
 * Ajax를 이용한 댓글처리
 */

//이벤트를 시작하자마자 jquery를 실행하라
$(document).ready(function(){
	//어떠한 이벤트(글쓰기,삭제,수정 등)을 진행할 때
	//실행하도록 하기위해서 맨 위에 변수로 선언한다.
	var bno=$("#bno").val();	
	var reno="";
	
	getList();
	
	//댓글 목록리스트 함수(getList)
	function getList(){
		var str="";
		//$.getJSON (get방식만 가능함)
		$.getJSON("../replies/"+bno+".json",function(data){
				console.log("aaa="+data);
				//크롬의 console창에 출력된 data
$(data).each(function(){	
				str+="<br><div id='repleP'><img src='../resources/img/replyImg.png' style='width:40px;'><input type='text' class='repleP' value='"
				+this.replyPpl+"'style='align:center; font-size:18px; font-weight:bold; border:none; padding:0px 0px 14px 0px;'></div><li id=replies"+this.reno+">"
				+"<input type='hidden' id=comment"+this.reno
				+" value='"+this.reno+"'>"+this.replyText
				+"<div id=uptiv"+this.reno
				+"></div><span class='reBtn' eachreno="+this.reno+" style='float:right;'><button id='del'>삭제</button>"
				+"<button id='upt'>수정</button></span></li><br><br>"
					//this. = data
				
				
				})//data출력 끝
				$("#replies").html(str)	
				
				
		})//getJSON끝
		
	}//getList끝
	
	//댓글쓰기(id=replyAddBtn)
	$("#replyAddBtn").on("click",function(e) {
		e.preventDefault();
		//var bno=$("#bno").val();
		var replyText=$("#replyText").val();
		var replyPpl=$("#replyPpl").val();
		

	
		//ajax 활용 - form태그
		$.ajax({
			//form태그의 method
			type:"post",
			//form태그의 server주소				
			url:"../replies/new",
			//controller에 어떤 데이터 넘길 것인지		
			data:JSON.stringify({bno:bno,replyText:replyText,replyPpl:replyPpl}),				
			//controller의 데이터 타입 (return)
			contentType:"application/json; charset=utf-8",			
			//데이터 전송이 성공했을 때,
			success:function(result){
				if(result=="Succeed") {
				//controller의 ResponseEntity 매개변수
					alert("댓글이 등록되었습니다.");	
					//댓글쓰기 성공 시에만 console에 Array가 출력됨
					getList();
					//location.reload();
				}	
			},
			//데이터 전송이 실패했을 때,
			error:function(){		
				//alert("댓글쓰기 실패")
			}
		})//댓글쓰기 ajax end
	})//댓글 쓰기 Btn_click end 
	
	

	
		//del버튼 클릭 	*delegate event
		$("#replies").on("click","#del",function(e){
			e.preventDefault();
			var replyText=$(this).parent();
			reno=replyText.attr("eachreno");
			
			//alert(reno)
			alert("댓글을 삭제하시겠습니까?")		
			
			$.ajax({
				type:"delete",
				url:"../replies/del",
				data:JSON.stringify({reno:reno}),
				contentType:"application/json; charset=utf-8",
			
				success:function(delsult) {
					if(delsult=="Deleted") {
						alert("댓글이 삭제되었습니다.")
						getList();
					}
				},
				error:function() {
					alert("댓글삭제 실패");
				}
				})//ajax버튼 끝*/
						
		});//DEL버튼 끝		
		
		//upt버튼 시작
		$("#replies").on("click","#upt",function(e){
			alert("댓글을 수정하시겠습니까?");
			e.preventDefault();
			
			var replyText=$(this).parent();
			reno = replyText.attr("eachreno");
			var comment=$("#comment"+reno).val();
			
			var uptstr="";	
			uptstr+="<br><div id='replyUpt' style='width:1000px'><textarea id=replyText"
			+" name='replyText' rows='2' cols='100' placeholder='댓글 수정...'>"+comment
			+"</textarea><br>" + "<input id='replyPpl' type='text' name='replyPpl' readonly>" 
			+"<button id='commentUpt'>댓글 수정</button><br><br></div>";
			
			$("#uptiv"+reno).html(uptstr);	
		});//upt 끝	
		
		//eachreno

		$("#replies").on("click","#commentUpt",function(e){
			e.preventDefault();
			var replyText=$("#replyText"+reno).val();
			
			$.ajax({
				type:"put",
				url:"../replies/upt",
				contentType:"application/json; charset=utf-8",
				data:JSON.stringify({reno:reno, replyText:replyText}),
				success:function(upsult){
					if(upsult=="Updated"){
						alert("댓글이 수정되었습니다.");
						getList();
					}
				},
				error:function() {
					alert("댓글수정 실패");
				}
				
			})//ajax 끝
			
		})//eachreno 끝

})//READY 끝


