/**
 * 
 */

function btn_click(src){
	if(src=="Update"){
		//action은  /Login/login
		frm2.action="/Salody/Member_Update";
		//method는 get
		frm2.method="post";
	}else{
		//action은 
		frm2.action="/Salody/Member_Delete"
		//method는
		frm2.method="post"
	}
	
	
}