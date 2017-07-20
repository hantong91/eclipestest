<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/jstl/test04.jsp</title>
</head>
<body>
<%-- page 영역에 값 저장하기 pageContext.setAttribute() --%>
<c:set var = "num" value ="1"/>
<c:set var = "name" value ="김구라"/>
<c:set var = "addr" value ="노량진"/>
<p> 번호 : <strong>${num }</strong></p>
<p> 이름 : <strong>${name }</strong></p>
<p> 주소 : <strong>${addr }</strong></p>
<%-- jstl 을 이용한 출력 --%>
<%-- c:out value가 있으면 출력 없으면 default출력 --%> 
<p> 주소: <strong><c:out value="${addr2 }" default = "집이 없음"/></strong></p>
<p> 마크업: <c:out value ="<a href=''>테스트</a>" escapeXml="false"/></p><!-- 기호를 마크업으로 어떻게 쓰는지 나옴  escapeXml="false"을 적으면 정상출력-->
</body>
</html>