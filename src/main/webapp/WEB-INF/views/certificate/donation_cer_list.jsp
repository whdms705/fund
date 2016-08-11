<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<body>

	
			<h3>기부증서 발급대장</h3>
			<div class="input-group1">
				<select name="search" id="search" class="msize">
					<option selected="selected" value="검색조건">검색조건</option>
					<option value="0">이름</option>
					<option value="1">발행일</option>
				</select> <input type="text" id="search_a" name="search_a">
				<button type="submit" class="btn btn-small">검색</button>
			</div>

			<div class="table-responsive">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>일련번호</th>
							<th>이름</th>
							<th>발행일</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>2016-00001-01</td>
							<td>안지은</td>
							<td>2016.08.10</td>
						</tr>
					</tbody>
				</table>
			</div>


	<!-- Pagination -->
	<div class="row text-center">
		<div class="col-lg-12">
			<ul class="pagination">
				<li><a href="#">&laquo;</a></li>
				<li class="active"><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#">&raquo;</a></li>
			</ul>
		</div>
	</div>
	
	

</body>