<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<style>
select.select_m { margin-bottom:15px; }
span#check { margin-left:15%; }
#new{
	float:right;
}
</style>
<h3>CMS 내역조회</h3>

<span>신청기간 </span>
<input type="date">
~
<input type="date">
<span id="check">
확인</span>
<select class="select_m">
	<option>신규</option>
	<option>이체신청</option>
	<option>확정</option>
	<option>에러</option>
	<option>완료</option>
</select>

<button id="new" class="btn btn-small" >조회</button>
<div class="table-responsive">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>후원인번호</th>
						<th>후원인이름</th>
						<th>은행</th>
						<th>계좌번호</th>
						<th>예금주</th>
						<th>결제일</th>
						<th>약정금액</th>
						<th>신청일</th>
						<th>확인</th>
						<th>비고</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>2016-000001</td>
						<td>김하나</td>
						<td>국민</td>
						<td>123456789</td>
						<td>김하나</td>
						<td>25</td>
						<td>10,000</td>
						<td>2016.08.10</td>
						<td>신규</td>
						<td></td>
					</tr>		
				</tbody>
			</table>
		</div>

