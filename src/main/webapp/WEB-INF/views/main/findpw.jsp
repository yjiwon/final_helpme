<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/header.jspf"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(function(){
	$("#findBtn").click(function(){
		$.ajax({
			url : "/main/findpw",
			type : "POST",
			data : {
				userId : $("#userId").val(),
				userEmail : $("#userEmail").val()
			},
			success : function(result) {
				alert(result);
			},
		})
	});
})
</script>


			<div id="carousel-example-generic" class="carousel slide edufair-slide carousel-fade" data-ride="carousel"> 
				<!-- Wrapper for slides -->		   
				<div class="carousel-inner edufair-inner single-inner" role="listbox">									
						<div class="edufair-overlay">
							<img src="<%=request.getContextPath()%>/resources/pages/images/mybackground.png" alt="slide 1" class="edufair-slider-image edufair-single-image">

							<div class="carousel-caption edufair-caption edufair-single-caption">
								<div class="edufair-slider-middle">
									<div class="container edufair-slider-text">
										<h2 class="fadeInLeft">비밀번호 찾기</h2>	
										<ol class="breadcrumb edufair-single-breadcrumbs">								 
										</ol>										
									</div>
								</div>
							</div>				  
						</div>
				</div>
			</div>
			
			 <div class="edufair-subscription-1x">
							
				<div class="edufair-subscription-form-1x">	

						<div class="col-md-12">
							<div class="form-group">
								<label for="userId" >아이디</label> 
								<input id="userId" class="form-control" type="text"
											name="userId"  placeholder="아이디를 입력해주세요."  required>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<label for="userEmail" >이메일</label> 
										<input  id="userEmail" class="form-control" type="email" 
										name="userEmail" title="Enter email" placeholder="회원가입시 입력한 이메일을 입력해주세요."  required>
									</div>
								</div>

								<button type="button" id="findBtn" 
								class="edufair-btn-larg btn-primary">찾기</button>
								<!--   onclick="mIdChk();" -->
		
			
			</div>
			</div>
			
			
<%@ include file="../include/footer.jspf" %>			