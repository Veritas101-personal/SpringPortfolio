<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


    
<header class="head-wrapper">
	<div class="logo-container">
		<a class="logo-home" href="<%=request.getContextPath()%>/">
			<img class="logo" src="<%=request.getContextPath()%>/resources/image/logo.png" width="200" height="40" >
		</a>
		
	</div>
	<c:if test="${user == null}">
		<div class="log-container">
			<a href="<%=request.getContextPath()%>/signup">회원가입</a>
			<a href="<%=request.getContextPath()%>/login">로그인</a>
		</div>
	</c:if>
	<c:if test="${user != null}">
		<div class="log-container">
			<c:if test="${user.st_value == 'ADMIN'}">
				<div class="">관리자 ON</div>
				<a href="<%=request.getContextPath()%>/admin">관리자 페이지</a>
			</c:if>
			<c:if test="${user.st_value == 'CREATOR'}">
				<a href="<%=request.getContextPath()%>/creator">크리에이터 센터</a>
			</c:if>
			<c:if test="${user.st_value == 'STUDENT'}">
				<a href="<%=request.getContextPath()%>/creator/joinCreator">크리에이터 신청</a>
			</c:if>
			<a href="<%=request.getContextPath()%>/studentInfo">회원정보</a>
			<a href="<%=request.getContextPath()%>/logout">로그아웃</a>
		</div>
	</c:if>
</header>
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
	<div class="container">
	  	<div class="collapse navbar-collapse" id="collapsibleNavbar">
	    	<ul class="navbar-nav">
		      	<li class="nav-item dropdown">
		        	<a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">전체 강의</a>
		        	<div class="dropdown-menu">
		        		<a class="dropdown-item" href="<%=request.getContextPath()%>/class/all">전체</a>
		        		<a class="dropdown-item" href="<%=request.getContextPath()%>/class/arts">순수미술</a>
		        		<a class="dropdown-item" href="<%=request.getContextPath()%>/class/illustration">일러스트레이션</a>
		        		<a class="dropdown-item" href="<%=request.getContextPath()%>/class/craft">공예</a>
		        		<a class="dropdown-item" href="<%=request.getContextPath()%>/class/sport">운동</a>
		        		<a class="dropdown-item" href="<%=request.getContextPath()%>/class/humanities">인문학</a>
		        		<a class="dropdown-item" href="<%=request.getContextPath()%>/class/music">음악</a>
		        		<a class="dropdown-item" href="<%=request.getContextPath()%>/class/programming">프로그래밍</a>
		        		<a class="dropdown-item" href="<%=request.getContextPath()%>/class/film">영상/편집</a>
		        	</div>
		      	</li>
		      	<li class="nav-item">
		        	<a class="nav-link" href="<%=request.getContextPath()%>/vipClass">VIP클래스</a>
		      	</li>
		      	<li class="nav-item">
		        	<a class="nav-link" href="#">스토어</a>
		      	</li>
		      	<li class="nav-item">
		        	<a class="nav-link" href="#">이벤트</a>
		      	</li>        
		      	<li class="nav-item">
		        	<a class="nav-link" href="<%=request.getContextPath()%>/customerService">고객센터</a>
		      	</li>        
	    	</ul>
		</div> 
	</div> 
</nav>