<%@ page import="java.sql.*" %>
<%
    String log_id = request.getParam eter("log_id");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental", "root", "");
        String sql = "DELETE FROM adminlogs WHERE log_id = ?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, log_id);

        int rows = stmt.executeUpdate();
        if (rows > 0) {
            out.println("<script>alert('adminlogs deleted successfully!'); window.location = 'viewadminlogs.jsp';</script>");
        } else {
            out.println("<script>alert('Failed to delete adminlogs.'); window.location = 'viewadminlogs.jsp';</script>");
        }
        conn.close();
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
