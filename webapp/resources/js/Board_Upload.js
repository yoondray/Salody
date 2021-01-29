/**
 * 
 */
$(document).ready(function(){
	//속성선택자 <meta charset="UTF-8">
	var formObj=$("form[role='form']");
	
	$("input[type='submit']").on("click",function(e){
		e.preventDefault();
		console.log("submit버튼 클릭");
		var msg="";
	
		$(".loadsult ul li").each(function(i,obj){
			alert("글이 등록되었습니다.");
			var attach=$(obj);
		
			//<input>의 name은 BoardDTO의 attList와 동일
			msg+="<input type='text' name='attachList["+i+"].fileName' value='"+attach.data("filename")+"'>";
		
			msg+="<input type='text' name='attachList["+i+"].uuid' value='"+attach.data("uuid")+"'>";
		
			msg+="<input type='text' name='attachList["+i+"].uploadPath' value='"+attach.data("path")+"'>";
			

		})//loadsult 끝
		
		formObj.append(msg).submit();		
	})//submit 클릭 끝
	
	
	//"파일선택" 버튼이 바뀔 때 마다, 이미지를 나타나게 할 것이다.
	$("input[type='file']").change(function(e){
		
		var formData = new FormData();
		var inputFile = $("input[name='uploadFile']");
		
		
		//파일 선택의 버튼에 마우스를 올리면 나타나는 파일 정보
		var files=inputFile[0].files;
		console.log(files);
		console.log(formData);
		for(var i=0; i<files.length; i++) {
			formData.append("uploadFile",files[i]);
		}
		
		$.ajax({
			url:"/brdUpload/uploadFormAction",
			data:formData,
			dataType:"json",
			
			processData:false,
			contentType:false,
			type:'POST',
			success:function(data){
				alert("Uploading...");
				console.log(data);
				showLoadSult(data);
			}
		})
		
	})//input type 끝	
		
		
	//data메소드와 연관되어있음	
	function showLoadSult(loadSultArr){
		if(!loadSultArr || loadSultArr.length==0){
			return;
		}
		
		var uploadUL=$(".loadsult ul");
		var msg="";
		
		
		$(loadSultArr).each(function(i,obj){
			console.log("obj.uploadPath="+obj.uploadPath);
			console.log("obj.uuid="+obj.uuid);
			console.log("obj.fileName="+obj.fileName);
			
			var fileCallPath=encodeURIComponent(obj.uploadPath
			+"/"+obj.uuid+"_"+obj.fileName);
			
			
			msg+="<li data-path='"+obj.uploadPath+"'";
			msg+="data-uuid='"+obj.uuid+"'data-filename='"+obj.fileName+"'";
			msg+="><div>";
			msg+="<span> "+obj.fileName+"</span>";
			msg+="<img src='/brdUpload/display?fileName="+fileCallPath+"'>";

		})//loadSultArr.each() 끝
		uploadUL.append(msg);
	}	

})