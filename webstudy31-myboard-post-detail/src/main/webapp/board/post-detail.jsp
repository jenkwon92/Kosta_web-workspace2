<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<table class="table">
	<tr>
		<td>글번호: </td>
		<td>제목:</td>
		<td>작성자:</td>
		<td>조회수:</td>
		<td><%-- 작성일시 2021.10.29 --%></td>
	</tr>
	<tr>
		<td colspan="5">
			<%-- pre : db 에 저장된 글형식 그대로 표현  --%>
			<pre>
			<font size="4">
			
			</font>
			</pre>
		</td>
	</tr>
	<%-- 글쓴이가 로그인한 회원이면 하단부에 삭제와 수정버튼을 제공한다  --%>
	<tr>
	<%--  부트스트랩에서 제공하는 중앙정렬 class : text-center   --%>
		<td colspan="5" class="text-center">
			<button type="button" class="button btn-success">삭제</button>
			<button type="button" class="button btn-success">수정</button>
		</td>
	</tr>
</table>









