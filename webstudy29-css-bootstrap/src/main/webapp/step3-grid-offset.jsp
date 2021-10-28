<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>grid offset</title>
</head>
<body>
<div class="container pt-3">
<h3>부트스트랩 grid offset test :.offset-sm-* 클래스를 사용하면 * 멸만큼 오른쪽으로 이동</h3>
<div class="row">
	<div class="col-sm-5 bg-success text-light">.col-sm-5 열 영역</div>
	<div class="col-sm-5 offset-sm-2 bg-danger text-light">.col-sm-5 열 영역 (offset-sm-2)</div>
</div>
<div class="row bg-warning">
<%-- 3만큼 오른쪽으로 이동해서 9열 영역만 사용 --%>
<div class="col-sm-9 offset-sm-3 bg-info text-light">3열 영역을 오른쪽으로 이동시켜 9열 영영만 사용	</div>
</div>
</body>
</html>