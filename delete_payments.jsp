<%@ page import="java.sql.*" %>
<%
    String payment_id = request.getParameter("payment_id");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental", "root", "");
        String sql = "DELETE FROM payments WHERE payment_id = ?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, payment_id);

        int rows = stmt.executeUpdate();
        if (rows > 0) {
            out.println("<script>alert('Payments deleted successfully!'); window.location = 'view_payments.jsp';</script>");
        } else {
            out.println("<script>alert('Failed to delete payments'); window.location = 'view_payments.jsp';</script>");
        }
        conn.close();
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
