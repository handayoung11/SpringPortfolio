<%@page import="com.springbook.biz.common.SpringPath"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE="HTML">
<html>
<head>
<title>글 상세보기</title>
<script type="text/javascript" src="/biz/assets/ckeditor/ckeditor.js"></script>
<jsp:include page="${SpringPath.header }"></jsp:include>


<div class="container under_header">
	<!-- 		<div class="content" style="width: 70%"> -->

	<form class="form-signin" action="/biz/insertBoard.do" method="post">
		<div class="row justify-content-md-center">
			<div class="col-sm-12">
				<div class="input-group mb-3">
					<div class="input-group-prepend">
						<label class="input-group-text">제목</label>
					</div>
					<input type="text" class="form-control" name="btitle">
					<input type="hidden" class="form-control" name="bwriter" value="${user.idx }">
				</div>
			</div>
		</div>

		<hr>

		<div class="row justify-content-md-center">
			<div class="input-group">
				<textarea class="form-control col-sm-12" name="bcontent" id="bcontent"></textarea>
				<script type="text/javascript">
					CKEDITOR.replace('bcontent', {
						height : 500,
						width : '100%'
					});
				</script>
			</div>
		</div>

		<div>
			<div class="row justify-content-md-center">
				<button type="submit" class="btn btn-outline-secondary center"
					style="width: 40%; font-weight: bold">등록하기</button>
			</div>
		</div>
	</form>
</div>

<jsp:include page="${SpringPath.tail }"></jsp:include>