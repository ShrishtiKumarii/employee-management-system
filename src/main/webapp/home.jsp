<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Management System</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

    <header class="navbar">
        <div class="container nav-content">

            <h2>Employee Management System</h2>

            <a href="home.jsp" class="home-link">Home</a>

        </div>
    </header>


    <main class="hero">

        <div class="container">

            <h1>Welcome to Employee Management System</h1>

            <p>
                Manage employee information easily and efficiently.
            </p>

            <div class="card-container">

                <div class="card">
                    <h2>Add Employee</h2>

                    <p>
                        Add a new employee and store their details.
                    </p>

                    <a href="add-employee.jsp" class="btn">
                        Add Employee
                    </a>
                </div>


                <div class="card">
                    <h2>View Employees</h2>

                    <p>
                        View, search, update and delete employee records.
                    </p>

                    <a href="viewEmployees" class="btn">
                        View Employees
                    </a>
                </div>

            </div>

        </div>

    </main>

</body>
</html>