<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/jstl/test02.jsp</title>
</head>
<body>
<h3>jstl 의 if 문</h3>
<c:if test="${10 gt 2 }"><!-- 출력을 할지말지의 조건 -->
	<p>10은 2보다 커요</p>
</c:if>
<!-- else는 없음 즉 단일 if문 만 존재 -->
<c:if test="${10 lt 2 }">
	<p>10은 2보다 커요</p>
</c:if>

<% request.setAttribute("myName","king"); %>
<h3>myName 이 비어 있는지 여부</h3>
<c:if test="${empty myName }">
	<p>myName 을 찾을수가 없습니다.(비어있음)</p>
</c:if>

<h3>myName 이 비어 있지 않은지 여부</h3>
<c:if test="${not empty myName }"><!-- 이렇게 단일 if문이지만 not으로 else를 대신할수 있음 -->
	<p>myName 은 비어있지 않습니다. 내용 <strong>${myName }</strong></p>
</c:if>
</body>
</html>