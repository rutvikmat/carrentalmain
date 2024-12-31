<%@ page import="java.sql.*" %>
<%
    String log_id = request.getParameter("log_id");
    String admin_id = request.getParameter("admin_id");
    String action = request.getParameter("action");
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental", "root", "");
        String sql = "INSERT INTO adminlogs (log_id, admin_id, action) VALUES (?, ?, ?)";
        PreparedStatement stmt = conn.prepareStatement(sql);

        stmt.setString(1, log_id);
        stmt.setString(2, admin_id);
        stmt.setString(3, action);
        

        int rows = stmt.executeUpdate();
        out.println(rows > 0 ? "Adminlos added successfully!" : "Failed to add Adminlogs.");
        conn.close();
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
