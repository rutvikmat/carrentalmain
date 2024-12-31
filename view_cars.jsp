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
                    <li><a href="customer_home.jsp">Home</a></li>
                    <li><a href="view_cars.jsp">View Cars</a></li>
                    <li><a href="view_payments.jsp">Billing</a></li>
                    <li><a href="WEB-INF/insert_feedback.jsp">Feedback</a></li>
                    <li><a href="logout.html">logout</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <div class="table">
    <h1>Rental Records</h1>
    <table border="1">
        <thead>
            <tr>
                <th>Car ID</th>
                <th>Car_model</th>
                <th>license_plate</th>
                <th>status</th>
                <th>Rental_rate</th>
                <th>car_type</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            <%
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental", "root", "");
                    String sql = "SELECT * FROM cars";
                    Statement stmt = conn.createStatement();
                    ResultSet rs = stmt.executeQuery(sql);
                    
                    while (rs.next()) {
            %>
            <tr>
                <td><%= rs.getString("car_id") %></td>
                <td><%= rs.getString("car_model") %></td>
                <td><%= rs.getString("license_plate") %></td>
                <td><%= rs.getString("status") %></td>
                <td><%= rs.getString("rental_rate") %></td>
                <td><%= rs.getString("car_type") %></td>
                <td>
                    <form action="delete_cars.jsp" method="post" style="display:inline;">
                        <input type="hidden" name="car_id" value="<%= rs.getString("car_id") %>">
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
</div>
</body>
</html>
