<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<div class="sideMenu-container">
	<div class="sidemenu-area">
		<div class="sidemenu-list">
			<div class="sidemenu">
				<a href="#" class="sidemenu-link">
					<span class="myClass">
						<i class="fas fa-book"></i>
						<span>클래스 신청 현황</span>
					</span>
				</a>
			</div>
			<div class="sidemenu">
				<a href="<%=request.getContextPath()%>/admin/announcement/list" class="sidemenu-link">
					<span class="creator-announcement">
						<i class="far fa-bell"></i>
						<span>Aurts 공지</span>
					</span>
				</a>
			</div>
			<div class="sidemenu">
				<a href="#" class="sidemenu-link">
					<span class="myClass">
						<i class="far fa-clipboard"></i>
						<span>패키지 등록 </span>
					</span>
				</a>
			</div>
			<div class="sidemenu">
				<a href="#" class="sidemenu-link">
					<span class="myClass">
						<i class="far fa-comment"></i>
						<span>클래스 관리</span>
					</span>
				</a>
			</div>
		</div>
	</div>
</div>