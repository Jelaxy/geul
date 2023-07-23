<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<head>
    <title>Bisum - eCommerce Bootstrap 5 Template</title>
    <!-- meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="meta description">
    <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">
    <!-- fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">
    <!-- all css -->
    <style>
        :root {
            --primary-color: #00234D;
            --secondary-color: #F76B6A;

            --btn-primary-border-radius: 0.25rem;
            --btn-primary-color: #fff;
            --btn-primary-background-color: #00234D;
            --btn-primary-border-color: #00234D;
            --btn-primary-hover-color: #fff;
            --btn-primary-background-hover-color: #00234D;
            --btn-primary-border-hover-color: #00234D;
            --btn-primary-font-weight: 500;

            --btn-secondary-border-radius: 0.25rem;
            --btn-secondary-color: #00234D;
            --btn-secondary-background-color: transparent;
            --btn-secondary-border-color: #00234D;
            --btn-secondary-hover-color: #fff;
            --btn-secondary-background-hover-color: #00234D;
            --btn-secondary-border-hover-color: #00234D;
            --btn-secondary-font-weight: 500;

            --heading-color: #000;
            --heading-font-family: 'Poppins', sans-serif;
            --heading-font-weight: 700;

            --title-color: #000;
            --title-font-family: 'Poppins', sans-serif;
            --title-font-weight: 400;

            --body-color: #000;
            --body-background-color: #fff;
            --body-font-family: 'Poppins', sans-serif;
            --body-font-size: 14px;
            --body-font-weight: 400;

            --section-heading-color: #000;
            --section-heading-font-family: 'Poppins', sans-serif;
            --section-heading-font-size: 48px;
            --section-heading-font-weight: 600;

            --section-subheading-color: #000;
            --section-subheading-font-family: 'Poppins', sans-serif;
            --section-subheading-font-size: 16px;
            --section-subheading-font-weight: 400;
        }
    </style>

    <link rel="stylesheet" href="assets/css/vendor.css">
    <link rel="stylesheet" href="assets/css/style.css">
</head>

<body>
    <div class="body-wrapper">
        <jsp:include page="./header.jsp" flush="true"/>
        <!-- breadcrumb start -->
        <div class="breadcrumb">
            <div class="container">
                <ul class="list-unstyled d-flex align-items-center m-0">
                    <li><a href="/">Home</a></li>
                    <li>
                        <svg class="icon icon-breadcrumb" width="64" height="64" viewBox="0 0 64 64" fill="none"
                            xmlns="http://www.w3.org/2000/svg">
                            <g opacity="0.4">
                                <path
                                    d="M25.9375 8.5625L23.0625 11.4375L43.625 32L23.0625 52.5625L25.9375 55.4375L47.9375 33.4375L49.3125 32L47.9375 30.5625L25.9375 8.5625Z"
                                    fill="#000" />
                            </g>
                        </svg>
                    </li>
                    <li>마이페이지</li>
                </ul>
            </div>
        </div>
        <!-- breadcrumb end -->

        <main id="MainContent" class="content-for-layout">
        <div class="container mt-5 pt-5" id="content-main" style="margin:400px;">
            <div class="row">
                <div class="col-sm-9">
                	<div class="tab-list product-tab-list">
                        <nav class="nav product-tab-nav"  style="margin-left:540px;">
                            <a class="product-tab-link tab-link" href="/geulrowding/BisumHTML/myproject_profilemy.jsp">My Page</a>
                            <a class="product-tab-link tab-link" href="/geulrowding/BisumHTML/myproject_fundinglist.jsp">My Funding</a>
                            <a class="product-tab-link tab-link active" href="/geulrowding/BisumHTML/myproject_profile.jsp">My Project</a>
                        </nav>
                    </div>
                    <br>
                    <h1>My Project</h1>
                    <hr>
                    <div class="tab-list product-tab-list">
                        <nav class="nav product-tab-nav">
                        	<a class="product-tab-link tab-link" href="/geulrowding/BisumHTML/myproject_profile.jsp" >작가 프로필</a>
                            <a class="product-tab-link tab-link active" href="/geulrowding/BisumHTML/myproject_pjlist.jsp" >진행중인 프로젝트</a>
                            <a class="product-tab-link tab-link" href="/geulrowding/BisumHTML/myproject_notice.jsp" >새소식 작성</a>    
                        </nav>
                    </div>
                    <div class="bg-white rounded shadow-sm container p-3">
                        
               
                <div class="container">
                    <div class="row">
                    	<!-- 왼쪽 상세내역 -->
                        <div class="col-lg-9 col-md-12 col-12">
                            <div class="article-rte" >
                            	<!-- 프로젝트 상세내역 -->
                                <div class="article-meta" >
                                    <div class="article-card-published text_14 d-flex align-items-center">
                                        <a href="#" class="article-date d-flex align-items-center">
                                            <span class="icon-publish">
                                                <svg width="20" height="19" viewBox="0 0 20 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M0.347656 0.5V15.5H7.53711L10.0977 18.0605L12.6582 15.5H19.8477V0.5H0.347656ZM1.84766 2H18.3477V14H12.0371L10.0977 15.9395L8.1582 14H1.84766V2ZM4.84766 4.25V5.75H15.3477V4.25H4.84766ZM4.84766 7.25V8.75H15.3477V7.25H4.84766ZM4.84766 10.25V11.75H12.3477V10.25H4.84766Z" fill="black"/>
                                                </svg>                                                    
                                            </span>
                                            <span class="ms-2">총 4건</span>
                                        </a>
                                    </div>
                                </div>
                                <div class="article-content">
                                    <h6 class="heading_24 mb-3 mt-5" style="font-weight:bold;">오픈예정 펀딩</h6>
                                    <a href="">
                                   	<div style="padding:30px;border-radius:5px;background-color:#e9e9e9;">
	                                   	<h6 class="article-title" style="display:inline-block;">사진공원의 사진에 잘나오는 스튜디오 세팅법</h6>
	                                   	<span style="color:#40AFFF;display:inline-block;padding-left:10px;font-weight:bold;">오픈예정</span>
	                                   	<span style="display:inline-block;padding-left:10px;font-size:10px;color:black;">시작일: 2023-08-10</span>
                                   	</div>
                                   	</a>
                                </div>
                                <div class="article-content">
                                    <h6 class="heading_24 mb-3 mt-5" style="font-weight:bold;">진행중인 펀딩</h6>
                                    <a href="">
                                   	<div style="padding:30px;border-radius:5px;background-color:#e9e9e9;">
	                                   	<h6 class="article-title" style="display:inline-block;">사진공원의 인물 촬영 보정 가이드북</h6>
	                                   	<span style="color:#40AFFF;display:inline-block;padding-left:10px;font-weight:bold;">55%달성</span>
	                                   	<span style="display:inline-block;padding-left:10px;font-size:10px;color:black;">종료일: 2023-07-24</span>
                                   	</div>
                                   	</a>
                                </div>
								<div class="article-content">
                                    <h6 class="heading_24 mb-3 mt-5" style="font-weight:bold;">종료된 펀딩</h6>
                                    <a href="">
                                   	<div style="padding:30px;border-radius:5px;background-color:#e9e9e9;">
	                                   	<h6 class="article-title" style="display:inline-block;">사진공원의 아날로그 보정 기초편</h6>
	                                   	<span style="color:#40AFFF;display:inline-block;padding-left:10px;font-weight:bold;">210%달성</span>
	                                   	<span style="display:inline-block;padding-left:10px;font-size:10px;color:black;">종료일: 2023-02-14</span>
                                   	</div>
                                   	</a>
                                   	<br>
                                   	<a href="">
                                   	<div style="padding:30px;border-radius:5px;background-color:#e9e9e9;">
	                                   	<h6 class="article-title" style="display:inline-block;">사진공원의 아날로그 보정 응용편</h6>
	                                   	<span style="color:#F76B6A;display:inline-block;padding-left:10px;font-weight:bold;">80%달성</span>
	                                   	<span style="display:inline-block;padding-left:10px;font-size:10px;color:black;">종료일: 2023-05-16</span>
                                   	</div>
                                   	</a>
                              </div>
                              </div>
                              </div>
                              </div>
                              </div>
                             
                    
                        
                        
                        
                    </div>
                </div>
             </div>
          </div>
      </main>
      <jsp:include page="./footer.jsp" flush="true"/>
        
        <!-- all js -->
        <script src="assets/js/vendor.js"></script>
        <script src="assets/js/main.js"></script>
    </div>
</body>

</html>