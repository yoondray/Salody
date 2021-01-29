/**
 * 
 */

function btn_click(str) {
	//alert(str)
	if(str=="login") {	// 로그인 버튼이면,
		
		//alert("Successfully LOGIN.")
		frm1.action="/Salody/Member_LoginPost"	// tb1_member를 select하는 controller
		frm1.method="post"
	}else if(str=="join") {	// 회원가입 버튼이면
		frm1.action="/Salody/Member_Join"	// 회원가입 화면(write.jsp)을 실행하는 controller
		frm1.method="get"
	}
}

/*com.salody.js 패키지의 Failed.java와 연결
var Failed = Java.type('com.salody.js.Failed');
//call the static method
var failedMsg=Failed.loginFailed('LOGIN UNCOMPLETED');
print(failedMsg);

var unCmplete = new Failed();
var calResult = unCmplete.add(9,1);
print(calResult);
*/
 




