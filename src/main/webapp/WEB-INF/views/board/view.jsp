<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="pageNav" tagdir="/WEB-INF/tags"%>

<%@ include file="../include/header.jspf"%>

<style>
.row-Comm {margin: 0px auto;}
.pagination {margin: 0px;}
.table-Comm {margin: 20px auto;	text-align: center;	border: 1px solid #ddd;}
.view-Comm {border: 1px solid #ddd;}
.view-Comm th {width: 80px;	max-width: 120px; text-align: center; font-family: 'Pretendard'; color:#262626;}
.view-Comm td {font-family: 'Pretendard'; color: #262626; text-align: left; box-sizing:border-box;}

.view-Comm .viewDate-Comm {width:230px; text-align:right; padding-right:20px;}
.view-Comm .viewTitle-Comm td {font-family:'Pretendard'; font-weight:600;}
.table-Comm .viewCon-Comm th {vertical-align:inherit;}
.view-Comm .viewCon-Comm td {text-align: left;}
.board-con-normal {background: #fff; font-size: 15px; font-family: 'Pretendard'; border: none; padding: 0.3em 0;}
.media {overflow:hidden; zoom:1;}


</style>


<!-- Start main slider -->
<div id="carousel-example-generic"
	class="carousel slide edufair-slide carousel-fade margin-bottom-large"
	data-ride="carousel">
	<!-- Wrapper for slides -->
	<div class="carousel-inner edufair-inner single-inner" role="listbox">
		<div class="edufair-overlay">
			<img
				src="<%=request.getContextPath()%>/resources/pages/images/sample_bg03.jpg"
				alt="slide 1" class="edufair-slider-image edufair-single-image">
			<div class="carousel-caption edufair-caption edufair-single-caption">
				<div class="edufair-slider-middle">
					<div class="container edufair-slider-text">
						<h2 class="fadeInLeft">Community</h2>
						<ol class="breadcrumb edufair-single-breadcrumbs">
							<li><a href="#">Home</a></li>
							<li><a href="#">Board</a></li>
							<li class="active">Community</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End main slider -->

<!-- ???????????? -->
<div class="online-course-category-1x margin-bottom-large">
	<div class="container">
		<div class="row row-Comm">
			<table class="table table-Comm">
				<tr class="view-Comm">
					<th>?????????</th>
					<td>${list.userId}</td>
					<td class="viewDate-Comm">????????? | <fmt:formatDate value="${list.cRegdate}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
				</tr>
				<tr class="view-Comm viewTitle-Comm">
					<th>??????</th>
					<td colspan="3">${list.cBoardTitle}</td>
				</tr>
				<tr class="view-Comm viewCon-Comm">
					<th>??????</th>
					<td colspan="3"><pre class="board-con-normal">${list.cBoardCon}</pre>
					<img alt="" src="/service/displayFile?fileName=${list.cFileName}"></td>
				</tr>
			</table>
			
			<div class="col-md-6">
				<c:set var="pageNo"	value="${empty param.pageNo ? '1' : param.pageNo}" />
					<button type="button" class="edufair-component-button button-medium" 
					style="border: none;" onclick="window.location.href='list?pageNo=${pageNo}'">????????????</button>
				<c:if test="${authUser.id == NoticeData.Notice.writer.userId}">
					<button type="button" class="edufair-component-button button-medium" 
					style="border: none;" onclick="window.location.href='modify?cBoardId=${list.cBoardId}'">????????????</button>
					<button type="button" class="edufair-component-button button-medium" 
					style="border: none;" onclick="window.location.href='remove?cBoardId=${list.cBoardId}'">????????????</button>
				</c:if>
			</div>
			<div class="col-md-6">
			<button type="button"
				class="edufair-component-button edufair-btn-larg pull-right"
				style="border: none;" onclick="window.location.href='write'">?????????</button>
			</div>
		</div>
		<div class="edufair-blog-comments-1x justify-content-center">
			<div class="col-md-12 blog-comments">
				<div class="edufair-comment-body">
					<div class="edufair-contact-form">
						<div class="row">
							<form name="replytest" method="get">
								<div class="col-md-6">
									<div class="form-group">
										<input type="text" class="form-control"
                                            id="userId" placeholder="?????????" value="${userId}" name="userid">
									</div>
								</div>
								<div class="col-md-12">
                                    <div class="form-group">
                                        <textarea class="form-control" rows="3"
                                            placeholder="????????? ???????????????" id="creplycon" name="creplycon"></textarea>
                                    </div>
                                    <button type="button" class="edufair-component-button button-large pull-right replywrite" 
                                    style="border:solid 1px #f1f1f1;" value="?????? ??????" >
                                    ?????? ??????
                                    </button>
                                </div>
							</form>
						</div>
					</div>

					<ul class="replylist">
					<li class="media">
						<p class="media-body">
							<h4 class="media-heading">
								${reply.userId}<span><i class="fa fa-calendar-check-o"></i>&nbsp;${reply.cReplyRegdate}</span>
							</h4>
							<span>${reply.cReplyCon}</span>
						</p>
					</li>	
					</ul>
				</div>
				<!-- Blog Comment Ends -->
			</div>
		</div>
	</div>
</div>

<script>

var cBoardId = [[${list.getcBoardId()}]]; // ?????????

//?????? ?????????
	var getAllList = function(){
	$.getJSON("/reply/all/" + parseInt(cBoardId),
	function(data) {
		var str = "";
		
		$.each(data, function(key, value) {
				str += "<li class='media' data-rno="+value.replyNo+">";
				str += "<p class='media-body'>";
				str += "<h4 class='media-heading'>";
				str += value.userId;
				str += "</h4><span><i class='fa fa-calendar-check-o'></i>&nbsp;";
				str += new Date(value.cReplyRegdate).toLocaleDateString();
				str += "</span>";
				str += "<p>"+value.cReplyCon+"</p>";
				str += "</p>";
				str += "<button type='button' class='edufair-component-button button-medium' style='border: none;'>????????????</button></li>";
				});
		$(".replylist").html(str);
	});
}

$(document).ready(function() {
	// ?????? ?????????
	getAllList();
	$(".replywrite").click(function() {
		var cBoardId = [[${list.getcBoardId()}]]; // ?????????
		var cReplyCon = $("#creplycon").val();
		var userId = $("#userId").val();
		
		$.ajax({
			type:'post',
			url: "/reply/replyWrite",
			headers: { 
			      "Content-Type": "application/json",
			      "X-HTTP-Method-Override": "POST" },
			data:JSON.stringify({
				cBoardId: parseInt(cBoardId), 
				cReplyCon : cReplyCon, 
				userId: userId}),
			dataType:'text', 
			success : function(data){
          		 if(data == "SUCCESS"){ // ??????
          	     $("#creplycon").val("");
          		 getAllList();
          		 alert("??????");
           	} else { // ??????
           	    alert("?????? ???????????????. ?????? ???????????????");
          		 }},
     			  error : function(status, error){ 
       		alert("?????? ???????????????. ?????? ?????? ?????? ???????????????");
			}
		});
	});
});

</script>



<!-- ???????????? ??? -->


<%@ include file="../include/footer.jspf"%>