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
   	 	<!--percent bar 추가-->
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
        <!-- product tab start -->
        <main id="MainContent" class="content-for-layout">
            <div class="product-page mt-100">
                <div class="container">
                    <div class="row">
                    <c:forEach var = "pDetail" items="${projectDetail}">	
                        <div class="col-lg-6 col-md-12 col-12">
                            <div class="product-gallery product-gallery-vertical d-flex">
                                <div class="product-img-large">
                                    <div class="img-large-slider common-slider" data-slick='{
                                        "slidesToShow": 1, 
                                        "slidesToScroll": 1,
                                        "dots": false,
                                        "arrows": false,
                                        "asNavFor": ".img-thumb-slider"
                                    }'>
                                        <div class="img-large-wrapper">
                                            <a href="assets/img/project/thumbnail/id_01.jpg" data-fancybox="gallery">
                                                <img src="${pageContext.request.contextPath}/assets/img/project/thumbnail/${pDetail.project.img}" alt="img">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-img-thumb">
                                    <div class="img-thumb-slider common-slider" data-vertical-slider="true" data-slick='{
                                        "slidesToShow": 5, 
                                        "slidesToScroll": 1,
                                        "dots": false,
                                        "arrows": true,
                                        "infinite": false,
                                        "speed": 300,
                                        "cssEase": "ease",
                                        "focusOnSelect": true,
                                        "swipeToSlide": true,
                                        "asNavFor": ".img-large-slider"
                                    }'>
                                        <div>
                                            <div class="img-thumb-wrapper">
                                                <img src="${pageContext.request.contextPath}/assets/img/project/thumbnail/${pDetail.project.img}" alt="img">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="activate-arrows show-arrows-always arrows-white d-none d-lg-flex justify-content-between mt-3"></div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-lg-6 col-md-12 col-12">
                            <div class="product-details ps-lg-4">
                                <div class="mb-3"><span class="product-availability">${pDetail.project.g_name}</span></div>
                                <h2 class="product-title mb-3">${pDetail.project.title}</h2>
                               	<hr>
                                <div class="product-price-wrapper mb-4">
                                    <p>${pDetail.project.description}</p>
                                </div>
                                <div class="product-price-wrapper mb-4">
                                    <span class="product-price regular-price" style="color:#40AFFF;">${pDetail.project.dday}일 남음</span>
                                </div>
                                <div class="bar-container">
									<div id="Content_bar" class="bar" style="padding-left:10px;width:${pDetail.project.achv_percent}%">${pDetail.project.achv_percent}%</div>
								</div>
								<p style="color: #2196F3;text-align:right;">${pDetail.project.now_amt}/${pDetail.project.goal_amt}(판매부수/목표부수)</p>
	                            <br>
								<!--form-->
                                <form class="product-form" id="goFunding" action="#">
                                	<div class="filter-widget">
	                                 <div class="filter-header faq-heading heading_18 d-flex align-items-center justify-content-between border-bottom"
	                                     data-bs-toggle="collapse" data-bs-target="#filter-collection">
	                                     구매옵션
	                                     <span class="faq-heading-icon">
	                                         <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
	                                             viewBox="0 0 24 24" fill="none" stroke="#000" stroke-width="2"
	                                             stroke-linecap="round" stroke-linejoin="round" class="icon icon-down">
	                                             <polyline points="6 9 12 15 18 9"></polyline>
	                                         </svg>
	                                     </span>
	                                 </div>
		                             <div id="filter-collection" class="accordion-collapse collapse show">
	                                        <ul class="filter-lists list-unstyled mb-0">
	                                            <li class="filter-item">
	                                                <label class="filter-label">
	                                                    <input type="radio" name="buy_option" value="eb_price" id="eb_price" style="display: none;"/>
	                                                    <span class="filter-checkbox rounded me-2"></span>
	                                                    <span class="filter-text" id="eb_text">얼리버드 잔여수량</span>
	                                                </label>
	                                            </li>
	                                            <li class="filter-item">
	                                                <label class="filter-label">
	                                                    <input type="radio" name="buy_option" value="nm_price" id="nm_price"style="display: none;"/>
	                                                    <span class="filter-checkbox rounded me-2"></span>
	                                                    <span class="filter-text">기본 금액</span>
	                                                </label>
	                                            </li>
	                                        </ul>
	                                    </div>
	                             
	                                    <div class="product-price-wrapper mb-4">
		                                    <span class="product-price regular-price" style="color:#40AFFF;padding-right:0;">
		                                    	<input type="hidden" name="price" value=""/>
		                                    	<h3 style="color:#F76B6A; text-align:right;" id="price"></h3>
		                                    </span>
		                                </div>
	                            	 </div>
                                    <div class="buy-it-now-btn mt-2">
                                        <button type="submit" class="position-relative btn-atc btn-buyit-now">펀딩하기</button>
                                    </div>
                                </form>       
                                <br>
                                <div style="border:solid 1px gray; padding:5px;">
	                                <div style="width:15%;display:inline-block;">
                                        <img class="rounded" src="assets/img/project/logo.png" alt="img">
                                    </div>
                                    <div style="display:inline-block;width:80%;margin-left:5px;">
	                                    <strong>${pDetail.grd_user.nickname}</strong><p style="display:inline-block;padding-left:10px;">프로젝트 작가</p>
	                                    <button type="button" style="float: right;" onClick="location.href=''">
	                                        <span>작가 프로필 보기</span>
	                                    </button>
                                    </div>
                                </div> 
                            </div>
                        </div>
						<script type="text/javascript">
		//////////////// href로 넘긴 pj_id를 el태그로 받는 방법/// 이후 펀딩으로 넘길 때!!!!!!! 추가하기
                		var pj_id = "${param.pj_id}"
						
							// 기본 금액 세팅
							window.onload = function(){
								eb_disabled()
								set_price()
					   		}
							$("input[name='buy_option']").change(function(){
								set_price()
							});
							// 얼리버드 할인 체크시 15% 할인 금액으로 표기
							function set_price(){
								var price = ""
								var price_Kr = ""
								var p_checked = $("input[name=buy_option]:checked")
								var p_checked_val = p_checked.val();
								if(p_checked_val=='eb_price'){
									price = ${pDetail.project.price}*0.85
								}else if(p_checked_val=='nm_price'){
									price = ${pDetail.project.price}
								}
								price_Kr = price.toLocaleString('ko-KR');
								document.getElementById('price').innerHTML = price_Kr+'원'
								//alert(price_Kr)
								$("input[name=price]").val(price_Kr);
							}
							// 목표부수의 30% 얼리버드 구매가 가능한 경우
							function eb_disabled(){
								// 부등호를 바꿔서 테스트 가능!
								// 얼리버드가 닫혀있을 때가 if, 열려있을 때가 else
								if(${pDetail.project.goal_amt}*0.3<${pDetail.project.now_amt}){
									// 얼리버드 버튼 비활성화
									$('#eb_price').attr('disabled', 'true');
									// 얼리버드 텍스트 취소선 
									$('#eb_text').css('text-decoration','line-through');
									//기본 체크를 일반으로
									$("#nm_price").prop("checked",true);
									$("#eb_price").prop("checked",false);
								}else{
									//기본 체크를 얼리버드로
									$("#nm_price").prop("checked",false);
									$("#eb_price").prop("checked",true);
								}
							}
							// 남은 얼리버드 수량
							var eb_tot = ${pDetail.project.goal_amt}*0.3
							var now_amt = ${pDetail.project.now_amt}
							var extra = Math.floor(eb_tot - now_amt) 
							var eb_text = document.getElementById('eb_text')
							if(extra>0){
								eb_text.innerText = '얼리버드 15%off('+extra+'명 남음)';
							}else{
								eb_text.innerText = '얼리버드 15%off(0명 남음)';
							}
						</script> 
                    </c:forEach>
                    </div>
                </div>
            </div>


            <!-- product tab start -->
            <div class="product-tab-section mt-100" data-aos="fade-up" data-aos-duration="700">
                <div class="container">
                    <div class="tab-list product-tab-list">
                        <nav class="nav product-tab-nav">
                            <a class="product-tab-link tab-link active" href="#detail" data-bs-toggle="tab">상세정보</a>
                            <a class="product-tab-link tab-link" href="#news" data-bs-toggle="tab">새소식</a>
                            <a class="product-tab-link tab-link" href="#community" data-bs-toggle="tab">커뮤니티</a>
                        </nav>
                    </div> 
                    <div class="tab-content product-tab-content">
                    	<!-- 상세정보 -->
                        <div id="detail" class="tab-pane fade show active">
                            <div class="row">
                            	<c:forEach var = "pDetail" items="${projectDetail}">
                                <div class="col-lg-12 col-md-12 col-12">
                                   	<div class="article-card bg-transparent p-0 shadow-none">
	                                	<img src="${pageContext.request.contextPath}/assets/img/project/detail/${pDetail.project.img}" alt="img" class="article-card-img rounded">    
                                	</div>
                                </div>
                               	</c:forEach>
                            </div>
                        </div>
                        <!-- 새소식 -->
                        <div id="news" class="tab-pane fade">
                            <div class="desc-content">
								<!--공지-->
								<div class="article-card bg-transparent p-0 shadow-none" data-bs-toggle="collapse" data-bs-target="#project-notice01">
                                    <h2 class="article-card-heading heading_18">
                                         [필독] 펀딩 구매 전 꼭 읽어주세요!
                                    </h2>
                                     <p class="article-card-published text_12 d-flex align-items-center">
                                        <span class="article-author d-flex align-items-center ms-4">
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
                                        <span class="article-date d-flex align-items-center">
                                            <span class="ms-2">2023-07-10</span>
                                        </span>
                                    </p>
                                </div>
                                <!--공지 상세-->
                               	<br>
                                <div id="project-notice01" style="background-color:#ECECEC;padding:30px;">
	                               	<p> 구매 후 환불은 가능하지만 하지말아주세요. 저 책 팔아서 먹여살려야하는 강아지 두마리가 있어요.
	                             	 	<br>구매해주셔서 감사합니다.
	                             		<br>어쩌구저쩌구</p>    
                            	</div>
                            	<hr>
								<!--공지-->
								<div class="article-card bg-transparent p-0 shadow-none" data-bs-toggle="collapse" data-bs-target="#project-notice02">
                                    <h2 class="article-card-heading heading_18">
                                         [사은품공지] 목표부수 50% 달성 기념!
                                    </h2>
                                     <p class="article-card-published text_12 d-flex align-items-center">
                                        <span class="article-author d-flex align-items-center ms-4">
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
                                        <span class="article-date d-flex align-items-center">
                                            <span class="ms-2">2023-07-17</span>
                                        </span>
                                    </p>
                                </div>
                                <!--공지 상세-->
                               	<br>
                                <div id="project-notice02" style="background-color:#ECECEC;padding:30px;">
	                               	<p> 목표부수까지 얼마 남지 않았습니다.
	                             	 	<br>사은품 준비했어요..!
	                             		<br>구매해주세요</p>    
                            	</div>

                            </div>         
                        </div>   
                        
                        <!-- 커뮤니티 --> 
                        
                        <div id="community" class="tab-pane fade">
                     		<div class="comment-form-area">
                               <div class="form-header">
                                   <h4 class="form-title">글 작성하기</h4>
                                   <p class="form-subtitle">펀딩과 관련된 의견을 남겨주세요.</p>
                               </div>
                               <form id="addCcontent" class="comment-form">
<!---------------------------- 임시) 로그인 성공시 아이디를 넣어주세요. -->
                                   <input type="hidden" name="pj_id" value="${param.pj_id}"/>
                                   <input type="hidden" name="u_id" value="dpsk00"/>
                                   <div class="field-item textarea-field">
                                       <span class="field-icon">
                                           <svg width="20" height="19" viewBox="0 0 20 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                                               <path d="M0.25 0.75V14.25H4V18.0586L8.76367 14.25H19.75V0.75H0.25ZM1.75 2.25H18.25V12.75H8.23633L5.5 14.9385V12.75H1.75V2.25ZM5.5 6C4.6709 6 4 6.6709 4 7.5C4 8.3291 4.6709 9 5.5 9C6.3291 9 7 8.3291 7 7.5C7 6.6709 6.3291 6 5.5 6ZM10 6C9.1709 6 8.5 6.6709 8.5 7.5C8.5 8.3291 9.1709 9 10 9C10.8291 9 11.5 8.3291 11.5 7.5C11.5 6.6709 10.8291 6 10 6ZM14.5 6C13.6709 6 13 6.6709 13 7.5C13 8.3291 13.6709 9 14.5 9C15.3291 9 16 8.3291 16 7.5C16 6.6709 15.3291 6 14.5 6Z" fill="#00234D"/>
                                           </svg>                                                        
                                       </span>
                                       <textarea name="c_content" form="addCcontent" cols="20" rows="6" placeholder="내용을 입력해주세요."></textarea>
                                   </div>
                                   <button type="button" id="cmtRegBtn" class="position-relative review-submit-btn mt-4">작성완료</button>
                               </form>
                           	</div>
                           <br>
                           <div class="comments-main">                          
                               <div class="comments-main-content">
                                <c:forEach var = "cList" items="${communiryList}">
                                   <div class="comments-meta">
                                   <br>
                                       <h4 class="commentator-name">${cList.nickname}</h4>
                                       <div class="comments-date article-date d-flex align-items-center">    
                                           <span class="ms-2" style="display:inline;" id="cdate">
                                           		<fmt:formatDate value="${cList.c_date}" pattern="yyyy-mm-dd HH:ss" />
                                           </span>
                                       </div>
                                       <p class="comments">${cList.c_content}</p>
                                   </div>
                                   <hr>    
                                 </c:forEach>
                        		</div>
                    		</div>
                		</div>
                		<script type="text/javascript">
	                        $("#cmtRegBtn").click(function(){
	                        	if(confirm("게시글을 등록하시겠습니까?")){		
	                				$.ajax({
	                					url:"${path}/insertcommunity.do",
	                					type:"post",
	                					data:$("#addCcontent").serialize(),
	                					dataType:"text",
	                					success:function(data){
	                						alert('등록되었습니다.')
	                						location.reload();
	                					},
	                					error:function(err){
	                						console.log(err)
	                					}
	                				})
	                			}
	                    	});
                        </script>
                </div>
            </div>
           </div>
            <!-- product tab end -->
       </main>
       <!-- footer -->
       <jsp:include page="./footer.jsp" flush="true"/>
        <!-- all js -->
        <script src="assets/js/vendor.js"></script>
        <script src="assets/js/main.js"></script>
    </div>
</body>

</html>
