<%@ page import="java.sql.*" %>
<%
    String car_id = request.getParameter("car_id");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental", "root", "");
        String sql = "DELETE FROM cars WHERE car_id = ?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, car_id);

        int rows = stmt.executeUpdate();
        if (rows > 0) {
            out.println("<script>alert('cars deleted successfully!'); window.location = 'view_cars.jsp';</script>");
        } else {
            out.println("<script>alert('Failed to delete cars.'); window.location = 'view_cars.jsp';</script>");
        }
        conn.close();
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
