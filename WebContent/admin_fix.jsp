<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*, javax.servlet.http.*" %>

<%


%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script>
    </script>
</head>
<style>
	.login-container{
		width : 250px;
	}
	.login-btn {
		width:100%;
	}
	.login-input-box {
		display : flex;
		width :100%;
	}
	span{
		width: 5rem;
	}
	.login-input-box input {
		width : 100%;
	}
</style>
<body>
	<div class=login-container>
    <h2>회원관리-수정관리자</h2>
    <form action="update_mem.jsp" method="post">
    <div class="login-input-box">
    <span>ID : </span><input type="text" id="userID" name="userID">
    </div>
    <div class="login-input-box">
    <span>PW : </span><input type="password" id="password" name="password"><br>
    </div>
    <div class="login-input-box">
    <span>Name : </span><input type="text" id="name" name="name"><br>
    </div>
    <div class="login-input-box">
    <span>Point : </span><input type="text" id="point" name="point"><br>
    </div>
        <input type="submit" value="제출" class="login-btn">
    </form>

    </div>
</body>
</html>
