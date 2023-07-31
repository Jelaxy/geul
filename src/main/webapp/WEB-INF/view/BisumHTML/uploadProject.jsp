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
     <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/img/favicon.png" type="image/x-icon">
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/vendor.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
</head>
<body>
     <div class="body-wrapper">
    	<jsp:include page="./header.jsp" flush="true"/>
	 	<!-- product tab start -->
        <main id="MainContent" class="content-for-layout">
            <div class="contact-page">
                <!-- 프로젝트 생성 시작-->
                <div class="contact-form-section mt-100">
                        <div class="container">
                            <div class="contact-form-area">
                                <div class="section-header mb-4">
                                    <h2 class="section-heading">프로젝트 생성</h2>
                                    <p class="section-subheading">나만의 프로젝트를 만들어보세요.</p>
                                </div>
                                    <div class="project-creation-form">
                                        <form action="process_project.php" method="POST" enctype="multipart/form-data"  class="contact-form">
                                            <div class="row">

                                             <!-- 프로젝트 제목 -->
                                            <fieldset>
                                                <div class="col-12">
                                                    <label for="title">제목</label>
                                                    <input type="text" class="form-control" id="title" name="title" placeholder="제목" required>
                                                </div>
                                            </fieldset>
                                            
                                            <!-- 썸네일 이미지 업로드 -->
                                            <fieldset>
                                                <div class="col-12">
                                                    <label for="thumbnail">썸네일 이미지</label>
                                                    <input type="file" class="form-control" id="thumbnail" name="thumbnail" required>
                                                </div>
                                            </fieldset>

                                            <!-- 도서 부수 (목표 수량) -->
                                            <fieldset>
                                                <div class="col-12">
                                                    <label for="goal_amt">목표 도서 부수</label>
                                                    <input type="number" class="form-control" id="goal_amt" name="goal_amt"  placeholder="목표 도서 부수를 입력해주세요" required>
                                                </div>
                                            </fieldset>
                                            
                                            <!-- 프로젝트 카테고리 선택 -->
                                            <fieldset>
                                                <div class="col-12">
                                                    <label for="category">카테고리</label>
                                                    <select class="form-control" id="category" name="category" required>
                                                        <option value="" selected>카테고리를 선택해주세요.</option>
                                                        <option value="g-100">문학소설</option>
                                                        <option value="g-101">인문/과학</option>
                                                        <option value="g-102">시/에세이</option>
                                                        <option value="g-103">참고서</option>
                                                        <option value="g-104">유아/아동</option>
                                                        <option value="g-105">만화</option>
                                                        <option value="g-106">실용도서</option>
                                                        <option value="g-107">기타</option>
                                                        <!-- 다른 카테고리 옵션들도 추가 -->
                                                    </select>
                                                </div>
                                            </fieldset>
                                            
                                            <!-- 프로젝트 상세 이미지 업로드 -->
                                            <fieldset>
                                                <div class="col-12">
                                                    <label for="info_img">프로젝트 상세 설명 이미지</label>
                                                    <input type="file" class="form-control" id="info_img" name="info_img" required
                                                        multiple>
                                                </div>
                                            </fieldset>
                                            
                                            <fieldset>
                                                <div class="form-group row">
                                                    <!-- 프로젝트 시작일 -->
                                                    <div class="col-md-6">
                                                        <label for="startdate">프로젝트 시작일</label>
                                                        <input type="date" class="form-control" id="startdate" name="startdate" required>
                                                    </div>
                                                    <!-- 프로젝트 종료일 -->
                                                    <div class="col-md-6">
                                                        <label for="enddate"> 프로젝트 종료일 </label>
                                                        <input type="date" class="form-control" id="enddate" name="enddate" required>
                                                    </div>
                                                </div>
                                            </fieldset>
                                            <!-- 기타 필요한 정보 입력 -->
                                            <!-- ... (기타 필요한 정보들을 추가하세요) ... -->
            
                                            <!-- 프로젝트 생성 버튼 -->
                                            <button type="submit" class="btn btn-primary">프로젝트 생성하기</button>
                                        </div>
                                        </form>
                                    </div>
                                </div>

                            </div>
                        </div>
                </div>
                <!-- 프로젝트 생성 종료-->

            </div>    
	            <script>
				    function createProject() {
				        // 사용자가 입력한 폼 내용 가져오기
				        var title = document.getElementById("title").value;
				        var price = document.getElementById("price").value;
				        var img = document.getElementById("img").value;
				        var startdate = document.getElementById("startdate").value;
				        var enddate = document.getElementById("enddate").value;
				        var goal_amt = document.getElementById("goal_amt").value;
				        var g_id = document.getElementById("g_id").value;
				        var info_img = document.getElementById("info_img").value;
				        
				        // 폼 내용을 서버로 전송하는 코드 (AJAX 또는 fetch API를 사용)
				
				        // 이후 서버로부터 프로젝트 아이디(pj_id)를 받아온다고 가정
				        var pj_id = 123; // 실제로 받아온 프로젝트 아이디를 사용해야 합니다.
				
				        // 프로젝트 생성 완료 알림 메시지 띄우기
				        alert("프로젝트 생성 완료!");
				
				        // 생성된 프로젝트 상세 페이지로 이동
				        window.location.href = "상세 페이지 URL" + pj_id; // 실제로 생성된 프로젝트의 상세 페이지 URL로 변경해야 합니다.
				    }
				</script>        
        </main>
       <!-- footer -->
       <jsp:include page="./footer.jsp" flush="true"/>
        <!-- all js -->
        <script src="${pageContext.request.contextPath}/assets/js/vendor.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
    </div>
</body>

</html>
