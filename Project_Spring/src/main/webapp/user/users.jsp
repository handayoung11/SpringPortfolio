<%@page import="com.springbook.biz.common.SpringPath"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="${SpringPath.header }"/>
<div class="container">
	<div class="row under_header">
		<div class="col-md-12">
			<h1>인사관리</h1>
			<hr>
			<!-- 테이블 만들기 -->
			<div class="panel panel-success">
				<div class="panel-heading">
					<h3 class="panel-title d-inline">사용자 리스트</h3> 
					<span class="float-right">
						<a href="/biz/user/addUser.jsp" class='btn btn-sm btn-info'>사용자 추가</a>
					</span>
				</div>
				<div class="panel-body">
					<table class="table table_borderd">
						<tr>
							<th>번호</th>
							<th>이름</th>
							<th>아이디</th>
							<th>이메일</th>
							<th>상태</th>
							<th>처리</th>
						</tr>
						<c:forEach var="user" items="${userList }">
							<tbody>
								<tr>
								<td>${user.idx }</td>
								<td>${user.uname }</td>
								<td>${user.userID }</td>
								<td>${user.uemail }</td>
								<td>${user.ustat }</td>
								<td><a class='btn btn-sm btn-warning' href='getUser.do?idx= ${user.idx }'><i class='far fa-edit' style='font-size: 48px;'></i></a> 
								<a class='btn btn-sm btn-danger' href='delUser.do?idx=${user.idx }'><i class='fas fa-trash-alt' style='font-size: 48px;'></i></a></td>
								</tr>
							</tbody>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
		<!-- row -->
	</div>
	<!-- container -->
</div>
<jsp:include page="${SpringPath.tail }"/>
