<%@ page import="java.sql.*" %>
<%
    String rental_id = request.getParameter("rental_id");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental", "root", "");
        String sql = "DELETE FROM rentals WHERE rental_id = ?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, rental_id);

        int rows = stmt.executeUpdate();
        if (rows > 0) {
            out.println("<script>alert('Rental deleted successfully!'); window.location = 'view_rentals.jsp';</script>");
        } else {
            out.println("<script>alert('Failed to delete rental.'); window.location = 'view_rentals.jsp';</script>");
        }
        conn.close();
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
