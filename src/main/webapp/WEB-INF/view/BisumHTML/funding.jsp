<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
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
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/img/favicon.png" type="image/x-icon">
    <!-- fonts -->
    <link rel="preconnect" href="/https://fonts.googleapis.com">
    <link rel="preconnect" href="/https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <!-- all css -->
    <style>
	    #pj_box img {
		  transition: all 0.2s linear;
		  margin: 0px auto;
		  overflow: hidden;
		}
	    #pj_box:hover img{
			transform: scale(1.1);
		}
		#pj_box:hover h4{
			color:#2196F3;
		}
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

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/vendor.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
</head>

<body>
        <div class="body-wrapper">
    	<jsp:include page="./header.jsp" flush="true"/>
        <!-- product tab start -->
        
        <!-- announcement bar end -->

        <!-- header end -->

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
                    <li>펀딩 프로젝트</li>
                </ul>
            </div>
        </div>
        <!-- breadcrumb end -->

        <main id="MainContent" class="content-for-layout">
            <div class="collection mt-100">
                <div class="container">
                    <div class="row">
                        <!-- product area start -->
                        <div class="col-lg-12 col-md-12 col-12">
                            <div class="filter-sort-wrapper d-flex justify-content-between flex-wrap">
                                <div class="collection-title-wrap d-flex align-items-end">
                                    <h2 class="collection-title heading_24 mb-0">펀딩 프로젝트</h2>
                                    <!-- <p class="collection-counter text_16 mb-0 ms-2">(237 items)</p> -->
                                </div>
                               
                            </div>
                            <div class="collection-product-container">
                                <div class="row">
                                  		<!-- 프로젝트 반복문  -->
                                  		<c:forEach var = "plist" items="${projectList}">
	                                    <div class="col-lg-4 col-md-6 col-6" data-aos="fade-up" data-aos-duration="700" 
	                                    		id="pj_box" onclick="location.href='${pageContext.request.contextPath}/funding-detail.do?pj_id=${plist.project.pj_id}';">
	                                        <div class="product-card">
	                                            <div class="product-card-img">
                                                    <img class="primary-img" src="${pageContext.request.contextPath}/assets/img/project/thumbnail/${plist.project.img}" alt="product-img">     
	                                                <div class="product-badge">
													    <span class="badge-label badge-percentage rounded" id="dday">${plist.project.dday}일 남음</span>
													</div>						                                               	 
	                                            </div>
												<div class="product-card-details">
												    <div class="product-card-title-container">
												    <br>
												        <div class="bar-container">
															<div id="Content_bar" class="bar" style="padding-left:10px;width:${plist.project.achv_percent}%">${plist.project.achv_percent}%</div>
														</div>
														<p style="color: #2196F3;text-align:right;">${plist.project.now_amt}/${plist.project.goal_amt}(판매부수/목표부수)</p>
											            <h4>${plist.project.title}</h4>
											            <div style="text-align:right;">
											            	<p style="padding-right:20px;">${plist.grd_user.nickname}</p>
											            </div>
												    </div>						  	    
												</div>
	                                        </div>
	                                    </div> 
	                                    </c:forEach>
	                                   <!--  -->  
                                </div>    
                            </div>      
                            <!--  -->      
                            <div class="pagination justify-content-center mt-100">
                                <nav>
                                    <ul class="pagination m-0 d-flex align-items-center">
                                        <li class="item disabled">
                                            <a class="link">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="100" height="100"
                                                    viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                    stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                                    class="icon icon-left">
                                                    <polyline points="15 18 9 12 15 6"></polyline>
                                                </svg>
                                            </a>
                                        </li>
                                        <li class="item"><a class="link" href="#">1</a></li>
                                        <li class="item active"><a class="link" href="#">2</a></li>
                                        <li class="item"><a class="link" href="#">3</a></li>
                                        <li class="item"><a class="link" href="#">4</a></li>
                                        <li class="item">
                                            <a class="link" href="#">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="100" height="100"
                                                    viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                    stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                                    class="icon icon-right">
                                                    <polyline points="9 18 15 12 9 6"></polyline>
                                                </svg>
                                            </a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <!-- product area end -->
                    </div>
                </div>
            </div>
        </main>

        <!-- footer -->
       <jsp:include page="./footer.jsp" flush="true"/>       
        <!-- all js -->
        <script src="${pageContext.request.contextPath}/assets/js/vendor.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
    </div>
</body>

</html>