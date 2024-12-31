<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%
    // Database connection settings
    String dbURL = "jdbc:mysql://localhost:3306/carrental";
    String dbUser = "root";
    String dbPassword = ""; // Leave blank if no password is set

    // Retrieve form data
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String cpassword = request.getParameter("utype");

    // Validate passwords
    if (!password.equals(password)) {
        out.println("<p>Passwords do not match. Please try again.</p>");
    } else {
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection
            conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            // Insert user data into the database
            String sql = "INSERT INTO users1 (username, email, password) VALUES (?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, emailid);
            pstmt.setString(3, password);

            int rowsInserted = pstmt.executeUpdate();

            if (rowsInserted > 0) {
                out.println("<p>Account created successfully! <a href='/carrentalmain/login.html''>Login here</a>.</p>");
            }
        } catch (ClassNotFoundException e) {
            out.println("<p>Error: MySQL JDBC Driver not found.</p>");
            e.printStackTrace();
        } catch (SQLException e) {
            out.println("<p>Error: Unable to connect to the database. " + e.getMessage() + "</p>");
        } finally {
            if (pstmt != null) try { pstmt.close(); } catch (SQLException ignore) {}
            if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
        }
    }
%>
