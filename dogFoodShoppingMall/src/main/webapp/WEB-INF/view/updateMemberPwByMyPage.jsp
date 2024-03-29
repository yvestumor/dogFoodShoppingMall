<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>mainPage</title>

<!-- Google Font -->
<link
   href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
   rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="./Resources/css/bootstrap.min.css"
   type="text/css">
<link rel="stylesheet" href="./Resources/css/font-awesome.min.css"
   type="text/css">
<link rel="stylesheet" href="./Resources/css/elegant-icons.css"
   type="text/css">
<link rel="stylesheet" href="./Resources/css/nice-select.css"
   type="text/css">
<link rel="stylesheet" href="./Resources/css/jquery-ui.min.css"
   type="text/css">
<link rel="stylesheet" href="./Resources/css/owl.carousel.min.css"
   type="text/css">
<link rel="stylesheet" href="./Resources/css/slicknav.min.css"
   type="text/css">
<link rel="stylesheet" href="./Resources/css/style.css" type="text/css">

<style>
   .bottom {margin-bottom:15px;}
   .top {margin-top:70px;}
</style>

</head>

<body>
   <!-- Page Preloder -->
   <div id="preloder">
      <div class="loader"></div>
   </div>

   <!-- Header Section Begin -->
   <header class="header">
      <div class="header__top">
         <div class="container">
            <div class="row">
               <div class="col-lg-6 col-md-6">
                  <div class="header__top__left">
                    	<ul>
							<li><i class="fa fa-envelope"></i> donghwagam@gmail.com</li>
							<li>Express Delivery with all Fresh Dog Foods</li>
						</ul>
					</div>
					</div>
					<div class="col-lg-6 col-md-6">
						<div class="header__top__right">
							<div class="header__top__right__social">
								<a href="https://www.instagram.com/gaebobheaven/"><i class="fa fa-linkedin"></i></a> 
							 	<a href="https://open.kakao.com/o/gPlN8Ahe"><i class="fa fa-pinterest-p"></i></a>
							</div>
                     <!-- 로그인/로그아웃/마이페이지 이동  -->
                     <div class="header__top__right__auth">
						<div>
							<span style="font-size: 14px">${sessionMemberId} 님 반갑습니다</span> 
							<a href="${pageContext.request.contextPath}/memberOneController" style="display: inline">| 마이페이지 </a>
							<a href="${pageContext.request.contextPath}/loginCheck/logoutController" style="display: inline"> | 로그아웃 </a>
						</div>
					</div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="container">
         <div class="row">
            <div class="col-lg-3">
               <div class="header__logo">
                  <a href="${pageContext.request.contextPath}/mainPageController"><img src="./Resources/img/dogFood.png"
                     alt=""></a>
               </div>
            </div>
            <!--  상단바  -->
            <div class="col-lg-6">
               <nav class="header__menu">
                  <ul>
                     <li class="active"><a href="${pageContext.request.contextPath}/productSearchController">상세검색</a></li>
                     <li><a href="${pageContext.request.contextPath}/mainPageController">고객센터</a></li>
                  </ul>
               </nav>
            </div>
            <div class="col-lg-3">
               <div class="header__cart">
                  <ul>
                     <li>장바구니<a href="${pageConext.request.contextPath}/basketListController"><i class="fa fa-shoppintg-bag"></i> </a></li>
                  </ul>
                  <div class="header__cart__price">
                     item: <span>$150.00</span>
                  </div>
               </div>
            </div>
         </div>
         <div class="humberger__open">
            <i class="fa fa-bars"></i>
         </div>
      </div>
   </header>
   <!-- Header Section End -->
   <!-- Hero Section Begin -->
      <section class="hero">
         <div class="container">
            <div class="row">
               <div class="col-3">
                  <div class="hero__categories">
                     <div class="hero__categories__all">
                        <i class="fa fa-bars"></i> <span>마이페이지 목록</span>
                     </div>
                     <!-- 마이페이지 목록출력  -->   
                     <ul>
                        <li><a href="${pageContext.request.contextPath}/memberOneController">회원/애견 정보</a></li>
                        <li><a href="${pageContext.request.contextPath}/purchaseMemberListController">구매내역</a></li>
                     </ul>
                  </div>
               </div>
               <div class="col-9">
                  <h3 class="text-success bottom">비밀번호 수정</h3>
                     <form id="updateMemberPwForm" method="post" action="${pageContext.request.contextPath}/updateMemberPwByMyPageController">
                        <table class="table">
                           <tr>
                              <th>아이디</th>
                              <td>${memberId}</td>
                           </tr>
                           <tr>
                              <th>변경할 비밀번호</th>
                              <td>
                              	<c:if test="${msg != null}">
                              		사용하셨던 비밀번호는 사용하실 수 없습니다!
                              	</c:if>
                              	<input name="changePw" id="memberPw" type="password" class="form-control">
                              	<span id="pwHelper" class="helper"></span>
                              </td>
                           <tr>
                              <th>비밀번호 확인</th>
                              <td>
                              	<input name="changePwChk" id="memberPwCheck" type="password" class="form-control">
                              	<span id="pwCheckHelper" class="helper"></span>
                              </td>
                           </tr>
                        </table>
                        <button type="button" id="updateMemberPw" class="site-btn float-right">수정하기</button>
                     </form>
               </div>
            </div>
         </div>
      </section>
   
   <!-- Footer Section Begin -->
   <footer class="footer spad">
      <div class="container">
         <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
               <div class="footer__about">
                  <div class="footer__about__logo">
                     <a href="${pageContext.request.contextPath}/mainPageController"><img src="./Resources/img/dogFoot.png"
                        alt=""></a>
                  </div>
                  <ul>
                     <li>Address: 60-49 Road 11378 New York</li>
                     <li>Phone: +65 11.188.888</li>
                     <li>Email: hello@colorlib.com</li>
                  </ul>
               </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
               <div class="footer__widget">
                  <h6>Useful Links</h6>
                  <ul>
                     <li><a href="#">About Us</a></li>
                     <li><a href="#">About Our Shop</a></li>
                     <li><a href="#">Secure Shopping</a></li>
                     <li><a href="#">Delivery infomation</a></li>
                     <li><a href="#">Privacy Policy</a></li>
                     <li><a href="#">Our Sitemap</a></li>
                  </ul>
                  <ul>
                     <li><a href="#">Who We Are</a></li>
                     <li><a href="#">Our Services</a></li>
                     <li><a href="#">Projects</a></li>
                     <li><a href="#">Contact</a></li>
                     <li><a href="#">Innovation</a></li>
                     <li><a href="#">Testimonials</a></li>
                  </ul>
               </div>
            </div>
            <div class="col-lg-4 col-md-12">
               <div class="footer__widget">
                  <h6>Join Our Newsletter Now</h6>
                  <p>Get E-mail updates about our latest shop and special
                     offers.</p>
                  <form action="#">
                     <input type="text" placeholder="Enter your mail">
                     <button type="submit" class="site-btn">Subscribe</button>
                  </form>
                  <div class="footer__widget__social">
                     <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
                        class="fa fa-instagram"></i></a> <a href="#"><i
                        class="fa fa-twitter"></i></a> <a href="#"><i
                        class="fa fa-pinterest"></i></a>
                  </div>
               </div>
            </div>
         </div>
         <div class="row">
            <div class="col-lg-12">
               <div class="footer__copyright">
                  <div class="footer__copyright__text">
                     <p>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;
                        <script>
                           document.write(new Date().getFullYear());
                        </script>
                        All rights reserved | This template is made with <i
                           class="fa fa-heart" aria-hidden="true"></i> by <a
                           href="https://colorlib.com" target="_blank">Colorlib</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                     </p>
                  </div>
                  <div class="footer__copyright__payment">
                     <img src="./Resources/img/payment-item.png" alt="">
                  </div>
               </div>
            </div>
         </div>
      </div>
   </footer>
   <!-- Footer Section End -->

   <!-- Js Plugins -->
   <script src="./Resources/js/jquery-3.3.1.min.js"></script>
   <script src="./Resources/js/bootstrap.min.js"></script>
   <script src="./Resources/js/jquery.nice-select.min.js"></script>
   <script src="./Resources/js/jquery-ui.min.js"></script>
   <script src="./Resources/js/jquery.slicknav.js"></script>
   <script src="./Resources/js/mixitup.min.js"></script>
   <script src="./Resources/js/owl.carousel.min.js"></script>
   <script src="./Resources/js/main.js"></script>
   <script>
		 $('#memberPw').blur(function() {
	           if ($('#memberPw').val().length > 0 && $('#memberPw').val().length < 4) {
	              $('#pwHelper').text('비밀번호는 4글자 이상으로 입력해주세요.');
	              $('#memberPw').focus();
	           } else if ($('#memberPw').val().length > 15) {
	              $('#pwHelper').text('비밀번호는 15글자 이내로 입력해주세요.');
	              $('#memberPw').val().substr(0, 15);
	              $('#memberPw').focus();
	           } else if ($('#memberPw').val() == '') {
	    	      $('#pwHelper').text('비밀번호를 입력해주세요.'); 
	    	      $('#memberPw').focus();
	          } else {
	             $('#pwHelper').text('');
	          }
          });
		  $('#memberPwCheck').blur(function() {
			      if ($('#memberPwCheck').val().length > 0 && $('#memberPwCheck').val().length < 4) {
			         $('#pwCheckHelper').text('비밀번호는 4글자 이상으로 입력해주세요.');
			         $('#memberPwCheck').focus();
			      } else if ($('#memberPwCheck').val().length > 15) {
			         $('#pwCheckHelper').text('비밀번호는 15글자 이내로 입력해주세요.');
			         $('#memberPwCheck').val().substr(0, 15);
			         $('#memberPwCheck').focus();
			      } else {
			         $('#pwCheckHelper').text('');
			      }
		   });
		   $('#memberPwCheck').blur(function() {
	    		  if ($('#memberPw').val() != $('#memberPwCheck').val()) {
	        		 $('#pwCheckHelper').text('비밀번호가 일치하지 않습니다.');
	    		  } else {
	      		     $('#pwCheckHelper').text('비밀번호가 일치합니다.');
	    		  }
  		   });
		   $('#updateMemberPw').click(function() {
			      if ($('#memberPw').val() == '') {
			         $('#pwHelper').text('비밀번호를 입력해주세요.');
			         $('#memberPw').focus();
			      } else if ($('#memberPwCheck').val() == '') {
			         $('#pwHelper').text('');
			         $('#pwCheckHelper').text('비밀번호를 입력해주세요.');
			         $('#memberPwCheck').focus();
			      } else {
			          $('#updateMemberPwForm').submit();
			      }
			});
 
   </script>


</body>

</html>