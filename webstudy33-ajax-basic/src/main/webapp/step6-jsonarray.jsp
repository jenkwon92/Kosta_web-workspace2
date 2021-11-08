<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function startAjax(){
		let xhr = new XMLHttpRequest();
		xhr.onload=function(){
			let json = JSON.parse(xhr.responseText);
			//alert(json);
			//JSONArray로 서버가 응답했으므로 아래와 같이 loop가 가능하다
			for(let i=0; i<json.length; i++){
				alert(json[i]);
			}
		}
		xhr.open("get","JSONArrayServlet");
		xhr.send();
	}
</script>
</head>
<body>
<button onclick="startAjax()">JSONArrayTest</button>
</body>
</html>