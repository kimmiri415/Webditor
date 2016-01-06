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
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="assets/css/MainStyle.css">
<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<!-- <script type="text/javascript" src="assets/js/Webditor_index.js"></script>
 -->
<title>새프로젝트</title>

</head>
<body>


	<aside id="asidProject">
		<form id="tool" accept-charset="UTF-8" action="newProject"
			autocomplete="off" method="post">
			<ul>
				<li><input class="editname" id="name" type="text" name="name"
					placeholder=" new Projectname" aria-label=" new Projectname"></li>


				<div id="pixedform">
					<button class="btnname" id="btnname" type="button">만들기</button>

				</div>
			</ul>
		</form>
	</aside>
</body>
</html>