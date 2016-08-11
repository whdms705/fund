<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<script>
	$(function() {
		$("#check_all3").click(function() {
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
			data-target="#add3">추가</a> <a href="#" class="button">수정</a> <a
			href="#" class="button">삭제</a>
	</div>

	<table class="table table-bordered">
		<thead>
			<tr>
				<th><input type="checkbox" id='check_all3' class='input_check' /></th>
				<th>No</th>
				<th>코드명</th>
			</tr>
		</thead>
		<tbody class="select_subject">
			<tr>
				<td class="input_check"><input type="checkbox" name='class[1]'class='input_ch'
					id='input_check3' /></td>
				<td>1</td>
				<td>직원</td>
			</tr>
			<tr>
				<td class="input_check"><input type="checkbox" name='class[2]'class='input_ch'
					id='input_check3' /></td>
				<td>2</td>
				<td>교수</td>
			</tr>
			<tr>
				<td class="input_check"><input type="checkbox" name='class[3]'class='input_ch'
					id='input_check3' /></td>
				<td>3</td>
				<td>동문</td>
			</tr>
			<tr>
				<td class="input_check"><input type="checkbox" name='class[4]'class='input_ch'
					id='input_check3' /></td>
				<td>4</td>
				<td>학부모</td>
			</tr>
			<tr>
				<td class="input_check"><input type="checkbox" name='class[5]'class='input_ch'
					id='input_check3' /></td>
				<td>5</td>
				<td>성직자</td>
			</tr>
			<tr>
				<td class="input_check"><input type="checkbox" name='class[6]'class='input_ch'
					id='input_check3' /></td>
				<td>6</td>
				<td>교인</td>
			</tr>
			<tr>
				<td class="input_check"><input type="checkbox" name='class[7]'class='input_ch'
					id='input_check3' /></td>
				<td>7</td>
				<td>독지가</td>
			</tr>
			<tr>
				<td class="input_check"><input type="checkbox" name='class[8]'class='input_ch'
					id='input_check3' /></td>
				<td>8</td>
				<td>교회</td>
			</tr>
			<tr>
				<td class="input_check"><input type="checkbox" name='class[9]'class='input_ch'
					id='input_check3' /></td>
				<td>9</td>
				<td>단체</td>
			</tr>
			<tr>
				<td class="input_check"><input type="checkbox" name='class[10]'class='input_ch'
					id='input_check3' /></td>
				<td>10</td>
				<td>기타</td>
			</tr>
			
		</tbody>
	</table>
</div>
<!-- Modal -->
<div id="add3" class="modal fade" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h3 class="modal-title">후원인구분2 추가</h3>
			</div>
			<div class="modal-body">

				<div class="input-group">
					<table>
						<tr>
							
							<td class="table_z"><span class="code_c">코드명</span> <input
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