<%@ page import="java.sql.*" %>
<%
    String feedback_id = request.getParameter("feedback_id");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental", "root", "");
        String sql = "DELETE FROM feedback WHERE feedback_id = ?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, feedback_id);

        int rows = stmt.executeUpdate();
        if (rows > 0) {
            out.println("<script>alert('feedback deleted successfully!'); window.location = 'view_feedback.jsp';</script>");
        } else {
            out.println("<script>alert('Failed to delete rental.'); window.location = 'view_feedback.jsp';</script>");
        }
        conn.close();
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
