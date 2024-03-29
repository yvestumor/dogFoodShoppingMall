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
			<a href="${pageContext.request.contextPath}/adminPageController" class="navbar-brand"  >
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
		<form method="post" action="${pageContext.request.contextPath}/updateProductController">
            <table class="table table-striped table-condensed">
             <c:forEach var="p" items="${list}">
                  <tr>
                      <th>상품이름</th>
                      <td>
                      	<input type="text" name="productName" value="${p.productName}">
                      </td>
                  </tr>
                  <tr>
                      <th>가격</th>
                      <td>
                     	 <input type="text" name="price" value="${p.price}">
                      </td>
                  </tr>
                  <tr>
                      <th>그램</th>
                      <td>
                      	<input type="text" name="gram" value="${p.gram}">
                      </td>
                  </tr>
                  <tr>
                      <th>등급</th>
                      <td>
                      	<select name="rate">
	                    		<option value="로가닉" <c:if test="${p.rate eq '로가닉'}">selected</c:if>>로가닉</option>
	                    		<option value="오가닉" <c:if test="${p.rate eq '오가닉'}">selected</c:if>>오가닉</option>
	                    		<option value="홀리스틱" <c:if test="${p.rate eq '홀리스틱'}">selected</c:if>>홀리스틱</option>
	                    		<option value="슈퍼프리미엄" <c:if test="${p.rate eq '슈퍼프리미엄'}">selected</c:if>>슈퍼프리미엄</option>
	                    		<option value="프리미엄"<c:if test="${p.rate eq '프리미엄'}">selected</c:if>>프리미엄</option>
	                    		<option value="일반" <c:if test="${p.rate eq '일반'}">selected</c:if>>일반</option>
	                    </select>
                      </td>
                  </tr>
                  <tr>
                      <th>원산지</th>
                      <td>
                      	<input type="text" name="origin" value="${p.origin}">
                      </td>
                  </tr>
                  <tr>
                      <th>알갱이크기</th>
                      <td>
                      	<select name="feedSize">
	                    		<option value="소" <c:if test="${p.feedSize eq '소'}">selected</c:if>>소</option>
	                    		<option value="중" <c:if test="${p.feedSize eq '중'}">selected</c:if>>중</option>
	                    		<option value="대" <c:if test="${p.feedSize eq '대'}">selected</c:if>>대</option>
	                    </select>
                      </td>
                  </tr>
                  <tr>
                      <th>정보</th>
                      <td>
                        <input type="text" name="info"  value="${p.info}">
                      </td>
                  </tr>
                  <tr>
                      <th>재고</th>
                      <td>
                      	<input type="number" name="stock" value="${p.stock}">
                      </td>
                  </tr>
                  <tr>
                      <th>브랜드</th>
                      <td>
                      <select name ="brandId">
	                     	 <c:forEach var="b" items="${brandList}">
	 	                     	<option value="${b.brandId}"<c:if test="${p.brandName eq b.name}">selected</c:if> >${b.name}</option>
	 	                  	</c:forEach>
 	                  	</select>
                      </td>
                  </tr>
                  <tr>
                      <th>구성성분</th>
                      	<td>
	                      	<c:forEach var="co" items="${componentList}">
	                      			<input type="checkbox" name="component" value="${co.componentId}"<c:forEach var="pc" items="${pcList}"><c:if test="${ co.componentId == pc.componentId}">checked</c:if> </c:forEach>>${co.name}
	                      	</c:forEach>
                      	</td>
                  </tr>
                  <tr>
                        <th>카테고리</th>
                      <td>
                      		<c:forEach var="c" items="${categoryList}">
	                      			<input type="checkbox" name="category" value="${c.categoryId}"<c:forEach var="pca" items="${pcaList}"><c:if test="${c.categoryId == pca.categoryId}">checked</c:if></c:forEach>>${c.name}
                       		</c:forEach>
                      </td>
                  </tr>
                  <input type="number" name="productId" value="${p.productId}" hidden="hidden">
                  <tr>
                    <td><button type="submit"><span class="label label-success">상품수정</span></button></td>
                   </tr>
               </c:forEach>
			</table>
			 </form>
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
