<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style type="text/css">
	h1.page-header {
    margin-top: -5px;
}

.sidebar {
	padding-left: 0;
}

.main-container { 
	background: #FFF;
	padding-top: 15px;
	margin-top: -20px;
}

.footer {
	width: 100%;
}  

:focus {
	outline: none;
}

.side-menu {
	position: relative;
	width: 100%;
	height: 100%;
	background-color: #f8f8f8;
	border-right: 1px solid #e7e7e7;
}
.side-menu .navbar {
	border: none;
}
.side-menu .navbar-header {
	width: 100%;
	border-bottom: 1px solid #e7e7e7;
}
.side-menu .navbar-nav .active a {
	background-color: transparent;
	margin-right: -1px;
	border-right: 5px solid #e7e7e7;
}
.side-menu .navbar-nav li {
	display: block;
	width: 100%;
	border-bottom: 1px solid #e7e7e7;
}
.side-menu .navbar-nav li a {
	padding: 15px;
}
.side-menu .navbar-nav li a .glyphicon {
	padding-right: 10px;
}
.side-menu #dropdown {
	border: 0;
	margin-bottom: 0;
	border-radius: 0;
	background-color: transparent;
	box-shadow: none;
}
.side-menu #dropdown .caret {
	float: right;
	margin: 9px 5px 0;
}
.side-menu #dropdown .indicator {
	float: right;
}
.side-menu #dropdown > a {
	border-bottom: 1px solid #e7e7e7;
}
.side-menu #dropdown .panel-body {
	padding: 0;
	background-color: #f3f3f3;
}
.side-menu #dropdown .panel-body .navbar-nav {
	width: 100%;
}
.side-menu #dropdown .panel-body .navbar-nav li {
	padding-left: 15px;
	border-bottom: 1px solid #e7e7e7;
}
.side-menu #dropdown .panel-body .navbar-nav li:last-child {
	border-bottom: none;
}
.side-menu #dropdown .panel-body .panel > a {
	margin-left: -20px;
	padding-left: 35px;
}
.side-menu #dropdown .panel-body .panel-body {
	margin-left: -15px;
}
.side-menu #dropdown .panel-body .panel-body li {
	padding-left: 30px;
}
.side-menu #dropdown .panel-body .panel-body li:last-child {
	border-bottom: 1px solid #e7e7e7;
}
.side-menu #search-trigger {
	background-color: #f3f3f3;
	border: 0;
	border-radius: 0;
	position: absolute;
	top: 0;
	right: 0;
	padding: 15px 18px;
}
.side-menu .brand-name-wrapper {
	min-height: 50px;
}
.side-menu .brand-name-wrapper .navbar-brand {
	display: block;
}
.side-menu #search {
	position: relative;
	z-index: 1000;
}
.side-menu #search .panel-body {
	padding: 0;
}
.side-menu #search .panel-body .navbar-form {
	padding: 0;
	padding-right: 50px;
	width: 100%;
	margin: 0;
	position: relative;
	border-top: 1px solid #e7e7e7;
}
.side-menu #search .panel-body .navbar-form .form-group {
	width: 100%;
	position: relative;
}
.side-menu #search .panel-body .navbar-form input {
	border: 0;
	border-radius: 0;
	box-shadow: none;
	width: 100%;
	height: 50px;
}
.side-menu #search .panel-body .navbar-form .btn {
	position: absolute;
	right: 0;
	top: 0;
	border: 0;
	border-radius: 0;
	background-color: #f3f3f3;
	padding: 15px 18px;
}
/* Main body section */
.side-body {
	margin-left: 310px;
}
/* small screen */
@media (max-width: 768px) {
	.side-menu {
		position: relative;
		width: 100%;
		height: 0;
		border-right: 0;
	}

	.side-menu .navbar {
		z-index: 999;
		position: relative;
		height: 0;
		min-height: 0;
		background-color:none !important;
		border-color: none !important;
	}
	.side-menu .brand-name-wrapper .navbar-brand {
		display: inline-block;
	}
	/* Slide in animation */
	@-moz-keyframes slidein {
		0% {
			left: -300px;
		}
		100% {
			left: 10px;
		}
	}
	@-webkit-keyframes slidein {
		0% {
			left: -300px;
		}
		100% {
			left: 10px;
		}
	}
	@keyframes slidein {
		0% {
			left: -300px;
		}
		100% {
			left: 10px;
		}
	}
	@-moz-keyframes slideout {
		0% {
			left: 0;
		}
		100% {
			left: -300px;
		}
	}
	@-webkit-keyframes slideout {
		0% {
			left: 0;
		}
		100% {
			left: -300px;
		}
	}
	@keyframes slideout {
		0% {
			left: 0;
		}
		100% {
			left: -300px;
		}
	}
	/* Slide side menu*/
	/* Add .absolute-wrapper.slide-in for scrollable menu -> see top comment */
	.side-menu-container > .navbar-nav.slide-in {
		-moz-animation: slidein 300ms forwards;
		-o-animation: slidein 300ms forwards;
		-webkit-animation: slidein 300ms forwards;
		animation: slidein 300ms forwards;
		-webkit-transform-style: preserve-3d;
		transform-style: preserve-3d;
	}
	.side-menu-container > .navbar-nav {
		/* Add position:absolute for scrollable menu -> see top comment */
		position: fixed;
		left: -300px;
		width: 300px;
		top: 43px;
		height: 100%;
		border-right: 1px solid #e7e7e7;
		background-color: #f8f8f8;
		overflow: auto;
		-moz-animation: slideout 300ms forwards;
		-o-animation: slideout 300ms forwards;
		-webkit-animation: slideout 300ms forwards;
		animation: slideout 300ms forwards;
		-webkit-transform-style: preserve-3d;
		transform-style: preserve-3d;
	}
	@-moz-keyframes bodyslidein {
		0% {
			left: 0;
		}
		100% {
			left: 300px;
		}
	}
	@-webkit-keyframes bodyslidein {
		0% {
			left: 0;
		}
		100% {
			left: 300px;
		}
	}
	@keyframes bodyslidein {
		0% {
			left: 0;
		}
		100% {
			left: 300px;
		}
	}
	@-moz-keyframes bodyslideout {
		0% {
			left: 300px;
		}
		100% {
			left: 0;
		}
	}
	@-webkit-keyframes bodyslideout {
		0% {
			left: 300px;
		}
		100% {
			left: 0;
		}
	}
	@keyframes bodyslideout {
		0% {
			left: 300px;
		}
		100% {
			left: 0;
		}
	}
	/* Slide side body*/
	.side-body {
		margin-left: 5px;
		margin-top: 70px;
		position: relative;
		-moz-animation: bodyslideout 300ms forwards;
		-o-animation: bodyslideout 300ms forwards;
		-webkit-animation: bodyslideout 300ms forwards;
		animation: bodyslideout 300ms forwards;
		-webkit-transform-style: preserve-3d;
		transform-style: preserve-3d;
	}
	.body-slide-in {
		-moz-animation: bodyslidein 300ms forwards;
		-o-animation: bodyslidein 300ms forwards;
		-webkit-animation: bodyslidein 300ms forwards;
		animation: bodyslidein 300ms forwards;
		-webkit-transform-style: preserve-3d;
		transform-style: preserve-3d;
	}
	/* Hamburger */
	.navbar-toggle-sidebar {
		border: 0;
		float: left;
		padding: 18px;
		margin: 0;
		border-radius: 0;
		background-color: #f3f3f3;
	}
	/* Search */
	#search .panel-body .navbar-form {
		border-bottom: 0;
	}
	#search .panel-body .navbar-form .form-group {
		margin: 0;
	}
	.side-menu .navbar-header {
		/* this is probably redundant */
		position: fixed;
		z-index: 3;
		background-color: #f8f8f8;
	}
	/* Dropdown tweek */
	#dropdown .panel-body .navbar-nav {
		margin: 0;
	}
}
</style>
</head>
<body>
	<!------ Include the above in your HEAD tag ---------->

<nav class="navbar navbar-default navbar-static-top">
    <div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle navbar-toggle-sidebar collapsed">
			MENU
			</button>
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a href="${pageContext.request.contextPath}/adminCheck/adminPageController" class="navbar-brand">
				Administrator
			</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">      
			<form class="navbar-form navbar-left" method="GET" role="search">
				<div class="form-group">
					<input type="text" name="q" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-search"></i></button>
			</form>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown ">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
						${sessionMemberId} 님 반갑습니다
						<span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li class="dropdown-header">SETTINGS</li>
							<li class=""><a href="#">Other Link</a></li>
							<li class=""><a href="#">Other Link</a></li>
							<li class=""><a href="#">Other Link</a></li>
							<li class="divider"></li>
							<li><a href="${pageContext.request.contextPath}/loginCheck/logoutController">Logout</a></li>
						</ul>
					</li>
				</ul>
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>  	<div class="container-fluid main-container">
  		<div class="col-md-2 sidebar">
  			<div class="row">
	<!-- uncomment code for absolute positioning tweek see top comment in css -->
	<div class="absolute-wrapper"> </div>
	<!-- Menu -->
	<div class="side-menu">
		<nav class="navbar navbar-default" role="navigation">
			<!-- Main Menu -->
			<div class="side-menu-container">
				<ul class="nav navbar-nav">
					<li class="active"><a href="${pageContext.request.contextPath}/mainPageController"><span class="glyphicon glyphicon-dashboard"></span>홈</a></li>
					<li><a href="${pageContext.request.contextPath}/memberListController"><span class="glyphicon glyphicon-plane"></span>회원정보</a></li>
					<li><a href="${pageContext.request.contextPath}/productManagementController"><span class="glyphicon glyphicon-cloud"></span> 상품 정보</a></li>
					<li><a href="${pageContext.request.contextPath}/chartListController"><span class="glyphicon glyphicon-signal"></span> 통계</a></li>
				</ul>
			</div><!-- /.navbar-collapse -->
		</nav>

	</div>
</div>
 </div>
  	<div class="container">
	<div class="row">
		<div class="span5">
            <table class="table table-striped table-condensed">
             <c:forEach var="p" items="${list}">
                  <tr>
                      <th>상품 ID</th>
                      <td>${p.productId}</td>
                  </tr>
                  <tr>
                      <th>상품이름</th>
                      <td>${p.productName}</td>
                  </tr>
                  <tr>
                      <th>가격</th>
                      <td>${p.price}</td>
                  </tr>
                  <tr>
                      <th>등급</th>
                      <td>${p.rate}</td>
                  </tr>
                  <tr>
                      <th>원산지</th>
                      <td>${p.origin}</td>
                  </tr>
                  <tr>
                      <th>알갱이크기</th>
                      <td>${p.feedSize}</td>
                  </tr>
                  <tr>
                      <th>정보</th>
                      <td>${p.info}</td>
                  </tr>
                  <tr>
                      <th>사진</th>
                      <td><img src="${pageContext.request.contextPath}/images/${p.photoName}"></td>
                  </tr>
                  <tr>
                   <th>정보사진</th>
                  	  <td>
                  	  	<c:forEach var="po" items="${photoList}">
                  	  		<img src="${pageContext.request.contextPath}/images/${po.name}">
                  	  	</c:forEach>
                  	  </td>
                  </tr>
                  <tr>
                      <th>재고</th>
                      <td>${p.stock}</td>
                  </tr>
                  <tr>
                      <th>브랜드</th>
                      <td>${p.brandName}</td>
                  </tr>
                  <tr>
                      <th>구성성분</th>
                      <td>${p.componentName}</td>
                  </tr>
                  <tr>
                      <th>수정일</th>
                      <td>${p.updateDate}</td>
                  </tr>
                  <tr>
                    <td><a href="${pageContext.request.contextPath}/updateProductController?productId=${p.productId}"><span class="label label-success">상품수정</span></a>
                    <a href="${pageContext.request.contextPath}/deleteProductController?productId=${p.productId}"><span class="label label-danger">상품삭제</span></a></td>
                   </tr>
               </c:forEach>
			</table>
		</div>
	</div>
</div>
  		<footer class="pull-left footer">
  			<p class="col-md-12">
  				<hr class="divider">
  				Copyright &COPY; 2015 <a href="http://www.pingpong-labs.com">Gravitano</a>
  			</p>
  		</footer>
  	</div>
</body>
</html>
