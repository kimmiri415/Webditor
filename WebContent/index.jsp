<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<link rel="stylesheet" type="text/css" href="assets/css/MainStyle.css">
<script src="http://code.jquery.com/jquery-1.10.1.js"></script>

<script type="text/javascript" src="assets/js/Webditor_index.js"></script>

<title>Webditor</title>

</head>
<body>
	<header>
		<a href="" target="_self"><img src="assets/img/mainLogo.png" height="60px" width="200px" align="center"></a>

	</header>

	<div id="indexMiddle">
		<aside id="asideIntroduce">
			<div id="introduce">
				<p><h2>Webditor?</h2></p>
				<td>web page를 만들고 싶은 start up회사나 개인을 위한</td>
				<br />
				<td>Open web page생성 툴이다.</td>
				<br />
				<td>web page 생성에 어려움을 느끼거나 비용에 부담감을 느끼는 사람들이</td>
				<br />
				<td>손쉽게 web page를 만들 수 있는 사이트이다.</td>
				<br />
			</div>
		</aside>

		<aside id="asideLogin">
			<form id="tool" accept-charset="UTF-8" action="Login" autocomplete="off" method="post">
				<ul>
				<li>
					<input class="editlogin"id="email" type="hidden" name="email"
						placeholder=" Your email" aria-label=" Your email">
				</li>

				<li>
					<input class="editlogin"id="pw" type="hidden" name="password"
						placeholder=" Create a password" aria-label=" Create a password">
				</li>
				<li>
				<input type="hidden" id="check" name="source_label" placeholder=" Check a password">
				</li>
			<div id="pixedform">
				<button class="btnlogin"id="btnlogin" type="button">로그인</button>
				<button class="btnlogin"id="btnjoin" type="button">회원가입</button>
				</div>
				</ul>
					</form>
				</aside>
	</div>

	<footer id="mainFooter">
		<div class="ft_info">
			<p class="info">
				Webditor | 대표 이수연 010-0000-0000 | master@webditor.com<br> <b>copyright
					ⓒ 2016, LSY All rights reserved.</b>
			</p>
		</div>
	</footer>

</body>
</html>