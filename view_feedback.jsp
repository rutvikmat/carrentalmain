<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Rentals</title>
</head>
<style type="text/css">
    * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Roboto', sans-serif;
}

body {
    background-color: #f9f9f9;
    color: #333;
    line-height: 1.6;
}

/* Header Styling */
header {
    background-color: #000000; /* Bright Blue */
    padding: 20px 0;
    color: white;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

header .container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 0 20px;
}

header .logo h1 {
    font-size: 2.5rem;
    font-weight: bold;
    letter-spacing: 1px;
}

header nav ul {
    list-style-type: none;
    display: flex;
}

header nav ul li {
    margin: 0 20px;
}

header nav ul li a {
    color: white;
    text-decoration: none;
    font-size: 1.1rem;
    font-weight: 500;
    transition: color 0.3s ease;
}

header nav ul li a:hover {
    color: #f1c40f; /* Golden Yellow */
}


.table {
    text-align: center;
}

.table h1 {
    margin-bottom: 20px;
    font-size: 24px;
    color: #333;
}

table {
    border-collapse: collapse;
    width: 80%;
    background-color: #fff;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    overflow: hidden;
}

thead {
    background-color: black;
    color: #fff;
}

thead th {
    padding: 12px 15px;
    text-transform: uppercase;
    font-size: 14px;
}

tbody td {
    padding: 12px 15px;
    color: #333;
    font-size: 14px;
    border-bottom: 1px solid #ddd;
}

tbody tr:hover {
    background-color: #f1f1f1;
}

tbody td:last-child {
    color: #d9534f;
    cursor: pointer;
}

/* Add some spacing between the table and its content */
.table {
    padding: 20px;
}

</style>
<body>
    <!-- Header Section -->
    <header>
        <div class="container">
            <div class="logo">
                <h1>Car Rental Service</h1>
            </div>
            <nav>
                <ul>
                    <li><a href="owner_home.html">Home</a></li>
                    <li><a href="insert_car.html">Add Cars</a></li>
                    <li><a href="view_rentals.jsp">View booking </a></li>
                    <li><a href="viewadminlogs.jsp">View user </a></li>
                    <li><a href="insert_rentals.html">rentals</a></li>
                    <li><a href="insert_payment.jsp">payments</a></li>
                    <li><a href="changepwd.html">Change password</a></li>
                    <li><a href="logout.html">logout</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <center>
    <h1>feedback Records</h1>
    <table border="1">
        <thead>
            <tr>
                <th>feedback_id</th>
                <th>User ID</th>
                <th>Car ID</th>
                <th>Rental ID</th>
                <th>Rating</th>
                <th>comments</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            <%
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental", "root", "");
                    String sql = "SELECT * FROM feedback";
                    Statement stmt = conn.createStatement();
                    ResultSet rs = stmt.executeQuery(sql);
                    
                    while (rs.next()) {
            %>
            <tr>
                <td><%= rs.getString("feedback_id") %></td>
                <td><%= rs.getString("user_id") %></td>
                <td><%= rs.getString("car_id") %></td>
                <td><%= rs.getString("rental_id") %></td>
                <td><%= rs.getString("rating") %></td>
                <td><%= rs.getString("comments") %></td>
                <td>
                    <form action="delete_feedback.jsp" method="post" style="display:inline;">
                        <input type="hidden" name="feedback_id" value="<%= rs.getString("feedback_id") %>">
                        <button type="submit">Delete</button>
                    </form>
                </td>
            </tr>
            <%
                    }
                    conn.close();
                } catch (Exception e) {
                    out.println("Error: " + e.getMessage());
                }
            %>
        </tbody>
    </table>
</center>
</body>
</html>
