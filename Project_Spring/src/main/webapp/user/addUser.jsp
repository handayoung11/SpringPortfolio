<%@page import="com.springbook.biz.common.SpringPath"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 추가</title>

<jsp:include page="${SpringPath.header }"/>

<!-- Main component for a primary marketing message or call to action -->
<div class="row under_header">
	<div class="col-md-3"></div>
	<div class="col-md-6">
		<form class="form-signin" action="/biz/createUser.do" method="post">
			<h2 class="form-signin-heading">유저 추가하기</h2>
			<label>이름</label>
			<input class="form-control" type="text" id="uname" name="uname" placeholder="Name"/>
			<label>아이디</label>
			<input class="form-control" type="text" id="userID" name="userID" placeholder="ID"/>
			<label>패스워드</label>
			<input class="form-control" type="password" id="userpw" name="userpw" placeholder="Password"/>
			<label>이메일</label>
			<input class="form-control" type="text" id="uemail" name="uemail" placeholder="Email"/>
			<button class="btn btn-lg btn-primary btn-block" type="submit">추가하기</button>
		</form>
	</div>
</div>
<jsp:include page="${SpringPath.tail }"></jsp:include>