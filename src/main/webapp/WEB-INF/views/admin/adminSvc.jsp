<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<title>관리자 홈페이지</title>
<%@ include file="../admin/header.jspf"%>

<script src="http://code.jquery.com/jquery-1.6.4.min.js"></script>
	<script type="text/javascript">
		$(function(){
			var chkObj = document.getElementsByName("RowCheck");
			var rowCnt = chkObj.length;

			$("input[name='allCheck']").click(function(){
				var chk_listArr = $("input[name='RowCheck']");
				for (var i=0; i<chk_listArr.length; i++){
					chk_listArr[i].checked = this.checked;
				}
			});
			$("input[name='RowCheck']").click(function(){
				if($("input[name='RowCheck']:checked").length == rowCnt){
					$("input[name='allCheck']")[0].checked = true;
				}
				else{
					$("input[name='allCheck']")[0].checked = false;
				}
			});
		});
		function deleteValue(){
			var url = "deleteSvc";    // Controller로 보내고자 하는 URL
			var valueArr = new Array();
		    var list = $("input[name='RowCheck']");
		    for(var i = 0; i < list.length; i++){
		        if(list[i].checked){ //선택되어 있으면 배열에 값을 저장함
		            valueArr.push(list[i].value);
		        }
		    }
		    if (valueArr.length == 0){
		    	alert("선택된 글이 없습니다.");
		    }
		    else{
				var chk = confirm("정말 삭제하시겠습니까?");
				$.ajax({
				    url : url,                    // 전송 URL
				    type : 'POST',                // POST 방식
				    traditional : true,
				    data : {
				    	valueArr : valueArr        // 보내고자 하는 data 변수 설정
				    },
	                success: function(jdata){
	                    if(jdata = 1) {
	                        alert("삭제 성공");
	                        location.replace("adminSvc") //list 로 페이지 새로고침
	                    } else{
	                        alert("삭제 실패");

	                    }
	                }
				});
			}
		}
	</script>




<div class="content">

	<div class="col-md-11"  style="float: none; margin:0 auto;">
		<div class="animated fadeIn">
			<div class="row">

				<div class="col-md-8"  style="float: none; margin:0 auto;">
					<div class="card">
						<div class="card-header">
							<strong class="card-title">Service</strong>
						</div>

						<!--					<label>Show <select name="bootstrap-data-table_length"
											aria-controls="bootstrap-data-table"
											class="form-control form-control-sm">
												<option value="10">10</option>
												<option value="20">20</option>
												<option value="50">50</option>
												<option value="-1">All</option></select></label>
									</div>
								</div>
								
									<div id="bootstrap-data-table_filter" class="dataTables_filter">
										<label>Search:<input type="search"
											class="form-control form-control-sm" placeholder=""
											aria-controls="bootstrap-data-table"></label>
									</div>
								</div>
							</div>    -->

						<br>

						<div class="row">
							<div class="col-12">
								<table id="bootstrap-data-table"
									class="table table-striped table-bordered dataTable no-footer"
									role="grid" aria-describedby="bootstrap-data-table_info">


									<thead>

										<tr role="row">
											<th class="sorting_asc" tabindex="0"
												aria-controls="bootstrap-data-table" rowspan="1" colspan="1"
												aria-sort="ascending"
												aria-label="Name: activate to sort column descending"
												style="width: 10px;"><input id="allCheck" type="checkbox" name="allCheck"/></th>
											<th class="sorting" tabindex="0"
												aria-controls="bootstrap-data-table" rowspan="1" colspan="1"
												aria-label="Position: activate to sort column ascending"
												style="width: 10px;">No.</th>
											<th class="sorting" tabindex="0"
												aria-controls="bootstrap-data-table" rowspan="1" colspan="1"
												aria-label="Office: activate to sort column ascending"
												style="width: 240px;">Title</th>
											<th class="sorting" tabindex="0"
												aria-controls="bootstrap-data-table" rowspan="1" colspan="1"
												aria-label="Office: activate to sort column ascending"
												style="width: 100px;">User</th>
											<th class="sorting" tabindex="0"
												aria-controls="bootstrap-data-table" rowspan="1" colspan="1"
												aria-label="Salary: activate to sort column ascending"
												style="width: 100px;">Date</th>
										</tr>

									</thead>
									<tbody>
										<c:forEach items="${list}" var="list">
											<tr>
												<!-- 서비스 불러오기 -->
												<td><input name="RowCheck" type="checkbox" value="${list.SNo}"/></td>
												<td><a href= "${path}/service/detail?sNo=${list.SNo}">
												${list.SNo}</td>
												<td>${list.SName}</td>
												<td>${list.userId}</td>
												<td><fmt:formatDate pattern="yyyy-MM-dd"
                                                 value="${list.SRegdate}" /></td>

											</tr>
										</c:forEach>

									</tbody>
								</table>
								<input type="button" value="삭제" class="btn btn-secondary" onclick="deleteValue();">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- .animated -->


<%@ include file="../admin/footer.jspf"%>