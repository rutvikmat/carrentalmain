<%@ page import="java.sql.*" %>
<%
    // Get form data
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    // Database connection
    String dbURL = "jdbc:mysql://localhost:3306/carrental";
    String dbUser = "root"; // Default MySQL username
    String dbPassword = ""; // Default MySQL password (leave empty if not set)

    boolean isValidUser = false;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

        String query = "SELECT * FROM users WHERE username = ? AND password = ?";
        PreparedStatement stmt = conn.prepareStatement(query);
        stmt.setString(1, username);
        stmt.setString(2, password);
        ResultSet rs = stmt.executeQuery();

        if (rs.next()) {
            isValidUser = true;
        }

        conn.close();
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }

    if (isValidUser) {
        out.println("<h2>Welcome, " + username + "!</h2>");
         out.println("<p>Login Succusfull ! <a href='/carrentalmain/index.html''>Book A car </a>.</p>");
    } else {
        out.println("<h2>Invalid username or password. Please try again.</h2>");
    }
%>
