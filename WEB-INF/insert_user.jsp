<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%
// Database connection settings
    String dbURL = "jdbc:mysql://localhost:3306/carrental";
    String dbUser = "root";
    String dbPassword = ""; // Leave blank if no password is set

    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String role = request.getParameter("role");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental", "root", "");
        String sql = "INSERT INTO Users (username, password, email, phone, role) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement stmt = conn.prepareStatement(sql);

        stmt.setString(1, username);
        stmt.setString(2, password); // Ideally, hash the password
        stmt.setString(3, email);
        stmt.setString(4, phone);
        stmt.setString(5, role);

        int rows = stmt.executeUpdate();
        out.println(rows > 0 ? "User added successfully!" : "Failed to add user.");
        conn.close();
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
