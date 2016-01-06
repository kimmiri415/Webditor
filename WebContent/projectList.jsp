<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("email") == null) {
		response.sendRedirect("index.jsp");
	}
%>

<%
	String email = (String) session.getAttribute("email");
%>
<!DOCTYPE html>
<html lang="ko-KR">
<head>

<link rel="stylesheet" type="text/css" href="assets/css/MainStyle.css">
<script src="http://code.jquery.com/jquery-1.10.1.js"></script>

<script type="text/javascript" src="assets/js/Webditor_projectList.js"></script>

<title>Webditor</title>

</head>
<body id="projectListBody">
	<header>
		<ul id="newProject">
			<script type="text/javascript">
				function popupOpen() {
					var popUrl = "popUpProjectname.jsp"; //팝업창에 출력될 페이지 URL
					var popOption = "width=300, height=100, resizable=no, scrollbars=no,status=no;"; //팝업창 옵션(optoin) 
					window.open(popUrl, 0, popOption);
				}
			</script>
			<a href="javascript:popupOpen();" target="_self"><li>새프로젝트</li></a>
		</ul>
		<a href="" target="_self"><img src="assets/img/mainLogo.png" height="60px" width="200px" align="center"></a>

		<ul id="headerLogout">
			<a href="logout.jsp" target="_self"><li>로그아웃</li></a>
		</ul>

	</header>
	<div class="middle">
		<div id="projectListMiddleSection">
			<section class="projectSection">
				<p class="menu">
					<a>프로젝트</a>
				</p>
				<ul>
					<li>
						<ul class="hide">
							<li>이름 변경</li>
							<li>삭제</li>
						</ul>
					</li>
				</ul>
				<div class="projectPage">
					<a href="edit.jsp" target="_self"><div></div></a>
				</div>

			</section>

		


		</div>

	</div>
</body>
</html>