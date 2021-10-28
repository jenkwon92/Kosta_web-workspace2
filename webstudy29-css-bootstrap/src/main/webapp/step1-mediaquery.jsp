<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>미디어 쿼리</title>
<style type="text/css">
body {
	background-color: olive;
}
/*
	부트스트랩 프레임워크 3버전 sm(768이상) md(992이상) lg(1200이상)
	부트스트랩 프레임워크 4버전 sm(576이상) md(768이상) lg(992이상)
*/

@media ( min-width : 768px) {
	body {
		background-color: yellow;
	}
}

@media ( min-width : 992px) {
	body {
		background-color: lime;
	}
}
@media ( min-width : 1200px) {
	body {
		background-color: orange;
	}
}
</style>
</head>
<body>

</body>
</html>