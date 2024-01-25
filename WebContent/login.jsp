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
        function signup() {
        	console.log("check")
        	location.href='signup.jsp';
        }
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
    <h2>로그인</h2>
    <form action="login_check.jsp" method="post">
    <div class="login-input-box">
    <span>ID : </span><input type="text" id="userID" name="userID">
    </div>
    <div class="login-input-box">
    <span>PW : </span><input type="password" id="password" name="password"><br>
    </div>
        <input type="submit" value="로그인" class="login-btn">
    </form>
    
    <button class="login-btn" onclick="signup()">
		회원가입
    </button>
    </div>
</body>
</html>
