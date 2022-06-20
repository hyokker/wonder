<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	

<!DOCTYPE html>

<html lang="ko">
	<head>
		<meta charset="utf-8" />
		<meta name="author" content="Themezhub" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
        <title>작업물 중개는 원더(WONDER)</title>
        <!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet">
        
    </head>
<script type="text/javascript" src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
<body class="yellow-skin">

<!-- ============================================================== -->
<!-- Preloader - style you can find in spinners.css -->
<!-- ============================================================== -->
<div class="preloader"></div>

 <!-- ============================================================== -->
<!-- Main wrapper - style you can find in pages.scss -->
<!-- ============================================================== -->
<div id="main-wrapper">
    <!-- ============================================================== -->
<!-- Top header  -->
<!-- ============================================================== -->
<!-- Start Navigation -->
<div class="header header-light">
	<div class="container">
		<nav id="navigation" class="navigation navigation-landscape">
			<div class="nav-header">
				<a class="nav-brand" href="<c:url value='/'/>">
<img src="${pageContext.request.contextPath}/img/logo.png" class="logo" alt="" />
	</a>
	<div class="nav-toggle"></div>
	<div class="mobile_nav">
		<ul>
			<!-- <li class="_my_prt_list"><a href="#"><span></span></a></li> -->
			<!-- <li><a href="#" data-toggle="modal" data-target="#login"><i class="fas fa-user-circle fa-lg"></i></a></li> -->
		</ul>
	</div>
</div>
<div class="nav-menus-wrapper" style="transition-property: none;">
<ul class="nav-menu">

	<li class="active"><a href="<c:url value='/aboutUs/aboutUs'/>">WONDER?<span class="submenu-indicator"></span></a>
<ul class="nav-dropdown nav-submenu">
	<li><a href="index.html">서비스 소개</a></li>
<!-- <li><a href="home-2.html">Home 2</a></li>
	<li><a href="home-3.html">Home 3</a></li>
	<li><a href="home-4.html">Home 4</a></li>
	<li><a href="home-5.html">Home 5</a></li>
	<li><a href="home-6.html">Home 6</a></li>
	<li><a href="home-7.html">Home 7</a></li>
	<li><a href="map.html">Map Home</a></li> -->
	</ul>
</li>

<li><a href="<c:url value='/pd/pdList'/>">상품 목록<span class="submenu-indicator"></span></a>
	<ul class="nav-dropdown nav-submenu">
		 <li><a href="#">언어별 상품 목록<span class="submenu-indicator"></span></a>
		 	<ul class="nav-dropdown nav-submenu">
	<li><a href="grid-layout-with-sidebar.html">JAVA</a></li>
	<li><a href="grid-layout-2.html">ORACLE</a></li>
	<li><a href="grid-layout-3.html">SPRING</a></li>
</ul>
</li>
<!-- <li><a href="#">가격별 상품 목록<span class="submenu-indicator"></span></a>
	<ul class="nav-dropdown nav-submenu">
		<li><a href="list-layout-with-sidebar.html">BRONZE</a></li>
		<li><a href="list-layout-with-map-2.html">SILVER</a></li>
		<li><a href="list-layout-with-map-2.html">GOLD</a></li>
	</ul>
</li> -->
<!-- <li><a href="#">Listing Map<span class="submenu-indicator"></span></a>
	<ul class="nav-dropdown nav-submenu">
		<li><a href="half-map.html">Half Map</a></li>
		<li><a href="half-map-2.html">Half Map 2</a></li>
		<li><a href="classical-layout-with-map.html">Classical With Sidebar</a></li>
		<li><a href="list-layout-with-map.html">List Sidebar Map</a></li>
		<li><a href="grid-layout-with-map.html">Grid Sidebar Map</a></li>
	</ul>
</li>
<li><a href="#">Agents View<span class="submenu-indicator"></span></a>
	<ul class="nav-dropdown nav-submenu">
		<li><a href="agents.html">Agent Grid Style</a></li>
		<li><a href="agents-2.html">Agent Grid 2</a></li>
		<li><a href="agent-page.html">Agent Detail Page</a></li>
	</ul>
</li>
<li><a href="#">Agency View<span class="submenu-indicator"></span></a>
	<ul class="nav-dropdown nav-submenu">
		<li><a href="agencies.html">Agency Grid Style</a></li>
		<li><a href="agency-page.html">Agency Detail Page</a></li>
	</ul>
</li> -->
	</ul>
</li>

<li><a href="#">자유게시판<span class="submenu-indicator"></span></a>
	<!-- <ul class="nav-dropdown nav-submenu">
	<li class=""><a href="#">User Admin<span class="submenu-indicator"></span></a>
		<ul class="nav-dropdown nav-submenu">
			<li><a href="dashboard.html">User Dashboard</a></li>
			<li><a href="my-profile.html">My Profile</a></li>
			<li><a href="my-property.html">My Property</a></li>
			<li><a href="messages.html">Messages</a></li>
			<li><a href="bookmark-list.html">Bookmark Property</a></li>
			<li><a href="submit-property.html">Submit Property</a></li>
		</ul>
	</li>
	<li><a href="#">Single Property<span class="submenu-indicator"></span></a>
		<ul class="nav-dropdown nav-submenu">
			<li><a href="single-property-1.html">Single Property 1</a></li>
			<li><a href="single-property-2.html">Single Property 2</a></li>
			<li><a href="single-property-3.html">Single Property 3</a></li>
			<li><a href="single-property-4.html">Single Property 4</a></li>
		</ul>
	</li>
	<li><a href="compare-property.html">Compare Property</a></li>
</ul> -->
</li>

<li><a href="#">Q&A게시판<span class="submenu-indicator"></span></a>
<!-- 	<ul class="nav-dropdown nav-submenu">
		<li><a href="blog.html">Blog Style</a></li>
		<li><a href="about-us.html">About Us</a></li>
		<li><a href="pricing.html">Pricing</a></li>
		<li><a href="404.html">404 Page</a></li>
		<li><a href="checkout.html">Checkout</a></li>
		<li><a href="contact.html">Contact</a></li>
		<li><a href="component.html">Elements</a></li>
		<li><a href="privacy.html">Privacy Policy</a></li>
		<li><a href="faq.html">FAQs</a></li>
	</ul> -->
	</li>
	
</ul>
<!-- 로그인 안된 경우 -->
<c:if test="${empty sessionScope.userId }">
<ul class="nav-menu nav-menu-social align-to-right">
	<li>
		<a href="#" class="alio_green" data-toggle="modal" data-target="#login">
			<i class="fas fa-sign-in-alt mr-1"></i><span class="dn-lg">로그인 하세요</span>
		</a>
	</li>
</ul>
</c:if>
<!-- 로그인 된 경우 -->
<c:if test="${!empty sessionScope.userId }">
<ul class="nav-menu nav-menu-social align-to-right">
	<li>
		${sessionScope.userId }님 환영합니다!
<li><a href="<c:url value='/member/logout'/>">로그아웃</a></li>
	</li>
	<li class="add-listing">
		<c:if test="${userId=='admin'}">
		<a href="<c:url value='/admin/dashboard'/>" class="">
			 <i class="fas fa-user-circle fa-lg"></i>
		</a>
		</c:if>
		
		<c:if test="${userId!='admin' }">
		<a href="<c:url value='/mypage/dashboard'/>" class="">
			 <i class="fas fa-user-circle fa-lg"></i>
		</a>
		</c:if>
	</li>
</ul>
</c:if>
			</div>
		</nav>
	</div>
</div>
<!-- End Navigation -->
<div class="clearfix"></div>