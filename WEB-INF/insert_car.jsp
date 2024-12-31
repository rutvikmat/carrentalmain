<%@ page import="java.sql.*" %>
<%
    String car_model = request.getParameter("car_model");
    String license_plate = request.getParameter("license_plate");
    String status = request.getParameter("status");
    String rental_rate = request.getParameter("rental_rate");
    String car_type = request.getParameter("car_type");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental", "root", "");
        String sql = "INSERT INTO Cars (car_model, license_plate, status, rental_rate, car_type) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement stmt = conn.prepareStatement(sql);

        stmt.setString(1, car_model);
        stmt.setString(2, license_plate);
        stmt.setString(3, status);
        stmt.setDouble(4, Double.parseDouble(rental_rate));
        stmt.setString(5, car_type);

        int rows = stmt.executeUpdate();
        out.println(rows > 0 ? "Car added successfully!" : "Failed to add car.");
        conn.close();
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
