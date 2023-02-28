<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
<%@ include file="../include/header.jspf"%>
 <script src="//cdn.ckeditor.com/4.20.0/full/ckeditor.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ckeditor/ckeditor.js"></script>

<script>
$(function() {
	

	 CKEDITOR.replace( 'noticeCon', {//해당 이름으로 된 textarea에 에디터를 적용
         width:'100%',
         height:'400px',
         filebrowserUploadUrl:  "fileupload"
     });
});
</script>

<title>공지사항 쓰기</title>
<!-- Start main slider -->
<div id="carousel-example-generic"
	class="carousel slide edufair-slide carousel-fade" data-ride="carousel">
	<!-- Wrapper for slides -->
	<div class="carousel-inner edufair-inner single-inner" role="listbox">
		<div class="edufair-overlay">
			<img
				src="<%=request.getContextPath()%>/resources/pages/images/mybackground.png"
				class="edufair-slider-image edufair-single-image">
			<div class="carousel-caption edufair-caption edufair-single-caption">
				<div class="edufair-slider-middle">
					<div class="container edufair-slider-text">
						<h2 class="fadeInLeft">고객센터</h2>
						<ol class="breadcrumb edufair-single-breadcrumbs">
							<li><a href="#">Home</a></li>
							<li><a href="#">고객센터</a></li>
							<li><a href="#">공지사항 등록</a></li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End main slider -->
</div>

<div class="container">

	<h2 class="edufair-main-title">공지사항</h2>


	<form action= "register"  method="post"  enctype="multipart/form-data">

<!--  
   	<input type="hidden" name="noticeId" value="${list.noticeId}">
	<input type="hidden" name="noticeRegDate" value="${list.noticeRegDate}"> -->
			
		<div class="margin-bottom-small">
			<select name="noticeCat" class="notice-cat">
				<option value="notice">공지사항</option>
				<option value="event">이벤트</option>
			</select>
		</div>
		<div class="box-body">
			<div class="form-group">
				<label for="exampleInputEmail1" class="notice-regist-title">제목</label>
				<input type="text" name="noticeTitle" class="form-control" placeholder="제목을 입력하세요">
			</div>

			<div class="form-group">
				<label for="exampleInputPassword1" class="notice-regist-title">내용</label>
				<textarea class="form-control" id="noticeCon" name="noticeCon" rows="3"
					placeholder="내용을 입력하세요"></textarea>

      </div>
		</div>
		<div class="box-footer">
			<button type="submit" class="edufair-component-button button-large">등록</button>
		</div>
	</form>


</div>
<!-- /.box -->


<%@include file="../include/footer.jspf"%>