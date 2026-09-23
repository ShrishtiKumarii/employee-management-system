<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.employee.model.Employee" %>

<%
    Employee employee = (Employee) request.getAttribute("employee");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Employee</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

   
    <header class="navbar">
        <div class="container nav-content">

            <h2>Employee Management System</h2>

            <div class="nav-links">
                <a href="home.jsp">Home</a>
                <a href="viewEmployees">View Employees</a>
            </div>

        </div>
    </header>


    <!-- Edit Employee Form -->
    <main class="form-section">

        <div class="container">

            <div class="form-card">

                <h1>Edit Employee</h1>

                <form action="updateEmployee" method="post">

                    <input type="hidden"
                           name="employeeId"
                           value="<%= employee.getEmployeeId() %>">


                    <div class="form-group">
                        <label>Name</label>
                        <input type="text"
                               name="name"
                               value="<%= employee.getName() %>"
                               required>
                    </div>


                    <div class="form-group">
                        <label>Email</label>
                        <input type="email"
                               name="email"
                               value="<%= employee.getEmail() %>"
                               required>
                    </div>


                    <div class="form-group">
                        <label>Phone</label>
                        <input type="text"
                               name="phone"
                               value="<%= employee.getPhone() %>"
                               required>
                    </div>


                    <div class="form-group">
                        <label>Department</label>
                        <input type="text"
                               name="department"
                               value="<%= employee.getDepartment() %>"
                               required>
                    </div>


                    <div class="form-group">
                        <label>Designation</label>
                        <input type="text"
                               name="designation"
                               value="<%= employee.getDesignation() %>"
                               required>
                    </div>


                    <div class="form-group">
                        <label>Joining Date</label>
                        <input type="date"
                               name="joiningDate"
                               value="<%= employee.getJoiningDate() %>"
                               required>
                    </div>


                    <div class="form-group">
                        <label>Salary</label>
                        <input type="number"
                               step="0.01"
                               name="salary"
                               value="<%= employee.getSalary() %>"
                               required>
                    </div>


                    <div class="form-buttons">

                        <button type="submit" class="btn">
                            Update Employee
                        </button>

                        <a href="viewEmployees" class="back-btn">
                            Cancel
                        </a>

                    </div>

                </form>

            </div>

        </div>

    </main>

</body>
</html>