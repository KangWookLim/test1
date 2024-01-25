<%@ page import="java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String paramId = request.getParameter("userID");
  String paramPw = request.getParameter("password");

  String driver = "oracle.jdbc.driver.OracleDriver";
  String url = "jdbc:oracle:thin:@localhost:1521:xe";
  String id = "test0125";
  String pw = "1234";

  Connection conn = null;

  try {
    Class.forName(driver);
    conn = DriverManager.getConnection(url, id, pw);
  } catch (Exception e) {
    e.printStackTrace();
  }

  String sql = "SELECT count(*) FROM member WHERE id=? AND pw=?";
  PreparedStatement pstmt = conn.prepareStatement(sql);
  pstmt.setString(1, paramId);
  pstmt.setString(2, paramPw);
  ResultSet rs = pstmt.executeQuery();

  int result = 0;
  if(rs.next()) {
	  session.setAttribute("id",paramId);
	  session.setAttribute("password", paramPw);
	  session.setMaxInactiveInterval(6000);
    	result = rs.getInt(1);
    if(paramId == "admin"){
    	result = rs.getInt(2);
    }
  }
  if(result == 1){
	  response.sendRedirect("main.jsp");
  }else if(result == 2){
	  response.sendRedirect("admin.jsp");
  }else{
 %>
	    <script>
	      alert("아이디/비밀 번호를 다시 확인하세요");
	    </script>
<%
	response.sendRedirect("login.jsp");
  }
  
  rs.close();
  pstmt.close();
  conn.close();
%>
