<%@ page import="java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String paramId = request.getParameter("userID");
  String paramPw = request.getParameter("password");
  String paramName = request.getParameter("name");

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

  String sql = "INSERT INTO MEMBER(ID, PASSWORD, NAME) VALUES (?, ?, ?);";
  PreparedStatement pstmt = conn.prepareStatement(sql);
  pstmt.setString(1, paramId);
  pstmt.setString(2, paramPw);
  pstmt.setString(3, paramName);
  ResultSet rs = pstmt.executeQuery();
  rs.close();
  pstmt.close();
  conn.close();
%>
    <script>
      alert("가입되었습니다. 로그인 해주세요.");
      location.href = "login.jsp";
    </script>