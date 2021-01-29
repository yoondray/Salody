
/**
 * 
 */

$(document).ready(function() {

		var bno = $('#bno').val();
		var strImg="";
		var uploadUL=$(".readult ul");
		
		
		//$.getJSON = $.ajax + type: 'GET'
		$.getJSON("../Board/"+bno+".json",function(data){
			console.log(data);
			
			$(data).each(function(i,obj){
			console.log("obj.uploadPath="+obj.uploadPath);
			console.log("obj.uuid="+obj.uuid);
			console.log("obj.fileName="+obj.fileName);
						
			var fileCallPath=encodeURIComponent(obj.uploadPath
			+"/"+obj.uuid+"_"+obj.fileName);
					
			strImg+="<li data-path='"+obj.uploadPath+"'";
			strImg+="data-uuid='"+obj.uuid+"'data-filename='"+obj.fileName+"'";
			strImg+="><div>";
			strImg+="<span> "+obj.fileName+"</span><br>";
			strImg+="<img src='../brdUpload/display?fileName="+fileCallPath+"'>";
	
			
			//alert("str Image");
			
			}) //data 끝
			
			uploadUL.append(strImg);

			
	}) //JSON끝		
})//ready 끝

	function btn_click(str) {
		if (str == "update") {
			frm1.method = "get";
			frm1.action = "Board_Update";

			//str이 "delete"라면 삭제 action		
		} else {
			var msg = confirm("삭제하시겠습니까?");
			//alert("삭제" + msg)
			//msg의 값을 찾는 것
			if (msg) {
				frm1.action = "Board_Delete";
				frm1.method = "post";
			} else {
				frm1.action = "Board_List";
			}


		}
	}



