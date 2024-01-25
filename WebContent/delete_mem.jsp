<%@ page import="java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String paramId = request.getParameter("userID");
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

  String sql = "DELETE FROM MEMBER WHERE ID = ?";
  PreparedStatement pstmt = conn.prepareStatement(sql);
  pstmt.setString(1, paramId);
  ResultSet rs = pstmt.executeQuery();

  %>
  <script>
    alert("삭제되었습니다.");
  </script>
<%
	response.sendRedirect("admin.jsp");
  rs.close();
  pstmt.close();
  conn.close();
%>
