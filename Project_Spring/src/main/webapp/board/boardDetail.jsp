<%@page import="com.springbook.biz.common.SpringPath"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE="HTML">
<html>
<head>
<title>글 상세보기</title>
<link href="/biz/assets/ckeditor/contents.css" rel="stylesheet" />
<jsp:include page="${SpringPath.header }"></jsp:include>


<div class="under_header">
	<!-- Contact Section Heading-->
	<h1
		class="page-section-heading text-center text-secondary mb-0 display-1">${board.btitle }</h1>
	<!-- Icon Divider-->
	<div class="divider-custom">
		<div class="divider-custom-line"></div>
		<div class="divider-custom-icon">
			<i class="fas fa-star"></i>
		</div>
		<div class="divider-custom-line"></div>
	</div>
	<!-- Contact Section Form-->
	<div class="row">
		<div class="col-lg-8 mx-auto">
			<!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19.-->
			<div class="control-group">
				<div class="float-right lead display-4">등록일: ${board.bdate }</div>
				<div class="mb-0 pb-2 lead display-4">
					글쓴이: ${board.bwriterName }
					<p class="help-block text-danger"></p>
				</div>
			</div>
			<hr/>
			<div class="control-group">
				<div class="mb-0 pb-2 display-4">${board.bcontent }</div>
			</div>
			<br />
		</div>
	</div>

	<div>
		<div class="row justify-content-md-center">
			<button type="submit" class="btn btn-outline-secondary btn-margin ${hide }" onclick="location.href='/biz/editBoard.do?bidx=${board.bidx}'"
				style="width: 20%; font-weight: bold">수 정</button>
			<button type="submit" class="btn btn-outline-secondary btn-margin ${hide }" onclick="location.href='/biz/deleteBoard.do?bidx=${board.bidx}'"
				style="width: 20%; font-weight: bold">삭 제</button>
		</div>
	</div>

	<jsp:include page="${SpringPath.tail }"></jsp:include>