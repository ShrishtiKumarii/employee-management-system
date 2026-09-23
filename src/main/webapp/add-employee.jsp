<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Employee</title>
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

    <main class="form-section">

        <div class="container">

            <div class="form-card">

                <h1>Add Employee</h1>

                <form action="addEmployee" method="post">

                    <div class="form-group">
                        <label>Name</label>
                        <input type="text"
                               name="name"
                               placeholder="Enter employee name"
                               required>
                    </div>


                    <div class="form-group">
                        <label>Email</label>
                        <input type="email"
                               name="email"
                               placeholder="Enter email address"
                               required>
                    </div>


                    <div class="form-group">
                        <label>Phone</label>
                        <input type="text"
                               name="phone"
                               placeholder="Enter phone number"
                               required>
                    </div>


                    <div class="form-group">
                        <label>Department</label>
                        <input type="text"
                               name="department"
                               placeholder="Enter department"
                               required>
                    </div>


                    <div class="form-group">
                        <label>Designation</label>
                        <input type="text"
                               name="designation"
                               placeholder="Enter designation"
                               required>
                    </div>


                    <div class="form-group">
                        <label>Joining Date</label>
                        <input type="date"
                               name="joiningDate"
                               required>
                    </div>


                    <div class="form-group">
                        <label>Salary</label>
                        <input type="number"
                               step="0.01"
                               name="salary"
                               placeholder="Enter salary"
                               required>
                    </div>


                    <div class="form-buttons">
                        <button type="submit" class="btn">
                            Add Employee
                        </button>

                    </div>

                </form>

            </div>

        </div>

    </main>

</body>
</html>