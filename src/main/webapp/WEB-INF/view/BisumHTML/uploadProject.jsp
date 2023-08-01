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
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
        
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
                <!-- 프로젝트 생성 시작-->
                <div class="collection mt-100">
                        <div class="container">
	                        <div class="section-header mb-4">
	                            <h2 class="section-heading">프로젝트 생성</h2>
	                            <p class="section-subheading">나만의 프로젝트를 만들어보세요.</p>
	                        </div>
                            <div class="project-creation-form">
                                <form method="" enctype="multipart/form-data" class="contact-form">
                                    <div class="row">
                                    	<input type="hidden" id="u_id" name="u_id" value="${u_id}"/>
                                     <!-- 프로젝트 제목 -->
                                        <div class="col-8">
                                            <label style="margin-top:10px;font-weight:bold;font-size:20px;" for="title">프로젝트 제목</label>
                                            <input style="margin-top:10px;" type="text" maxlength="30" class="form-control" 
                                            	name="title" id="title" placeholder="제목을 입력하세요 (10~30자 이내)" value="" required/>
                                        	<p id="title_reg" style="float:right;color:gray;">0자/30자</p>
                                        </div>
                                   	<!-- 프로젝트 상세설명 -->
                                        <div class= "col-8">
                                            <label style="margin-top:10px;font-weight:bold;font-size:20px;" for="description">프로젝트 상세 설명</label>
                                            <input style="margin-top:10px;" type="text" maxlength="50" class="form-control"
                                            	 id="description" name="description" placeholder="프로젝트 설명을 입력하세요 (10~50자 이내)" required/>
                                        	<p id="description_reg" style="float:right;color:gray;">0자/50자</p>
                                        </div>
                                    <!-- 썸네일 이미지 업로드 -->
                                        <div class="col-8">
                                            <label style="margin-top:5px;font-weight:bold;font-size:20px;" for="imgFile">썸네일 이미지</label>
                                            <input style="margin-top:10px;padding-top:10px;" type="file" class="form-control" 
                                            	id="imgFile" name="imgFile" multiple="multiple" required/>
                                        </div>
                                    <!-- 도서 부수 (목표 수량) -->
                                        <div class="col-8">
                                            <label style="margin-top:40px;font-weight:bold;font-size:20px;" for="goal_amt">목표 도서 부수</label>
                                            <input style="margin-top:10px;" type="number" value="0" class="form-control" 
                                            	id="goal_amt" name="goal_amt"  placeholder="목표 도서 부수를 입력해주세요 (50~500부 이내)" required/>
                                        	<p id="goal_amt_reg" style="float:right;color:gray;margin-top:3px;">* 최소 목표부수는 50부 입니다.</p>
                                        </div>
                                    <!-- 도서 금액-->
                                    <div class="col-8">
                                        <label style="margin-top:1px;font-weight:bold;font-size:20px;" for="price">도서 금액</label>
                                        <input style="margin-top:10px;" type="number" class="form-control" 
                                        	id="price" name="price" value="0" placeholder="도서 금액을 입력하세요." required/>
                                    	<p id="price_reg" style="float:right;color:gray;margin-top:3px;">* 최소금액은 1만원입니다.</p>
                                    </div>
                                    <!-- 프로젝트 카테고리 선택 -->
                                        <div class="col-8">
                                            <label style="margin-top:1px;font-weight:bold;font-size:20px;" for="g_id">카테고리</label>
                                            <select style="margin-top:10px;" class="form-control" id="g_id" name="g_id" required>
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
                                    <!-- 프로젝트 상세 이미지 업로드 -->
                                        <div class="col-8">
                                            <label style="margin-top:40px;font-weight:bold;font-size:20px;" for="info_imgFile">프로젝트 상세이미지</label>
                                            <input style="margin-top:10px;padding-top:10px;" type="file" class="form-control" 
                                            	id="info_imgFile" name="info_imgFile" multiple="multiple" required multiple/>
                                        </div>
                                        <div class="form-group row">
                                            <!-- 프로젝트 시작일 -->
                                            <div class="col-md-4">
                                                <label style="margin-top:40px;font-weight:bold;font-size:20px;" for="startdate">프로젝트 시작일</label>
                                                <input style="margin-top:10px;" onchange="checkValid()" type="date" class="form-control" 
                                                	id="startdate" name="startdateS" required/>
                                            </div>
                                            <!-- 프로젝트 종료일 -->
                                            <div class="col-md-4">
                                                <label style="margin-top:40px;font-weight:bold;font-size:20px;" for="enddate"> 프로젝트 종료일 </label>
                                                <input style="margin-top:10px;" onchange="checkValid()" type="date" class="form-control" 
                                                	id="enddate" name="enddateS" required/>
                                            </div>
                                        </div>
	                                    <!-- 프로젝트 생성 버튼 -->
	                                    <div class="col-8">
                                    		<button type="submit" onclick="create_btn()" 
                                    			style="margin-top:50px;font-size:20px;height:50px;" class="btn btn-primary">프로젝트 생성하기</button>
                                		</div>
                                	</div>
                                </form>                               
                            </div>
                        </div>
                </div>
                <!-- 유효성검사-->  
	            <script type="text/javascript">
		            $(document).ready(function() {
		            	
		            });
		            // 프로젝트 제목 글자수 체크
		            $("input[name=title]").keyup(function () {
		            	//alert('테스트')
		    			var titleLen = $(this).val().length;	
		    			if(titleLen<10){
		    				$('#title_reg').text('* 10자 이상  입력해주세요')
		    				$('#title_reg').css("color","red");
		    				//$("#[create_btn]").attr("disabled", true);
		    			}else{
		    				$('#title_reg').text('* '+titleLen+'자/30자')	
		    				$('#title_reg').css("color","gray");
		    				//$("#[create_btn]").attr("disabled", false);
		    			}		    			 
		          	 });
		        	// 프로젝트 설명 글자수 체크
		            $("input[name=description]").keyup(function () {
		    			var descriptionLen = $(this).val().length;	
		    			if(descriptionLen<10){
		    				$('#description_reg').text('* 10자 이상 입력해주세요')
		    				$('#description_reg').css("color","red");
		    			}else{
		    				$('#description_reg').text('* '+descriptionLen+'자/50자')	
		    				$('#description_reg').css("color","gray");
		    			}		    			 
		          	 });
		            // 프로젝트 목표수량 체크
		             $("input[name=goal_amt]").keyup(function () {
		            	 //alert('테스트')
		    			var goal_amt = $(this).val();	
		    			if(goal_amt<50){
		    				$('#goal_amt_reg').text('* 최소 목표부수는 50부 입니다.')
		    				$('#goal_amt_reg').css("color","red");
		    			}else if(goal_amt>500){
		    				$('#goal_amt_reg').text('* 최대 목표부수는 500부 입니다.')
		    				$('#goal_amt_reg').css("color","red");
		            	 }else{
		            		$('#goal_amt_reg').text('* 설정 가능한 목표부수입니다.')
		            		$('#goal_amt_reg').css("color","gray");
		            	 }	    			 
		          	 });
		         	 // 도서 금액 체크
		             $("input[name=price]").keyup(function () {
		    			var price = $(this).val();	
		    			if(price<10000){
		    				$('#price_reg').text('* 최소금액은 1만원입니다.')
		    				$('#price_reg').css("color","red");
		    			}else{
		            		$('#price_reg').text('* 설정 가능한 금액입니다.')
		            		$('#price_reg').css("color","gray");
		            	 }	    			 
		          	 });
		            // 현재 날짜 포멧 설정(날짜 유효성 체크를 위한)
		            function getFormatDate(date){
					    var year = date.getFullYear();              //yyyy
					    var month = (1 + date.getMonth());          //M
					    month = month >= 10 ? month : '0' + month;  //month 두자리로 저장
					    var day = date.getDate();                   //d
					    day = day >= 10 ? day : '0' + day;          //day 두자리로 저장
					    return  year + '-' + month + '-' + day;       //'-' 추가하여 yyyy-mm-dd 형태 생성 가능
					}
		            var date = new Date(); //현재시간
	            	var minDate = getFormatDate(date); 
		         	// 프로젝트 날짜 유효성 체크	
		            function checkValid() {            	
						var startdate = $('#startdate').val()
						var enddate = $('#enddate').val()		
						if(minDate>startdate){
							//alert(minDate)
							alert("오늘 이후의 날짜를 선택해주세요");
							$('#startdate').val(minDate);
						}else if(startdate==""||enddate=="") {
							alert("시작일과 종료일을 모두 선택해주세요.");
						}else if(startdate > enddate) {
							alert("프로젝트종료일은 시작일보다 이후여야 합니다.");
							$('#enddate').val(startdate);
						}
					
					}
						
		            
		             // 프로젝트 생성 버튼 클릭
					function create_btn(){
						alert('프로젝트 생성 완료')
					}
						
				
				        // 생성된 프로젝트 상세 페이지로 이동
				       // window.location.href = "상세 페이지 URL" + pj_id; // 실제로 생성된 프로젝트의 상세 페이지 URL로 변경해야 합니다.
				    
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
