<%@ page import="java.sql.*" %>
<%
    String rental_id = request.getParameter("rental_id");
    String user_id = request.getParameter("user_id");
    String car_id = request.getParameter("car_id");
    String rental_date = request.getParameter("rental_date");
    String return_date = request.getParameter("return_date");
    String total_amount = request.getParameter("total_amount");
    String status = request.getParameter("status");
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental", "root", "");
        String sql = "INSERT INTO rentals (rental_id, car_id, user_id, rental_date, return_date, total_amount, status) VALUES (?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement stmt = conn.prepareStatement(sql);

        stmt.setString(1, rental_id);
        stmt.setString(2, user_id);
        stmt.setString(3, car_id);
        stmt.setString(4, rental_date);
        stmt.setString(5, return_date);
        stmt.setString(6, total_amount);
        stmt.setString(7, status);
        

        int rows = stmt.executeUpdate();
        out.println(rows > 0 ? "Rental added successfully!" : "Failed to add Rental.");
        conn.close();
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
