<%@page import="org.springframework.ui.Model"%>
<%@page import="com.springbook.biz.common.SpringPath"%>
<%@page import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<jsp:include page="${SpringPath.header }" />
<div class="container">
	<div class="row under_header">
		<div class="col-md-12">
			<h1>게시판</h1>
			<hr>
			<!-- 테이블 만들기 -->
			<div class="panel panel-success">
				<div class="panel-heading">
					<h3 class="panel-title d-inline">Bolletin board</h3> 
					<span class="float-right">
						<a href="/biz/goToInsertBoard.do" class='btn btn-sm btn-info'>글 등록</a>
					</span>
				</div>
				<div class="panel-body">
					<table class="table table_borderd">
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>글쓴이</th>
							<th>게시일</th>
						</tr>
						<tbody>
							<c:forEach var="i" begin="0" end="${boardList.size() - 1 }">
								<tr>
									<c:set var="board" value="${boardList.get(i) }" />
									<td>${i + 1}</td>
									<td><a href="boardDetail.do?bidx=${board.bidx}">${board.btitle }</a></td>
									<td>${board.bwriterName }</td>
									<td >${board.bdate}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="${SpringPath.tail }" />