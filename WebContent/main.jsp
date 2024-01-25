<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="test.Member"%>
<%
	Member mem = (Member) request.getAttribute("boardVO");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	*{
	margin:0;
	padding:0;
	}
	.header {
		width :calc(100vw-20px);
		display : flex;
		height : 50px;
		justify-content : space-between;
		padding: 10px;
		margin-bottom : 30px;
		margin-top: 10px;
	}
	span{
		font-weight:bold;

		
	}
	.text1{
			margin : 10px;
	}
	.png-container{
		display : flex;
		margin : 10px;
		justify-content : space-between;
	}
	.png-container img{
		width : 32vw;
	}
	.footer {
		margin-top : 20px;
		float: right;
	}
	.footer img{
		width :25vw;
	}
	.footertxt span {
		font-weight: 1;
		margin : 0 20px;
	}
	.footertxt {
		width: 32vw;
		float:right;
	}
</style>
<body>
	<div class="header">
		<div><h2> 메인페이지</h2></div>
		<div>
			<div>
				<span><%=mem.getName() %>님 안녕하세요.</span> 
				<span>mem님 안녕하세요.</span>
				<button onclick="logout()">로그아웃</button>
			</div>
			<div>
				<%--<span>포인트 : <%=mem.getPoint() %>점</span>*/ --%> 
				<span>포인트 : 1000점</span>
			</div>
		</div>
	</div>
	<div class=text1><span>구입할 컨텐츠를 선택하세요.</span></div>
	<div class=png-container>
		<img src="Intro_350_408.png">
		<img src="Java_350_408.png">
		<img src="Cpp_350_408.png">
	</div>
	<div class="footertxt">
		<span>
			<광고>
		</span>

		<div class="footer">
			<a href="https://koreaisacademy.com" onclick="addpoint()">
				<img src="korea_it.png">
			</a>
		</div>
	</div>
	<script>
		function logout() {
			location.href("lotout.jsp");
		}
		function addpoint(){
			int score = 1000;
		    alert(score+"점이 적립되었습니다.");
			location.href("pointadd.jsp");
		}

	</script>
</body>
</html>