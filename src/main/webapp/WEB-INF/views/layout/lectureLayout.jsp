<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
<head>
<title>Aurts 개인 정보센터</title>
<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
</head>
<body>
    <tiles:insertAttribute name="header"/>
    <div class="container">
    	<tiles:insertAttribute name="sideMenu"/>         
        <tiles:insertAttribute name="body" />
    </div>                                                  
    
</body>
</html>

