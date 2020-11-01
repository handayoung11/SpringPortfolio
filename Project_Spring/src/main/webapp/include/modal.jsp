<%@page import="java.text.NumberFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Portfolio Item 1-->
<%
	String mtitle[] = { "인사 관리 시스템(JAVA)", "Python 추가 분석 스크래이핑", "머신러닝(Sci-Kit)",
			"웹페이지 작성(HTML, CSS, JAVAScript)", "서버 관리(IIS, Apache Tomcat)", "~진영이의 포폴~" };
	String mcontent[] = { "JAVA를 사용하여 인사관리 시스템과 JSP를 사용하여 포트폴리오 관리 페이지를 작성", "파이썬을 활용하여 빅데이터를 추출하고 정제하는 프로젝트",
			"머신러닝을 활용한 부동산 급등지역 분석 시각화", "BootStrap을 이용하여 동적 웹페이지 작성", "IIS와 Apache Tomcat을 이용한 서버 관리",
			"귀여운 동물들 보고 힐링하세요 ~~~ ^^" };
	String mpath = "assets/img/portfolio/";
	String ext = "";
	String src = "";
	int num = 0;
	for (int i = 0; i < 6; i++) {
		num++;
		ext = "png";
		src = mpath + "modal_" + String.format("%03d", num) + "." + ext;
%>
<div class="col-md-6 col-lg-4 mb-5">
	<div class="portfolio-item mx-auto" data-toggle="modal"
		data-target="#portfolioModal<%=num%>">
		<div
			class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
			<div class="portfolio-item-caption-content text-center text-white">
				<i class="fas fa-plus fa-3x"></i>
			</div>
		</div>
		<img class="img-fluid" src="<%=src.replace("modal_", "")%>" alt="" />
	</div>
</div>
<!-- Portfolio Modal 1-->
<div class="portfolio-modal modal fade" id="portfolioModal<%=num%>"
	tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label"
	aria-hidden="true">
	<div class="modal-dialog modal-xl" role="document">
		<div class="modal-content">
			<button class="close" type="button" data-dismiss="modal"
				aria-label="Close">
				<span aria-hidden="true"><i class="fas fa-times"></i></span>
			</button>
			<div class="modal-body text-center">
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-8">
							<!-- Portfolio Modal - Title-->
							<h2
								class="portfolio-modal-title text-secondary text-uppercase mb-0"
								id="portfolioModal1Label"><%=mtitle[num - 1] %></h2>
							<!-- Icon Divider-->
							<div class="divider-custom">
								<div class="divider-custom-line"></div>
								<div class="divider-custom-icon">
									<i class="fas fa-star"></i>
								</div>
								<div class="divider-custom-line"></div>
							</div>
							<!-- Portfolio Modal - Image-->
							<img class="img-fluid rounded mb-5" src="<%=src%>" alt="" />
							<!-- Portfolio Modal - Text-->
							<p class="mb-5"><%=mcontent[num - 1]%></p>
							<button class="btn btn-primary" data-dismiss="modal">
								<i class="fas fa-times fa-fw"></i> Close Window
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%} %>