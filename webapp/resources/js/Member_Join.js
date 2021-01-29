/**
 * 
 */
// 아이디 길이
$(document).ready(function(){
	$("#id").blur(function(){
		var length= $("#id").val().length;
		if(length>=5 && length<=20){
			$("#ID").html("멋진아이디네요!").css("color","green")
		}else{
			$("#ID").html("5~20 자 이내로 입력하세요!").css("color","red")		
		}
	})


//핸드폰번호 합치기
	var phone1="";
	var phone2="";
	var phone3="";
	var phone4="";
	
	$("#phone1").change(function(){
		phone1="";
		phone1=$("#phone1").val();
		phone4="";
		phone4=phone1+phone2+phone3
		//phone4=phone1;
		$("#phone").val(phone4);
	})
	$("#phone2").blur(function(){
		phone2="";
		phone2=$("#phone2").val();
		phone4="";
		phone4=phone1+phone2+phone3;
		$("#phone").val(phone4);
	})
	$("#phone3").blur(function(){
		phone3="";
		phone3=$("#phone3").val();
		phone4="";
		phone4=phone1+phone2+phone3
		$("#phone").val(phone4);
		//phone4+=phone3;
		//$("#phone").val(phone4);
	})
	
//주소합치기	
	var add1="";
	var add2="";
	var add3="";
	var add4="";

	$("#address_etc").keyup(function(){
		add1=$("#zonecode").val();
		add2=$("#address").val();
		add3=$("#address_etc").val();
		add4=add1+add2+add3;
		$("#add").val(add4);
	})



//메일 합치기
	
	var mail1="";
	var mail2="";
	var mail3="";
	var mail4="";
	
	
	$("#mail1").blur(function(){
		mail1="";
		mail1=$("#mail1").val();
		mail4=""
		mail4=mail1+"@"+mail2;
		$("#mail").val(mail4);
	})

	$("#mail2").blur(function(){
		mail2="";
		mail2=$("#mail2").val();
		mail4="";
		mail4=mail1+"@"+mail2;
		$("#mail").val(mail4);
	})
	$("#mail3").change(function(){
		if($(this).val()=="1"){	// 메일 선택이 직접입력이면
			$("#mail2").val("")
			$("#mail2").attr("disabled",false)
		}else{					// 메일 선택이 직접입력이 아니면
			mail3="";	
			mail3=$("#mail3").val();
			$("#mail2").attr("disabled",true)
			mail4=mail1+"@"+mail3
			$("#mail").val(mail4);
			
		}
	})
	
	
	
//birth합치기
	var year="";
	var month="";
	var day="";
	var birth="";
	
	$("#yy").blur(function(){
		year="";
		year=$("#yy").val();
		birth="";
		birth=year+month+day;
		$("#birth").val(birth);
	})

	$("#mm").blur(function(){
		month="";
		month=$("#mm").val();
		birth="";
		birth=year+month+day;
		//birth+=month;
		$("#birth").val(birth);
	})
	$("#dd").blur(function(){
		day="";
		day=$("#dd").val();
		birth=year+month+day
		$("#birth").val(birth);
		
		

		
	})






})