<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<script>
	$(function() {
		$("#check_all4").click(function() {
			var chk = $(this).is(":checked");//.attr('checked');
			if (chk)
				$(".select_subject input").prop('checked', true);
			else
				$(".select_subject input").prop('checked', false);
		});
	});
</script>
<body>

<div class="code">
	<div id="column-right">
		<a type="button" class="button button-reversed" data-toggle="modal"
			data-target="#add4">추가</a> <a href="#" class="button">수정</a> <a
			href="#" class="button">삭제</a>
	</div>

	<table class="table table-bordered">
		<thead>
			<tr>
				<th><input type="checkbox" id='check_all4' class='input_check' /></th>
				<th>기관</th>
				<th>기관종류</th>
				<th>기부목적1</th>
				<th>기부목적2</th>
				<th></th>
			</tr>
			<tr>
				<th><input type="checkbox" id='check_all4' class='input_check' /></th>
				<th>회사명</th>
				<th>step1</th>
				<th>step2</th>
				<th>step3</th>
				<th>구분</th>
			</tr>
		</thead>
		<tbody class="select_subject">
			<tr>
				<td class="input_check"><input type="checkbox" name='class[5]'class='input_ch'
					id='input_check4' /></td>
				<td>성공회대학교</td>
				<td>학교</td>
				<td>학교위임</td>
				<td>발전기금</td>
				<td>일반</td>
			</tr>
			
		</tbody>
	</table>
</div>
<!-- Modal -->
<div id="add4" class="modal fade" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h3 class="modal-title">기관종류 추가</h3>
			</div>
			<div class="modal-body">

				<div class="input-group">
					<table>
						<tr>
							<td class="table_z"><span class="code_c">기관</span> <input
								type="text" id="code_a"></td>
								<td class="table_z"><span class="code_c">기관종류</span> <input
								type="text" id="code_a"></td>
								<td class="table_z"><span class="code_c">기부목적1</span> <input
								type="text" id="code_a"></td>
								<td class="table_z"><span class="code_c">기부목적2</span> <input
								type="text" id="code_a"></td>
								<td class="table_z"><span class="code_c">구분</span> <input
								type="text" id="code_a"></td>
						</tr>
					</table>
				</div>
			</div>

			<div class="modal-footer">
				<a type="button" class="btn btn-defalt" data-dismiss="modal">추가</a>
			</div>

		</div>

	</div>
</div>
</body>