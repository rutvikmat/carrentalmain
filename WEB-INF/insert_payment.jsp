<%@ page import="java.sql.*" %>
<%
    String payment_id = request.getParameter("payment_id");
    String rental_id = request.getParameter("rental_id");
    String payment_date = request.getParameter("payment_date");
    String amount = request.getParameter("amount");
    String payment_method = request.getParameter("payment_method");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental", "root", "");
        String sql = "INSERT INTO payments (payment_id, rental_id, payment_date, amount, payment_method) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement stmt = conn.prepareStatement(sql);

        stmt.setString(1, payment_id);
        stmt.setString(2, rental_id);
        stmt.setString(3, payment_date);
        stmt.setDouble(4, Double.parseDouble(amount));
        stmt.setString(5, payment_method);

        int rows = stmt.executeUpdate();
        out.println(rows > 0 ? "Payments added successfully!" : "Failed to add payments.");
        conn.close();
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
