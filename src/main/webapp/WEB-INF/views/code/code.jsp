<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<body>
	<div>
		<div id="page-wrapper">
			<div class="container-fluid">
				<h2 class="page-header">기초정보관리</h2>

			</div>
			<div class="panel panel-default">
				<div class="panel-body">
					<!-- Nav tabs -->
					<ul class="nav nav-tabs">
						<li class="active"><a href="#m2" data-toggle="tab">후원인구분1</a></li>
						<li><a href="#m3" data-toggle="tab">후원인구분2</a></li>
						<li><a href="#m4" data-toggle="tab">기관종류</a></li>
						<li><a href="#m5" data-toggle="tab">정기납입방법</a></li>
						<li><a href="#m6" data-toggle="tab">비정기납입방법</a></li>
						<li><a href="#m7" data-toggle="tab">은행</a></li>
						<li><a href="#m8" data-toggle="tab">소속교회</a></li>
					</ul>
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- Tab panes -->
			<div class="tab-content">
				<div class="tab-pane fade in active" id="m2">
					<%@ include file="/WEB-INF/views/code/code_m/m2.jsp"%>
				</div>
				<div class="tab-pane fade" id="m3">
					<%@ include file="/WEB-INF/views/code/code_m/m3.jsp"%>
				</div>
				<div class="tab-pane fade" id="m4">
					<%@ include file="/WEB-INF/views/code/code_m/m4.jsp"%>
				</div>
				<div class="tab-pane fade" id="m5">
					<%@ include file="/WEB-INF/views/code/code_m/m5.jsp"%>
				</div>
				<div class="tab-pane fade" id="m6">
					<%@ include file="/WEB-INF/views/code/code_m/m6.jsp"%>
				</div>
				<div class="tab-pane fade" id="m7">
					<%@ include file="/WEB-INF/views/code/code_m/m7.jsp"%>
				</div>
			<div class="tab-pane fade" id="m8">
				<%@ include file="/WEB-INF/views/code/code_m/m8.jsp"%>
			</div>
		</div>
	</div>
	<!-- /.panel-body -->
</div>

</body>