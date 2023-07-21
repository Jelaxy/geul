<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<c:set var="path" 
	value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>
 
<!DOCTYPE html>
<html>
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
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <!-- all css -->
    <style>
    	.bar-container {
			width: 100%;
			background-color: #f1f1f1;
			text-align: center;
			color: white;
			border-radius: 5px;
		}
		.bar {
			height: 20px;
			background-color: #2196F3;
			border-radius: 5px;
		}
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
        <main id="MainContent" class="content-for-layout">
            <div class="article-page mt-100">
                <div class="container">
                	<div class="tab-list product-tab-list">
                        <nav class="nav product-tab-nav">
                            <a class="product-tab-link tab-link active" href="#project" data-bs-toggle="tab">프로젝트 목록</a>
                            <a class="product-tab-link tab-link" href="#review" data-bs-toggle="tab">새소식</a>
                        </nav>
                    </div>        
                             
               	<div class="tab-content product-tab-content">
	             	<!-- 프로젝트 목록 -->
	                <div id="project" class="tab-pane fade show active">
                    <div class="row">
                    	<!-- 왼쪽 상세내역 -->
                        <div class="col-lg-9 col-md-12 col-12">
                            <div class="article-rte" >
                            	<!-- 프로젝트 상세내역 -->
                                <div class="article-meta" >
                                    <h2 class="article-title">프로젝트 목록</h2>
                                    <div class="article-card-published text_14 d-flex align-items-center">
                                        <span class="article-author d-flex align-items-center">
                                            <span class="icon-author"><svg width="15" height="17"
                                                    viewBox="0 0 15 17" fill="none"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M7.5 0.59375C4.72888 0.59375 2.46875 2.85388 2.46875 5.625C2.46875 7.3573 3.35315 8.89587 4.69238 9.80274C2.12903 10.9033 0.3125 13.447 0.3125 16.4063H1.75C1.75 13.2224 4.31616 10.6563 7.5 10.6563C10.6838 10.6563 13.25 13.2224 13.25 16.4063H14.6875C14.6875 13.447 12.871 10.9033 10.3076 9.80274C11.6469 8.89587 12.5313 7.3573 12.5313 5.625C12.5313 2.85388 10.2711 0.59375 7.5 0.59375ZM7.5 2.03125C9.49341 2.03125 11.0938 3.63159 11.0938 5.625C11.0938 7.61841 9.49341 9.21875 7.5 9.21875C5.50659 9.21875 3.90625 7.61841 3.90625 5.625C3.90625 3.63159 5.50659 2.03125 7.5 2.03125Z"
                                                        fill="#00234D" />
                                                </svg>
                                            </span>
                                            <span class="ms-2">사진공원</span>
                                        </span>
                                        <span class="article-separator mx-3">
                                            <svg width="2" height="12" viewBox="0 0 2 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path opacity="0.4" d="M1.09761 0.5H0V11.5H1.09761V0.5Z" fill="black"/>
                                            </svg>
                                        </span>
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
                        <!-- 오픈쪽 작가 프로필-->
                        <div class="col-lg-3 col-md-12 col-12">
                            <div class="filter-drawer blog-sidebar">
                                <div class="filter-widget widget-blogger text-center">
                                    <div class="blogger-img mb-3">
                                        <img class="rounded" src="assets/img/project/logo.png" alt="img">
                                    </div>
                                    <h4 class="blogger-name heading_18 mb-1" style="font-weight:bold;">사진공원</h4>
                                    <p class="blogger-designation mb-1">비문학 작가</p>
                                    <div class="product-rating d-flex align-items-center mb-3 justify-content-center">
                                        <span class="star-rating">
                                            <svg width="16" height="15" viewBox="0 0 16 15" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M15.168 5.77344L10.082 5.23633L8 0.566406L5.91797 5.23633L0.832031 5.77344L4.63086 9.19727L3.57031 14.1992L8 11.6445L12.4297 14.1992L11.3691 9.19727L15.168 5.77344Z" fill="#FFAE00"></path>
                                            </svg>
                                            <svg width="16" height="15" viewBox="0 0 16 15" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M15.168 5.77344L10.082 5.23633L8 0.566406L5.91797 5.23633L0.832031 5.77344L4.63086 9.19727L3.57031 14.1992L8 11.6445L12.4297 14.1992L11.3691 9.19727L15.168 5.77344Z" fill="#FFAE00"></path>
                                            </svg>
                                            <svg width="16" height="15" viewBox="0 0 16 15" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M15.168 5.77344L10.082 5.23633L8 0.566406L5.91797 5.23633L0.832031 5.77344L4.63086 9.19727L3.57031 14.1992L8 11.6445L12.4297 14.1992L11.3691 9.19727L15.168 5.77344Z" fill="#FFAE00"></path>
                                            </svg>
                                            <svg width="16" height="15" viewBox="0 0 16 15" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M15.168 5.77344L10.082 5.23633L8 0.566406L5.91797 5.23633L0.832031 5.77344L4.63086 9.19727L3.57031 14.1992L8 11.6445L12.4297 14.1992L11.3691 9.19727L15.168 5.77344Z" fill="#FFAE00"></path>
                                            </svg>
                                            <svg width="16" height="15" viewBox="0 0 16 15" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M15.168 5.77344L10.082 5.23633L8 0.566406L5.91797 5.23633L0.832031 5.77344L4.63086 9.19727L3.57031 14.1992L8 11.6445L12.4297 14.1992L11.3691 9.19727L15.168 5.77344Z" fill="#B2B2B2"></path>
                                            </svg>                                            
                                        </span>
                                    </div>
                                    <p class="blogger-desc mb-3">아날로그 필름의 감성을 담은 <br>촬영과 보정법을 공유합니다.</p>   
                                    <p style="text-align:left;padding-left:50px;">
                                    	<strong>email :</strong> example@gmail.com
                                    <br><strong>phone :</strong> 010-0000-0000
                                    </p>    
                                </div>
                            </div>
                        </div>
                     </div>
                    </div>  
                  
                  	<!-- 후기 -->
	                <div id="review" class="tab-pane fade">
                    <div class="row">
                    	<!-- 왼쪽 상세내역 -->
                        <div class="col-lg-9 col-md-12 col-12">
                            <div class="article-rte" >
								<!-- 작가 후기 -->
                                <div class="article-meta">
                                    <h2 class="article-title">프로젝트 후기</h2>
                                    <div class="article-card-published text_14 d-flex align-items-center">
                                        <span class="star-rating">
                                            <svg width="16" height="15" viewBox="0 0 16 15" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M15.168 5.77344L10.082 5.23633L8 0.566406L5.91797 5.23633L0.832031 5.77344L4.63086 9.19727L3.57031 14.1992L8 11.6445L12.4297 14.1992L11.3691 9.19727L15.168 5.77344Z" fill="#FFAE00"></path>
                                            </svg>
                                            <svg width="16" height="15" viewBox="0 0 16 15" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M15.168 5.77344L10.082 5.23633L8 0.566406L5.91797 5.23633L0.832031 5.77344L4.63086 9.19727L3.57031 14.1992L8 11.6445L12.4297 14.1992L11.3691 9.19727L15.168 5.77344Z" fill="#FFAE00"></path>
                                            </svg>
                                            <svg width="16" height="15" viewBox="0 0 16 15" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M15.168 5.77344L10.082 5.23633L8 0.566406L5.91797 5.23633L0.832031 5.77344L4.63086 9.19727L3.57031 14.1992L8 11.6445L12.4297 14.1992L11.3691 9.19727L15.168 5.77344Z" fill="#FFAE00"></path>
                                            </svg>
                                            <svg width="16" height="15" viewBox="0 0 16 15" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M15.168 5.77344L10.082 5.23633L8 0.566406L5.91797 5.23633L0.832031 5.77344L4.63086 9.19727L3.57031 14.1992L8 11.6445L12.4297 14.1992L11.3691 9.19727L15.168 5.77344Z" fill="#FFAE00"></path>
                                            </svg>
                                            <svg width="16" height="15" viewBox="0 0 16 15" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M15.168 5.77344L10.082 5.23633L8 0.566406L5.91797 5.23633L0.832031 5.77344L4.63086 9.19727L3.57031 14.1992L8 11.6445L12.4297 14.1992L11.3691 9.19727L15.168 5.77344Z" fill="#B2B2B2"></path>
                                            </svg>                                            
                                        </span>
                                        <span class="article-separator mx-3">
                                            <svg width="2" height="12" viewBox="0 0 2 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path opacity="0.4" d="M1.09761 0.5H0V11.5H1.09761V0.5Z" fill="black"/>
                                            </svg>
                                        </span>
                                        <a href="#" class="article-date d-flex align-items-center">
                                            <span class="icon-publish">
                                                <svg width="20" height="19" viewBox="0 0 20 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M0.347656 0.5V15.5H7.53711L10.0977 18.0605L12.6582 15.5H19.8477V0.5H0.347656ZM1.84766 2H18.3477V14H12.0371L10.0977 15.9395L8.1582 14H1.84766V2ZM4.84766 4.25V5.75H15.3477V4.25H4.84766ZM4.84766 7.25V8.75H15.3477V7.25H4.84766ZM4.84766 10.25V11.75H12.3477V10.25H4.84766Z" fill="black"/>
                                                </svg>                                                    
                                            </span>
                                            <span class="ms-2">총 2건</span>
                                        </a>
                                    </div>
                                </div>
                                <div class="comments-main">
                                    <div class="comments-main-content">
                                    	<!-- 후기 본문 -->
                                        <div class="comments-meta" style="padding:5px;">
                                            <h4 class="commentator-name">홍길동</h4>
                                            <div class="comments-date article-date d-flex align-items-center">
                                                <span class="icon-publish">
                                                    <svg width="17" height="18" viewBox="0 0 17 18" fill="none"
                                                        xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                            d="M3.46875 0.875V1.59375H0.59375V17.4063H16.4063V1.59375H13.5313V0.875H12.0938V1.59375H4.90625V0.875H3.46875ZM2.03125 3.03125H3.46875V3.75H4.90625V3.03125H12.0938V3.75H13.5313V3.03125H14.9688V4.46875H2.03125V3.03125ZM2.03125 5.90625H14.9688V15.9688H2.03125V5.90625ZM6.34375 7.34375V8.78125H7.78125V7.34375H6.34375ZM9.21875 7.34375V8.78125H10.6563V7.34375H9.21875ZM12.0938 7.34375V8.78125H13.5313V7.34375H12.0938ZM3.46875 10.2188V11.6563H4.90625V10.2188H3.46875ZM6.34375 10.2188V11.6563H7.78125V10.2188H6.34375ZM9.21875 10.2188V11.6563H10.6563V10.2188H9.21875ZM12.0938 10.2188V11.6563H13.5313V10.2188H12.0938ZM3.46875 13.0938V14.5313H4.90625V13.0938H3.46875ZM6.34375 13.0938V14.5313H7.78125V13.0938H6.34375ZM9.21875 13.0938V14.5313H10.6563V13.0938H9.21875Z"
                                                            fill="#00234D" />
                                                    </svg>
                                                </span>
                                                <span class="ms-2">2023-07-19</span>
                                            </div>
                                            <p class="comments">기초편부터 꾸준히 구매하고 있습니다. 응용편 펀딩이 실패한건 너무 아쉽지만ㅠㅠ 앞으로도 좋은 책 내주세요! 기다릴게요.</p>
                                        </div>
                                        <hr>
                                        <div class="comments-meta" style="padding:5px;">
                                            <h4 class="commentator-name">홍길순</h4>
                                            <div class="comments-date article-date d-flex align-items-center">
                                                <span class="icon-publish">
                                                    <svg width="17" height="18" viewBox="0 0 17 18" fill="none"
                                                        xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                            d="M3.46875 0.875V1.59375H0.59375V17.4063H16.4063V1.59375H13.5313V0.875H12.0938V1.59375H4.90625V0.875H3.46875ZM2.03125 3.03125H3.46875V3.75H4.90625V3.03125H12.0938V3.75H13.5313V3.03125H14.9688V4.46875H2.03125V3.03125ZM2.03125 5.90625H14.9688V15.9688H2.03125V5.90625ZM6.34375 7.34375V8.78125H7.78125V7.34375H6.34375ZM9.21875 7.34375V8.78125H10.6563V7.34375H9.21875ZM12.0938 7.34375V8.78125H13.5313V7.34375H12.0938ZM3.46875 10.2188V11.6563H4.90625V10.2188H3.46875ZM6.34375 10.2188V11.6563H7.78125V10.2188H6.34375ZM9.21875 10.2188V11.6563H10.6563V10.2188H9.21875ZM12.0938 10.2188V11.6563H13.5313V10.2188H12.0938ZM3.46875 13.0938V14.5313H4.90625V13.0938H3.46875ZM6.34375 13.0938V14.5313H7.78125V13.0938H6.34375ZM9.21875 13.0938V14.5313H10.6563V13.0938H9.21875Z"
                                                            fill="#00234D" />
                                                    </svg>
                                                </span>
                                                <span class="ms-2">2023-07-18</span>
                                            </div>
                                            <p class="comments">사실 정가 주고 사긴 아깝고, 얼리버드 할인 받아서 사는게 좋습니다. 그래도 계속 오픈알림 설정해놓고 기다리는 작가님입니다.</p>
                                        </div>
                                    </div>
                                </div>    
                                <div class="next-prev-article mt-5 d-flex align-items-center justify-content-between">
                                    <a href="article.html" class="article-btn prev-article-btn mt-2">이전페이지</a>
                                    <a href="article.html" class="article-btn next-article-btn active mt-2">다음페이지</a>
                                </div>
                            </div>
                        </div>
                        <!-- 오픈쪽 작가 프로필-->
                        <div class="col-lg-3 col-md-12 col-12">
                            <div class="filter-drawer blog-sidebar">
                                <div class="filter-widget widget-blogger text-center">
                                    <div class="blogger-img mb-3">
                                        <img class="rounded" src="assets/img/project/logo.png" alt="img">
                                    </div>
                                    <h4 class="blogger-name heading_18 mb-1" style="font-weight:bold;">사진공원</h4>
                                    <p class="blogger-designation mb-1">비문학 작가</p>
                                    <div class="product-rating d-flex align-items-center mb-3 justify-content-center">
                                        <span class="star-rating">
                                            <svg width="16" height="15" viewBox="0 0 16 15" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M15.168 5.77344L10.082 5.23633L8 0.566406L5.91797 5.23633L0.832031 5.77344L4.63086 9.19727L3.57031 14.1992L8 11.6445L12.4297 14.1992L11.3691 9.19727L15.168 5.77344Z" fill="#FFAE00"></path>
                                            </svg>
                                            <svg width="16" height="15" viewBox="0 0 16 15" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M15.168 5.77344L10.082 5.23633L8 0.566406L5.91797 5.23633L0.832031 5.77344L4.63086 9.19727L3.57031 14.1992L8 11.6445L12.4297 14.1992L11.3691 9.19727L15.168 5.77344Z" fill="#FFAE00"></path>
                                            </svg>
                                            <svg width="16" height="15" viewBox="0 0 16 15" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M15.168 5.77344L10.082 5.23633L8 0.566406L5.91797 5.23633L0.832031 5.77344L4.63086 9.19727L3.57031 14.1992L8 11.6445L12.4297 14.1992L11.3691 9.19727L15.168 5.77344Z" fill="#FFAE00"></path>
                                            </svg>
                                            <svg width="16" height="15" viewBox="0 0 16 15" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M15.168 5.77344L10.082 5.23633L8 0.566406L5.91797 5.23633L0.832031 5.77344L4.63086 9.19727L3.57031 14.1992L8 11.6445L12.4297 14.1992L11.3691 9.19727L15.168 5.77344Z" fill="#FFAE00"></path>
                                            </svg>
                                            <svg width="16" height="15" viewBox="0 0 16 15" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M15.168 5.77344L10.082 5.23633L8 0.566406L5.91797 5.23633L0.832031 5.77344L4.63086 9.19727L3.57031 14.1992L8 11.6445L12.4297 14.1992L11.3691 9.19727L15.168 5.77344Z" fill="#B2B2B2"></path>
                                            </svg>                                            
                                        </span>
                                    </div>
                                    <p class="blogger-desc mb-3">아날로그 필름의 감성을 담은 <br>촬영과 보정법을 공유합니다.</p>   
                                    <p style="text-align:left;padding-left:50px;">
                                    	<strong>email :</strong> example@gmail.com
                                    <br><strong>phone :</strong> 010-0000-0000
                                    </p>    
                                </div>
                            </div>
                        </div>
                     </div>
                     </div>  
                  </div>   
                </div>
            </div>            
        </main>
        <!-- footer -->
		<jsp:include page="./footer.jsp" flush="true"/>
        <!-- all js -->
        <script src="assets/js/vendor.js"></script>
        <script src="assets/js/main.js"></script>
    </div>
</body>

