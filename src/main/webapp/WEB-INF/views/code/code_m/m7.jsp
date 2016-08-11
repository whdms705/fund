
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<script>
	$(function() {
		$("#check_all7").click(function() {
			var chk = $(this).is(":checked");//.attr('checked');
			if (chk)
				$(".select_subject input").prop('checked', true);
			else
				$(".select_subject input").prop('checked', false);
		});
	});
</script>
<div class="code">
	<div id="column-right">
		<a type="button" class="button button-reversed" data-toggle="modal"
			data-target="#add7">추가</a> <a href="#" class="button">수정</a> <a
			href="#" class="button">삭제</a>
	</div>

	<table class="table table-bordered">
		<thead>
			<tr>
				<th><input type="checkbox" id='check_all7' class='input_check' /></th>
				<th>No</th>
				<th>코드명</th>
				<th>은행코드번호</th>
			</tr>
		</thead>
		<tbody class="select_subject">
			<tr>
				<td class="input_check"><input type="checkbox" name='class[1]'
					class='input_check' /></td>
				<td>1</td>
				<td>산업</td>
				<td>002</td>
			</tr>
			<tr>
				<td class="input_check"><input type="checkbox" name='class[2]'
					class='input_check' /></td>
				<td>2</td>
				<td>기업</td>
				<td>003</td>
			</tr>
			<tr>
				<td class="input_check"><input type="checkbox" name='class[3]'
					class='input_check' /></td>
				<td>3</td>
				<td>국민</td>
				<td>004</td>
			</tr>
			<tr>
				<td class="input_check"><input type="checkbox" name='class[4]'
					class='input_check' /></td>
				<td>4</td>
				<td>외환</td>
				<td>005</td>
			</tr>
			<tr>
				<td class="input_check"><input type="checkbox" name='class[5]'
					class='input_check' /></td>
				<td>5</td>
				<td>수협</td>
				<td>006</td>
			</tr>
			<tr>
				<td class="input_check"><input type="checkbox" name='class[6]'
					class='input_check' /></td>
				<td>6</td>
				<td>농협</td>
				<td>007</td>
			</tr>
			<tr>
				<td class="input_check"><input type="checkbox" name='class[7]'
					class='input_check' /></td>
				<td>7</td>
				<td>우리</td>
				<td>008</td>
			</tr>
			<tr>
				<td class="input_check"><input type="checkbox" name='class[8]'
					class='input_check' /></td>
				<td>8</td>
				<td>신한</td>
				<td>009</td>
			</tr>
		</tbody>
	</table>
</div>
<!-- Modal -->
<div id="add7" class="modal fade" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h3 class="modal-title">은행 코드 추가</h3>
			</div>
			<div class="modal-body">

				<div class="input-group">
					<table>
						<tr>
							<td class="table_z"><span class="code_c">은행 코드</span> <input
								type="text" id="code_a"></td>
							<td class="table_z"><span class="code_c">코드 번호</span> <input
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