<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setAttribute("jumsu", 75); %>
<h3>다중 if문을 taglib 로 구성해 보기</h3>
<c:choose>
	<c:when test="${jumsu ge 90 }">
		<p>점수는 <strong>${jumsu }</strong> 이고 성적은 A 입니다.</p>
	</c:when>
	<c:when test="${jumsu ge 80 }">
		<p>점수는 <strong>${jumsu }</strong> 이고 성적은 B입니다.</p>
	</c:when>
	<c:when test="${jumsu ge 70 }">
		<p>점수는 <strong>${jumsu }</strong> 이고 성적은 C입니다.</p>
	</c:when>
	<c:when test="${jumsu ge 60 }">
		<p>점수는 <strong>${jumsu }</strong> 이고 성적은 D입니다.</p>
	</c:when>
	<c:otherwise><!-- 그 이외에는 여기를 출력 즉, default -->
		<p>점수는 <strong>${jumsu }</strong>이고 성적은 F입니다.</p>
	
	</c:otherwise>
</c:choose>

<%-- session.setAttribute("id", "gura"); --%>
<h3>if else 문 형태를 c:choose 를 이용해서 구성하기</h3>
<c:choose>
	<c:when test="${not empty id }">
		<p> <strong>x</strong> 님 로그인중...</p>
	</c:when>
	<c:otherwise>
		<form action="signin.jsp">
		<input type="text" name="id" />
		<button type = "submit">로그인</button>
		</form>
	</c:otherwise>	
</c:choose>
</body>
</html>