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
                            <a class="product-tab-link tab-link" href="/geulrowding/BisumHTML/myproject_fundinglist/jsp">My Funding</a>
                            <a class="product-tab-link tab-link active" href="/geulrowding/BisumHTML/myproject_profile.jsp">My Project</a>
                        </nav>
                    </div>
                    <br>
                    <h1>My Project</h1>
                    <hr>
                    <div class="tab-list product-tab-list">
                        <nav class="nav product-tab-nav">
                            <a class="product-tab-link tab-link" href="${path}/geul/myproject_pjlist.do" >진행중인 프로젝트</a>
                            <a class="product-tab-link tab-link" href="${path}/geul/myproject_profile.do" >작가 프로필</a>
                            <a class="product-tab-link tab-link active" href="${path}/geul/myproject_notice.do" >새소식 작성</a>  
                        </nav>
                    </div>
                    <div class="bg-white rounded shadow-sm container p-3">
                        <form method="POST" action="updateAction" name="updateForm" onsubmit="return updateValidate();" class="form-horizontal" role="form">
                           <div class="row mb-3 form-row">
                                 <div class="col-md-3">
                                    <select class="form-control nproject" name="job">
									    <option value="" selected="selected">==내 프로젝트 선택==</option>
									    <option value="">1</option>
									    <option value="">2</option>
									    <option value="">3</option>
									</select>
                                </div>
                            </div>
                            <br>
                            <div class="row mb-3 form-row">
                            	<div class="col-md-3">
                            		<input class="form-control ntitle" type="text" placeholder="새소식 제목을 적어주세요."/>
                            	</div>
                            </div>
                            <br>
                            <div class="row mb-3 form-row">
                                <fieldset>
                                    <textarea class="form-control ncontent"  cols="120" rows="5" placeholder="새소식 내용을 적어주세요."></textarea>
                                </fieldset>
                            </div>
                            <hr class="mb-4">
                            <button type="submit" class="position-relative review-submit-btn contact-submit-btn">등록</button>
                            <!-- <button class="btn btn-success btn-lg btn-block" type="submit">수정</button> -->
                        </form>
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