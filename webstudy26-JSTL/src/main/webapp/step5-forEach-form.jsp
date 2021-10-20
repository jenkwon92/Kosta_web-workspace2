<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>step5-forEach-form.jsp</title>
</head>
<body>
<script type="text/javascript">
	function checkForm(){
		let ma = document.getElementsByName("menu");
		let flag = false;
		for(let i=0; i<ma.length; i++){
			if(ma[i].checked){
				flag=true;
				break;
			}
		}
		if(flag==false){
			alert("메뉴를 선택하세요");
			return false;
		}
	}
</script>
<%-- 1. 메뉴를 선택하지 않으면 alert 후 전송시키지 않는다
		2. 주문을 누르면 step5-forEach-result.jsp 에서 jstl forEach로 피자 맥주 치킨 주문완료 
			<%String m[] = request.getParameterValues("a"); %> --> EL 표현 ${paramValues.a}
 --%>
<form action="step5-forEach-result.jsp" onsubmit="return checkForm()">
<input type="checkbox" name="menu" value="피자">피자<br>
<input type="checkbox" name="menu" value="맥주">맥주<br>
<input type="checkbox" name="menu" value="치킨">치킨<br>
<button>주문</button>
</form>
</body>
</html>