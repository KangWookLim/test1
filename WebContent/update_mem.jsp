<%@ page import="java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String paramId = request.getParameter("userID");
  String paramPw = request.getParameter("password");
  String paramName = request.getParameter("name");
  String paramPoint = request.getParameter("point");

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

  String sql = "UPDATE MEMBER SET PW = ?, NAME = ?, POINT = ? WHERE id=? ";
  PreparedStatement pstmt = conn.prepareStatement(sql);
  pstmt.setString(1, paramPw);
  pstmt.setString(2, paramName);
  pstmt.setString(3, paramPoint);
  pstmt.setString(4, paramId);
  ResultSet rs = pstmt.executeQuery();

  %>
  <script>
    alert("수정되었습니다.");
  </script>
<%
	response.sendRedirect("admin.jsp");
  rs.close();
  pstmt.close();
  conn.close();
%>
