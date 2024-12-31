<%@ page import="java.sql.*" %>
<%
    String feedback_id = request.getParameter("feedback_id");
    String user_id = request.getParameter("user_id");
    String car_id = request.getParameter("car_id");
    String rental_id = request.getParameter("rental_id");
    String rating = request.getParameter("rating");
    String comments = request.getParameter("comments");
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental", "root", "");
        String sql = "INSERT INTO feedback (feedback_id, user_id, car_id, rental_id, rating, comments) VALUES (?, ?, ?, ?, ?, ?)";
        PreparedStatement stmt = conn.prepareStatement(sql);

        stmt.setString(1, feedback_id);
        stmt.setString(2, user_id);
        stmt.setString(3, car_id);
        stmt.setString(4, rental_id);
        stmt.setString(5, rating);
        stmt.setString(6, comments);
        

        int rows = stmt.executeUpdate();
        out.println(rows > 0 ? "Feedback added successfully!" : "Failed to add Feedback.");
        conn.close();
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
