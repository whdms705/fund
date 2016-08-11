<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/" var="R" />

<script src="${R}res/common.js" type="text/javascript"></script>


 
<div class="panel panel-default">
	<div class="panel-heading">
		<h4>회원기본정보</h4>

		<div class="row">
			<div class="col-lg-12">
				<div id="column-right">
					<a href="#" class="button button-reversed">저장</a> 
					<a href="#" class="button">삭제</a> 
				</div>
			</div>
		</div>
	</div>
	<!-- /.panel-heading -->

	<div class="panel-body">
		<div class="table-responsive">
			<table>
				<tbody>
					<tr>
						<td id="table_a">후원인번호</td>
						<td id="table_b"><input type="text" readonly
							value="201605-0001"></td>
						<td id="table_a">우편물 발송여부</td>
						<td id="table_b"><input type="radio" value="1" name="postal">
							발송동의 <input type="radio" value="2" name="postal"> 발송미동의</td>
					</tr>
					<tr>
						<td id="table_a">이름</td>
						<td id="table_b"><input type="text"></td>
						<td id="table_a">우편물 발송지</td>
						<td id="table_b"><input type="radio" value="1" name="address">
							자택 <input type="radio" value="2" name="address"> 직장</td>
					</tr>
					<tr>
						<td id="table_a">주민번호</td>
						<td id="table_b"><input type="text"
							placeholder="-를 제외하고 입력해주세요."></td>
						<td id="table_a" rowspan="2">자택주소</td>
						<td id="table_b"><input type="text"><button
							class="searcha" onclick="sample4_execDaumPostcode()">주소검색</button></td>
					</tr>
					<tr>
						<td id="table_a">후원인구분1</td>
						<td id="table_b"><select>
								<option selected="selected">선택</option>
								<option value="0">개인</option>
								<option value="1">가족</option>
								<option value="2">단체</option>
								<option value="3">법인</option>
								
						</select></td>
						<td id="table_b"><input type="text" id="input_l"></td>

					</tr>
					<tr>
						<td id="table_a">후원인구분2</td>
						<td id="table_b">
						<input type="radio" value="1" name="">직원
						<input type="radio" value="2" name="">교수
						<input type="radio" value="3" name="">동문
						<input type="radio" value="4" name="">학부모
						<input type="radio" value="5" name="">성직자
						<input type="radio" value="6" name="">교인
						<input type="radio" value="7" name="">독지가
						<input type="radio" value="8" name="">교회
						<input type="radio" value="9" name="">단체
						<input type="radio" value="10" name="">기타
							
							</td>
						<td id="table_a">자택 전화번호</td>
						<td id="table_b"><input type="tel" placeholder="02-0000-0000"></td>

					</tr>
					<tr>
						<td id="table_a">소속교회</td>
						<td id="table_b"><input type="text" class="church"><a type="button"
							class="searcha" data-toggle="modal" data-target="#exampleModal">교회검색</a>
						</td>
						<td id="table_a">핸드폰 번호</td>
						<td id="table_b"><input type="tel"
							placeholder="010-0000-0000"></td>

					</tr>
					<tr>
						<td id="table_a">가입일</td>
						<td id="table_b"><input type="date"></td>
						<td id="table_a">이메일</td>
						<td id="table_b"><input type="email"
							placeholder="abcd@skhu.kr"></td>

					</tr>
					<tr>
						<td id="table_a">추천인</td>
						<td id="table_b"><input type="text"
							placeholder="추천인 이름을 적어주세요."></td>
						<td rowspan="2" id="table_a">비고</td>
						<td rowspan="2" id="table_b"><textarea cols="30" rows="3"></textarea></td>


					</tr>

					<tr>
						<td id="table_a">추천인관계</td>
						<td><select>
								<option selected="selected">선택</option>
								<option value="0">가족</option>
								<option value="1">지인</option>
						</select></td>

					</tr>
				</tbody>
			</table>
		</div>
		<!-- /.table-responsive -->
	</div>
	<!-- /.panel-body -->
	
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
               alert(fullRoadAddr);
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample4_roadAddress').value = fullRoadAddr;
                document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

                } else {
                    document.getElementById('guide').innerHTML = '';
                }
            }
        }).open();
    }
</script>

</div>
<!-- /.panel -->

<!-- 회원기본정보 -->

<div class="row">
	<div class="col-lg-6">

		<div class="panel panel-default">
			<div class="panel-heading">
				<h4>근무처정보</h4>
			</div>
			<!-- /.panel-heading -->

			<div class="panel-body">
				<div class="table-responsive">
					<table class="table">
						<tbody>
							<tr>
								<td id="table_a">직장</td>
								<td id="table_b"><input type="text"></td>

							</tr>
							<tr>
								<td id="table_a">부서</td>
								<td id="table_b"><input type="text"></td>

							</tr>
							<tr>
								<td id="table_a">직위</td>
								<td id="table_b"><input type="text"></td>
							</tr>

							<tr>
								<td id="table_a">직장전화번호</td>
								<td id="table_b"><input type="text"></td>
							</tr>

							<tr>
								<td id="table_a">직장주소</td>
								<td id="table_b"><input type="text"> <button class="searcha" data-toggle="modal"
									data-target="#searchaddress" onclick="sample4_execDaumPostcode()">주소검색</button> <input type="text"
									id="input_l">
							</tr>

						</tbody>
					</table>
				</div>
				<!-- /.table-responsive -->
			</div>
			<!-- /.panel-body -->
		</div>
		<!-- /.panel -->

	</div>
	<!-- 근무지정보 -->

	<div class="col-lg-6">

		<div class="panel panel-default">
			<div class="panel-heading">
				<h4>첨부파일목록</h4>
				<div>
					<div id="column-right">
						<div class="filebox bs3-primary">
							<input class="upload-name" value="파일선택" disabled="disabled">
							<label for="ex_filename">파일업로드</label> <input type="file"
								id="ex_filename" class="upload-hidden">
						</div>
					</div>
				</div>
				<!-- /.panel-heading -->


				<div class="panel-body">
					<div class="table-responsive"></div>


					<table class="table">
						<tbody>
							<tr>
								<td><a><i class="fa fa-download fa-lg"></i>
										201605-0001_첨부파일1.docx</a></td>
							</tr>
							<tr>
								<td><a><i class="fa fa-download fa-lg"></i>
										201605-0001_첨부파일2.pdf</a></td>
							</tr>
							<tr>
								<td><a><i class="fa fa-download fa-lg"></i>
										201605-0001_첨부파일3.png</a></td>
							</tr>
							<tr>
								<td><a><i class="fa fa-download fa-lg"></i>
										201605-0001_첨부파일4.xlsx</a></td>
							</tr>
							<tr>
								<td><a><i class="fa fa-download fa-lg"></i>
										201605-0001_첨부파일5.png</a></td>
							</tr>


						</tbody>
					</table>
				</div>
				<!-- /.table-responsive -->
			</div>
			<!-- /.panel-body -->
		</div>
		<!-- /.panel -->

	</div>




</div>

<!--  modal  -->
<div class="bd-example">
 
 
  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <h4 class="modal-title" id="exampleModalLabel">New message</h4>
        </div>
        <div class="modal-body">
          <form>
            <div class="form-group">
              <label for="recipient-name" class="form-control-label">Recipient:</label>
              <input type="text" class="form-control" id="recipient-name">
            </div>
            <div class="form-group">
            
            </div>
          </form>
        </div>
        <div class="modal-footer">
          
          <button type="button" class="btn btn-primary">확인</button>
        </div>
      </div>
    </div>
  </div>
</div>


