# 💼 Employee Management System

A Java-based CRUD web application for managing employee records. This project was built to strengthen my understanding of Java web development fundamentals using Servlets, JSP, JDBC, and PostgreSQL.

## ✨ Features

- ➕ Add new employee records
- 👀 View all employees
- 🔍 Search employees by name, department, or designation
- ✏️ Edit and update employee details
- 🗑️ Delete employee records with confirmation
- ✅ Success and error messages
- 🎨 Clean and user-friendly interface

## 🛠️ Tech Stack

- **Language:** Java
- **Backend:** Servlets, JDBC
- **Frontend:** JSP, HTML, CSS, JavaScript
- **Database:** PostgreSQL
- **Build Tool:** Maven
- **Server:** Apache Tomcat 9
- **Architecture:** DAO Pattern

## 🏗️ Project Architecture

The application follows a simple layered architecture:

```text
Controller → DAO → Database
     ↓
   Model
     ↓
    JSP
Controller
Servlets handle HTTP requests, responses, and application flow.
DAO
EmployeeDAO handles database operations using JDBC.
Model
The Employee class represents employee data and contains the employee attributes.
JSP
JSP pages are used to display dynamic content and provide the user interface.
This separation keeps the application organized and makes each layer responsible for a specific task.
📚 What I Learned
Building this project helped me understand how a Java web application works using core Java web technologies.
Through this project, I practiced:
Handling HTTP requests and responses using Servlets
Rendering dynamic pages using JSP
Connecting Java applications to PostgreSQL using JDBC
Performing CRUD operations
Implementing the DAO pattern
Using Maven for dependency management
Running a Java web application using Apache Tomcat
Separating controller, database, and model responsibilities
These concepts provide a strong foundation for understanding frameworks such as Spring and Spring Boot.
🗄️ Database Setup
This project uses PostgreSQL.
The database table structure is available in:
src/main/resources/database.sql
Database Configuration
A sample configuration file is provided:
src/main/resources/db.properties.example
Create your own:
src/main/resources/db.properties
and add your local PostgreSQL credentials.
Example:
db.url=jdbc:postgresql://localhost:5432/employee-management
db.username=your_postgresql_username
db.password=your_postgresql_password
🔒 db.properties is excluded from GitHub using .gitignore to protect database credentials.
▶️ How to Run
Prerequisites
Make sure you have:
Java 8 or later
Eclipse IDE
PostgreSQL
Apache Tomcat 9
Maven
Steps
Clone the repository:
git clone https://github.com/ShrishtiKumarii/employee-management-system.git
Import the project into Eclipse as a Maven project.
Create the PostgreSQL database.
Run the SQL script:
src/main/resources/database.sql
Create db.properties using db.properties.example.
Add your PostgreSQL username and password.
Configure Apache Tomcat 9 in Eclipse.
Run the project on the Tomcat server.
Open the application in your browser.
📸 Screenshots
Home Page
Add screenshot here.
Add Employee
Add screenshot here.
Employee List
Add screenshot here.
Search Employee
Add screenshot here.
Edit Employee
Add screenshot here.
🎥 Project Demo
A short demonstration of the application showing the main CRUD operations, search functionality, update flow, and delete functionality.
Add demo video here.
📁 Project Structure
employee-management
│
├── .gitignore
├── pom.xml
│
├── src
│   └── main
│       ├── java
│       │   └── com.employee
│       │       ├── controller
│       │       │   ├── AddEmployeeServlet.java
│       │       │   ├── DeleteEmployeeServlet.java
│       │       │   ├── SearchEmployeeServlet.java
│       │       │   ├── UpdateEmployeeServlet.java
│       │       │   └── ViewEmployeeServlet.java
│       │       │
│       │       ├── dao
│       │       │   └── EmployeeDAO.java
│       │       │
│       │       └── model
│       │           └── Employee.java
│       │
│       ├── resources
│       │   ├── database.sql
│       │   └── db.properties.example
│       │
│       └── webapp
│           ├── WEB-INF
│           │   └── web.xml
│           ├── add-employee.jsp
│           ├── edit-employee.jsp
│           ├── employee-list.jsp
│           ├── home.jsp
│           └── style.css
│
└── README.md
🔐 Security Note
Database credentials are stored locally in db.properties and are not committed to the repository.
The repository contains db.properties.example as a template so that other developers can configure their own database credentials.
👩‍💻 Author
Shrishti Kumari
B.Tech Graduate | Java Full Stack Developer
GitHub: https://github.com/ShrishtiKumarii⁠�
LinkedIn: https://linkedin.com/in/shrishti-kumari-dev�
⭐ Thank you for checking out this project!
