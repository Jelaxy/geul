<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<fmt:requestEncoding value="utf-8"/>
<c:set var="path" 
	value="${pageContext.request.contextPath}"/>
 
<!doctype html>
<html lang="en" class="no-js">

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
        <script src="${path}/a00_com/jquery-ui.js"></script>
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
	
	<script type="text/javascript">
    	// window.onload와 동일한 메서드
    	$(document).ready( function(){
    	    $("#suFrm").submit(function () {
    	    	if(confirm("등록화면 이동합니다.")){
    				//location.href="${path}/jobInsert.do"
    			}
    		})
    	});
    </script>      
</head>

<body>
    <div class="body-wrapper">
		<!--<jsp:include page="./header.jsp" flush="true"/>-->
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
                    <li>Signup</li>
                </ul>
            </div>
        </div>
        <!-- breadcrumb end -->

        <main id="MainContent" class="content-for-layout">
            <div class="login-page mt-100">
                <div class="container">
                    <form action="/geul2/login.do" id="suFrm" method="post" class="login-form common-form mx-auto">
                        <div class="section-header mb-3">
                            <h2 class="section-heading text-center">Signup</h2>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <fieldset>
                                    <label class="id">*아이디</label>
                                    <input type="text" id="u_id" name="u_id"
                                    		placeholder="아이디 입력" required/>
                                    <span style="font-size:12px"> 
                                	※ 아이디는 영문, 숫자를 포함하여 6~12자 내로 설정하십시오.</span><br>
		                            <span id="id_able"></span>
                                	<div class="col-4 mt-3">
		                                <button type="button" id="id_check" onclick="checkMember()"
		                                 class="btn-primary d-block mt-3 btn-signin">중복 확인</button>
		                            </div>
                                </fieldset>
                            </div>
                            <div class="col-12">
                                <fieldset>
                                    <label class="label">*비밀번호</label>
                                    <input type="password" id="pass" name="pass" onkeyup="submit_able()"
                                    		placeholder="비밀번호 입력" required/>
                                    <span id="pass_able"></span><br>
                                    <input type="password" id="pass_check" name="passcheck" 
                                    		placeholder="비밀번호 확인" onkeyup="submit_able()" required/>
                                    <span id="pass_error"></span><br>
                                    <span style="font-size:12px"> 
                                    ※ 비밀번호는 영문, 숫자, 특수문자를 포함하여 8~16자 내로 설정하십시오.</span><br>
                                </fieldset>
                            </div>
                            <div class="col-12">
                                <fieldset>
                                    <label class="label">*이름</label>
                                    <input type="text" id="name" name="name" placeholder="이름 입력" required/>
                                </fieldset>
                            </div>
                            <div class="col-12">
                                <fieldset>
                                    <label class="label">*닉네임</label>
                                    <input type="text" id="nickname" name="nickname" placeholder="닉네임 입력" required/>
                                </fieldset>
                            </div>
                            <div class="col-12">
                                <fieldset>
                                    <label class="label">*휴대폰 번호</label>
                                    <input type="text" id="phn_num" name="phn_num" placeholder="전화번호 입력" required/>
                                </fieldset>
                            </div>
                            <div class="col-12">
                                <fieldset>
                                    <label class="label">*이메일</label>
                                    <input type="text" id="email" name="email" placeholder="이메일 입력" required/>
                                </fieldset>
                            </div>
                            <div class="col-12 mt-3">
                                <button type="submit" id="submit_button" class="btn-primary d-block mt-3 btn-signin"
                                onclick="emailCheck()">회원가입</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>            
        </main>
       <!--<jsp:include page="./footer.jsp" flush="true"/>-->
        
        <!-- all js -->
    <script type="text/javascript">
	var condition_id; // 아이디중복확인 성공시 true 반환
	var condition_pass; // 비밀번호 유효성검사 통과시 true 반환
	var condition_pass_check; // 비밀번호와 비밀번호 확인에 입력한 값이 일치할때 true 반환
	
	/* 인증번호 입력 */
	var checkNumTrue = false;
	function checkNum() {
	    event.preventDefault(); // 기본 동작 취소
	    let ranNum = Math.floor(Math.random() * 900000 + 100000)
	    let putRanNum = prompt("인증번호를 입력하세요: " + ranNum)
	    var msg = ""
	    if (putRanNum == ranNum) {
	        alert('인증되었습니다')
	        var messageElement = document.getElementById('certiNumValid');
	        messageElement.innerText = "인증 완료";
	        checkNumTrue = true;
	        checkSubmitButton();
	        ckNum.disabled = true;
	    } else {
	        alert('인증에 실패했습니다')
	    }
	}	
	
    /* 회원 ID 유효성 검사 */
    var id = document.getElementById("u_id");
    var id_able = document.getElementById("id_able");
    var id_check = document.getElementById("id_check");
    id.onkeyup = function () {
        var ptrn = /^(?=.*[a-zA-Z])(?=.*[0-9])[a-zA-Z0-9]{6,12}$/;
        var str = this.value;
        if (ptrn.test(str)) {
            id_able.innerText = "사용 가능한 ID 형식입니다.";
            id_able.style.color = "blue";
            id_check.disabled = false;
        } else {
            id_able.innerText = "아이디 형식이 맞지 않습니다.";
            id_able.style.color = "red";
            id_check.disabled = true;
            
        }
    };
	/* 아이디 중복확인--수정요 */
	function checkMember(){
		var idOb = document.querySelector("#u_id");
		alert(idOb.value+"은 사용 가능한 아이디입니다.");
		var id_condition=true;
	}
	

	function checkMember(){
		var idOb = document.querySelector("#u_id");
		alert(idOb.value+"은 사용 가능한 아이디입니다.");
		var id_condition=true;
	}

    /* 비밀번호 유효성 검사 */
    var pass = document.querySelector("[name=pass]");
    var pass_able = document.getElementById("pass_able");
    pass.onkeyup = function () {
        var ptrn = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*()])[a-zA-Z0-9!@#$%^&*()]{8,16}$/;
        var str = this.value;
        if (ptrn.test(str)) {
            pass_able.innerText = "사용가능한 비밀번호입니다.";
            pass_able.style.color = "blue";
            condition_pass = true;
        } else {
            pass_able.innerText = "비밀번호 형식이 맞지 않습니다.";
            pass_able.style.color = "red";
            condition_pass = false;
        }
        checkSubmitButton()
    };
	
	/* 비밀번호 확인 */
    var pass = document.querySelector("#pass");
    var pass_check = document.querySelector("#pass_check");
    var pass_error = document.querySelector("#pass_error");
    pass_check.onkeyup = function() {
        if (pass_check.value === pass.value) {
        	pass_error.innerHTML="비밀번호가 일치합니다.";
        	pass_error.style.color = "blue";
        	condition_pass_check = true;
        } else {
        	pass_error.innerHTML = "비밀번호가 일치하지 않습니다.";
        	pass_error.style.color = "red";
        	condition_pass_check = false;
        }
        checkSubmitButton()
    };
    
   
    /* 전화번호 자동 하이픈 */
	const phnum = document.getElementById('phn_num');

	phnum.addEventListener('keyup', (e) => {
        let inputValue = e.target.value;
        phnum.value = inputValue.replace(/(\d{3})(\d{4})(\d)/, "$1-$2-$3");
    });
    
    /* 이메일 유효성검사 */
    function emailCheck(){
    	var emailV= document.querySelector("[name=email]").value
    	var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
    	if(exptext.test(emailV)==false){
		//이메일 형식이 알파벳+숫자@알파벳+숫자.알파벳+숫자 형식이 아닐경우			
		alert("이메일형식이 올바르지 않습니다.");
		document.querySelector("[name=email]").emailV.focus();

		return false;
		}
    	alert("회원가입이 완료되었습니다. 로그인하십시오.")
	}

   

	</script>
        
        <script src="${pageContext.request.contextPath}/assets/js/vendor.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
    </div>
</body>

</html>