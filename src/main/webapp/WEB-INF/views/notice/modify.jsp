<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<title>공지 수정</title>

</head>
<body>

	<!-- Start main slider -->
	<div id="carousel-example-generic"
		class="carousel slide edufair-slide carousel-fade"
		data-ride="carousel">
		<!-- Wrapper for slides -->
		<div class="carousel-inner edufair-inner single-inner" role="listbox">
			<div class="edufair-overlay">
				<img
					src="<%=request.getContextPath()%>/resources/pages/images/mybackground.png"
					class="edufair-slider-image edufair-single-image">
				<div class="carousel-caption edufair-caption edufair-single-caption">
					<div class="edufair-slider-middle">
						<div class="container edufair-slider-text">
							<h2 class="fadeInLeft"></h2>
							<ol class="breadcrumb edufair-single-breadcrumbs">
								<li><a href="#">Home</a></li>
								<li><a href="#">공지사항</a></li>
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


		<form role="form" action="modify" method="post">
          <input type='hidden' name='noticeId' value="${noticeVO.noticeId}"> 
			<input type='hidden' name='page' value="${cri.page}"> <input
				type='hidden' name='perPageNum' value="${cri.perPageNum}"> <input
				type='hidden' name='searchType' value="${cri.searchType}"> <input
				type='hidden' name='keyword' value="${cri.keyword}">

			<div class="box-body">
				<tr>
					<td><select name="noticeCat" class="notice-cat">
							<option value="notice">공지사항</option>
							<option value="event">이벤트</option>
					</select></td>
				</tr>
			</div>

			<div class="box-body">
				<div class="form-group">
					<label for="exampleInputEmail1">Title</label> <input type="text"
						name='noticeTitle' class="form-control" value="${noticeVO.noticeTitle }">
				</div>

				<div class="form-group">
					<label for="exampleInputPassword1">Content</label>
					<textarea class="form-control" name="noticeCon" rows="3">${noticeVO.noticeCon}</textarea>
				</div>
			</div>

	<button type="submit"
				class="edufair-component-button button-large">저장</button>
			<button type="button"
				class="edufair-component-button button-large"
				onclick="window.location.href='list'">취소</button>
		

		</form>

	</div>
	<!-- /.box -->





	<%@ include file="../include/footer.jspf"%>