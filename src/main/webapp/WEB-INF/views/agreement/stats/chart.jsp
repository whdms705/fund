<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
	<style>
	select.select_m { margin-bottom:15px; }
	.report_head{  display: block; width: 33%; height: auto; margin: 0 auto; }
	.report_table{  display: block; width: 28%; height: auto; margin: 0 auto;
	margin-bottom:5px; }
	
	</style>

<div class="panel panel-default">
	<div class="panel-heading">


		<div>
			<div>
				<span> 기간(시작-끝) </span> <input type="date"> ~ <input
					type="date"> <span> 기부기관 </span> <select class="select_m">
					<option selected="selected">전체</option>
					<option value="0">학교</option>
					<option value="1">법인</option>
				</select>
				<div id="column-right">
					<a href="#" class="button button-reversed">검색</a>
				</div>
			</div>
			<div>
				
			</div>
		</div>
	</div>
	<!-- /.panel-heading -->


	<div class="panel-body">
		<div>
			<div>
				<hr>
				<div id="column-right">
					<a href="#" class="button">출력</a> 
				</div>

				<div class="reporting">

					<div>
						<div>
						<div class="report_head">기간별 출연 내역 통계</div>
						</div>
					</div>

					<div>
				
						<div >
							<table class="report_table">
								<tr>
									<td><label>납입기간</label></td>
									<td>2016.01.01 ~ 2016.05.31</td>
									<td><label>기부기관</label></td>
									<td></td>
								</tr>
							</table>

							<table class="report_table">
								<tr>
									<th>총회원수</th>
									<th>총납입수</th>
									<th>총납입액</th>
								</tr>
								<tr>
									<td id="table_b">500</td>
									<td id="table_b">2,000</td>
									<td id="table_b">300,000,000</td>
								</tr>
							</table>
						</div>
					</div>

					<div class="table-responsive">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>후원인번호</th>
									<th>이름</th>
									<th>후원인구분1</th>
									<th>후원인구분2</th>
									<th>소속교회</th>
									<th>구분</th>
									<th>총납입건수</th>
									<th>총납입액</th>
								</tr>
							</thead>
							<tbody>



							</tbody>
						</table>

					</div>



				</div>



			</div>
		</div>
	</div>
</div>
