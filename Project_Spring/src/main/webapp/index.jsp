<%@page import="com.springbook.biz.common.SpringPath"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<jsp:include page="${SpringPath.header }"/>
<jsp:include page="${SpringPath.mastheader }"/>

<!-- Portfolio Section-->
<section class="page-section portfolio" id="portfolio">
	<div class="container">
		<!-- Portfolio Section Heading-->
		<h2	class="page-section-heading text-center text-uppercase text-secondary mb-0">Portfolio</h2>
		<!-- Icon Divider-->
		<div class="divider-custom">
			<div class="divider-custom-line"></div>
			<div class="divider-custom-icon">
				<i class="fas fa-star"></i>
			</div>
			<div class="divider-custom-line"></div>
		</div>
		<!-- Portfolio Grid Items-->
		<div class="row">
			<jsp:include page="/include/modal.jsp"></jsp:include>
		</div>
</section>

<jsp:include page="${SpringPath.about }"/>
<jsp:include page="${SpringPath.contact }"/>
<jsp:include page="${SpringPath.footer }"/>
<jsp:include page="${SpringPath.base }"/>
