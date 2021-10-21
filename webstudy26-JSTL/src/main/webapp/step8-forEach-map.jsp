<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,model.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 컨트롤러에서 데이터를 session 영역에 저장해서 공유한다고 가정 --%>
<%
LinkedHashMap<String, PersonVO> map = new LinkedHashMap<String, PersonVO>();
map.put("a", new PersonVO("아이유", 30));
map.put("b", new PersonVO("이강인", 22));
map.put("c", new PersonVO("손흥민", 20));
session.setAttribute("personMap", map);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl forEach Map</title>
</head>
<body>
	기존 스크립틀릿 방식으로 Map의 key와 value를 표현
	<br>
	<%
	@SuppressWarnings("unchecked")
	LinkedHashMap<String, PersonVO> rMap = (LinkedHashMap) session.getAttribute("personMap");
	/*
			key: a value:아이유
			key: b value:이강인
			key: c value:손흥민
	*/
	//keySet() :Set<String>
	// Set ->iterator() ->Iterator :hasNext() 와 next()를 이용하면 key를 추출
	//Set<String>set = rMap.keySet();
	//Iterator<String> it = set.iterator();

	Iterator<String> keys = rMap.keySet().iterator();
	while (keys.hasNext()) {
		String key = keys.next();
		//String key = it.next();
	%>
	key : <%=key%> value :<%=rMap.get(key).getName()%>
	<br>
	<%
	}
	%>
	<br>
	<br> JSTL forEach 로 map의 key와 value를 출력
	<br>
	<br>
	<c:forEach items="${sessionScope.personMap }" var="person">
		key : ${person.key }  value : ${person.value.name } <br>
	</c:forEach>
</body>
</html>