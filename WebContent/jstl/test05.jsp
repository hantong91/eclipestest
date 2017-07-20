<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %><!-- 숫자의 형식 -->
<% request.setAttribute("count",3955568);
	request.setAttribute("price",847886);%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/jstl/test05.jsp</title>
</head>
<body>
<h3>숫자 format테스트</h3><!-- formatNumber를 사용하면 3자리마다 ,을 찍어줌  **사용법을 모르면 검색을 해본다.** -->
<p>카운트 : <strong><fmt:formatNumber value="${count }" type = "number"/></strong></p>
<p> 가격 : <fmt:formatNumber value = "${price }" type = "currency" currencySymbol="$"/></p>
<p><fmt:formatNumber value = "1234.5678" pattern=".000"/> </p>
</body>
</html>