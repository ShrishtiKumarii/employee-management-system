<%@ page import="java.util.List" %>
<%@ page import="com.employee.model.Employee" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>View Employees</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

   
    <header class="navbar">
        <div class="container nav-content">

            <h2>Employee Management System</h2>

            <div class="nav-links">
                <a href="home.jsp">Home</a>
                <a href="add-employee.jsp">Add Employee</a>
            </div>

        </div>
    </header>


   
    <main class="employee-section">

        <div class="container">

            <div class="employee-header">
               <h1>Employee List</h1>
<p>View and manage employee records.</p>

<%
    String message = request.getParameter("message");

    if ("deleted".equals(message)) {
%>
    <div class="success-message">
        Employee deleted successfully!
    </div>
<%
    } else if ("failed".equals(message)) {
%>
    <div class="error-message">
        Employee could not be deleted.
    </div>
<%
    }
%>
            </div>


          
            <form action="searchEmployees" method="get" class="search-form">

                <input type="text"
                       name="keyword"
                       placeholder="Search by name, department or designation">

                <button type="submit" class="btn">
                    Search
                </button>

            </form>


            
            <div class="table-container">

                <table>

                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Department</th>
                            <th>Designation</th>
                            <th>Joining Date</th>
                            <th>Salary</th>
                            <th>Action</th>
                        </tr>
                    </thead>

                    <tbody>

                    <%
                        List<Employee> employees =
                            (List<Employee>) request.getAttribute("employees");

                        for (Employee employee : employees) {
                    %>

                        <tr>

                            <td><%= employee.getEmployeeId() %></td>

                            <td><%= employee.getName() %></td>

                            <td><%= employee.getEmail() %></td>

                            <td><%= employee.getPhone() %></td>

                            <td><%= employee.getDepartment() %></td>

                            <td><%= employee.getDesignation() %></td>

                            <td><%= employee.getJoiningDate() %></td>

                            <td>₹<%= employee.getSalary() %></td>

                            <td class="action-links">

                                <a href="updateEmployee?id=<%= employee.getEmployeeId() %>"
                                   class="edit-link">
                                    Edit
                                </a>

                                <a href="deleteEmployee?id=<%= employee.getEmployeeId() %>"
                                   class="delete-link"
                                   onclick="return confirm('Are you sure you want to delete this employee?');">
                                    Delete
                                </a>

                            </td>

                        </tr>

                    <%
                        }
                    %>

                    </tbody>

                </table>

            </div>

        </div>

    </main>
    
    <script>
    setTimeout(function() {
        const message = document.querySelector('.success-message, .error-message');

        if (message) {
            message.style.opacity = '0';

            setTimeout(function() {
                message.remove();
            }, 500);
        }
    }, 3000);
</script>

</body>
</html> 