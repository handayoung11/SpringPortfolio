<%@page import="web.user.UserVO"%>
<%@page import="com.springbook.biz.common.SpringPath"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- <%@include file="include/DBConn.jsp"%> --%>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 수정</title>
<jsp:include page="${SpringPath.header }"/>

<!-- Main component for a primary marketing message or call to action -->
<div class="row under_header">
	<div class="col-md-3"></div>
	<div class="col-md-6">
		<%
		//get방식으로 id를 받아온 후 테이블로부터 id로 정보 얻어오기
			request.setCharacterEncoding("UTF-8");
			UserVO user = (UserVO)request.getAttribute("user");
			if(user==null) {
				out.print("<script>location.href='index.jsp'</script>");
				return;
			}
// 			out.print("eid:" + eid);
		%>
		<form class="form-signin" action="updateUser.do" method="post">
			<h2 class="form-signin-heading">유저 수정하기</h2>
			<input class="form-control" type="hidden" id="uidx" name="idx" value="${user.idx}"/>
			<label>이름</label>
			<input class="form-control" type="text" id="uname" name="uname" value="${user.uname}"/>
			<label>아이디</label>
			<input class="form-control" type="text" id="userid" name="userID" value="${user.userID}"/>
			<label>패스워드</label>
			<input class="form-control" type="password" id="userpw" name="userpw" value="${user.userpw}"/>
			<label>이메일</label>
			<input class="form-control" type="text" id="uemail" name="uemail" value="${user.uemail}"/>
			<label>유저상태</label>
			<input class="form-control" type="text" id="ustat" name="ustat" value="${user.ustat}"/>
			<label>유저권한</label>
			<input class="form-control" type="text" id="uauth" name="uauth" value="${user.uauth}"/>
			<button class="btn btn-lg btn-primary btn-block" type="submit">수정하기</button>
		</form>
	</div>
</div>
<jsp:include page="${SpringPath.tail }"/>
