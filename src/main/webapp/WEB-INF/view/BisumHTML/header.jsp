<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<fmt:requestEncoding value="utf-8"/>
<c:set var="path" 
	value="${pageContext.request.contextPath}"/>
 
<!DOCTYPE html>
<html>
<head>
    <!-- meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="meta description">
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
		<!-- announcement bar start -->
        <div class="announcement-bar bg-1 py-1 py-lg-2">
            <div class="container">
                <div class="row align-items-center justify-content-between">
                    <div class="col-lg-3 d-lg-block d-none">
                        <div class="announcement-call-wrapper">
                            <div class="announcement-call">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-12">
                        <div class="announcement-text-wrapper d-flex align-items-center justify-content-center">
                            <p class="announcement-text text-white">책과 함께하는 크라우딩 여정</p>
                        </div>
                    </div>
                    <div class="col-lg-3 d-lg-block d-none">
                        <div class="announcement-meta-wrapper d-flex align-items-center justify-content-end">
                            <div class="announcement-meta d-flex align-items-center">
                                <a class="announcement-login announcement-text text-white" href="login.jsp">
                                    <svg class="icon icon-user" width="10" height="11" viewBox="0 0 10 11" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M5 0C3.07227 0 1.5 1.57227 1.5 3.5C1.5 4.70508 2.11523 5.77539 3.04688 6.40625C1.26367 7.17188 0 8.94141 0 11H1C1 8.78516 2.78516 7 5 7C7.21484 7 9 8.78516 9 11H10C10 8.94141 8.73633 7.17188 6.95312 6.40625C7.88477 5.77539 8.5 4.70508 8.5 3.5C8.5 1.57227 6.92773 0 5 0ZM5 1C6.38672 1 7.5 2.11328 7.5 3.5C7.5 4.88672 6.38672 6 5 6C3.61328 6 2.5 4.88672 2.5 3.5C2.5 2.11328 3.61328 1 5 1Z"
                                            fill="#fff" />
                                    </svg>
                                    <span>Login</span>
                                </a>
                                <span class="separator-login d-flex px-3">
                                    <svg width="2" height="9" viewBox="0 0 2 9" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path opacity="0.4" d="M1 0.5V8.5" stroke="#FEFEFE" stroke-linecap="round" />
                                    </svg>
                                </span>
                                <a class="announcement-login announcement-text text-white" href="signup.jsp">
                                    <span>Signup</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- announcement bar end -->
	       <header class="sticky-header border-btm-black header-1">
            <div class="header-bottom">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-3 col-md-4 col-4">
                            <div class="header-logo">
                                <a href="index-shoe.html" class="logo-main">
                                    <img src="assets/img/grd_logo.png" style="width:180px;" loading="lazy" alt="bisum">
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-6 d-lg-block d-none">
                            <nav class="site-navigation">
                                <ul class="main-menu list-unstyled justify-content-center">
                                    <li class="menu-list-item nav-item">
                                        <a class="nav-link" href="${path}/openfunding.do">오픈 예정 프로젝트</a>
                                    </li>
                                    <li class="menu-list-item nav-item">
                                    </li>
                                    <li class="menu-list-item nav-item">
                                        <a class="nav-link" href="${path}/funding.do">펀딩 프로젝트</a>
                                    </li>
                                    <li class="menu-list-item nav-item">
                                    </li>
                                    <li class="menu-list-item nav-item">
                                        <a class="nav-link" href="contact.html">about 작가</a>
                                    </li>
                                    <li class="menu-list-item nav-item">
                                    </li>
                                    <li class="menu-list-item nav-item">
                                        <a class="nav-link" href="contact.html">Q&A</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                        <div class="col-lg-3 col-md-8 col-8">
                            <div class="header-action d-flex align-items-center justify-content-end">
                                <a class="header-action-item header-search" href="javascript:void(0)">
                                    <svg class="icon icon-search" width="20" height="20" viewBox="0 0 20 20" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M7.75 0.250183C11.8838 0.250183 15.25 3.61639 15.25 7.75018C15.25 9.54608 14.6201 11.1926 13.5625 12.4846L19.5391 18.4611L18.4609 19.5392L12.4844 13.5627C11.1924 14.6203 9.5459 15.2502 7.75 15.2502C3.61621 15.2502 0.25 11.884 0.25 7.75018C0.25 3.61639 3.61621 0.250183 7.75 0.250183ZM7.75 1.75018C4.42773 1.75018 1.75 4.42792 1.75 7.75018C1.75 11.0724 4.42773 13.7502 7.75 13.7502C11.0723 13.7502 13.75 11.0724 13.75 7.75018C13.75 4.42792 11.0723 1.75018 7.75 1.75018Z"
                                            fill="black" />
                                    </svg>
                                </a>
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="search-wrapper">
                    <div class="container">
                        <form action="#" class="search-form d-flex align-items-center">
                            <button type="submit" class="search-submit bg-transparent pl-0 text-start">
                                <svg class="icon icon-search" width="20" height="20" viewBox="0 0 20 20" fill="none"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <path
                                        d="M7.75 0.250183C11.8838 0.250183 15.25 3.61639 15.25 7.75018C15.25 9.54608 14.6201 11.1926 13.5625 12.4846L19.5391 18.4611L18.4609 19.5392L12.4844 13.5627C11.1924 14.6203 9.5459 15.2502 7.75 15.2502C3.61621 15.2502 0.25 11.884 0.25 7.75018C0.25 3.61639 3.61621 0.250183 7.75 0.250183ZM7.75 1.75018C4.42773 1.75018 1.75 4.42792 1.75 7.75018C1.75 11.0724 4.42773 13.7502 7.75 13.7502C11.0723 13.7502 13.75 11.0724 13.75 7.75018C13.75 4.42792 11.0723 1.75018 7.75 1.75018Z"
                                        fill="black" />
                                </svg>
                            </button>
                            <div class="search-input mr-4">
                                <input type="text" placeholder="Search your products..." autocomplete="off">
                            </div>
                            <div class="search-close">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                    fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                    stroke-linejoin="round" class="icon icon-close">
                                    <line x1="18" y1="6" x2="6" y2="18"></line>
                                    <line x1="6" y1="6" x2="18" y2="18"></line>
                                </svg>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </header>
        <!-- header end -->
</body>
</html>