<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Upload</title>
</head>
<body>
<form action="/brdUpload/uploadFormAction" method="post" enctype="multipart/form-data">
	<input type="file" name="uploadFile" multiple>
	<br><br>
	<input type="submit" value="전송">
	
</form>

</body>
</html>