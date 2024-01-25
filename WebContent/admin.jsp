<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
		table { border-collapse: collapse; border: 1px solid grey; }
		td, th { font-size:14px; }
</style>
<body>
	<div class="container">
		<h1>게시글 전체보기</h1>
		<button id="btn_logout" class="fr">로그아웃</button>
		<div style="clear:both;"></div>
		<table class="table table-striped">
			<tr>
				<th>ID</th>
				<th>PW</th>
				<th>NAME</th>
				<th>POINT</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
			<tr>
				<td>admin</td>
				<td>a</td>
				<td>와이지</td>
				<td>1013</td>
				<td><button>수정</button></td>
				<td><button>삭제</button></td>
			</tr>
		</table>
	</div>
</body>
</html>