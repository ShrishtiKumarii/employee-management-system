package com.employee.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.employee.dao.EmployeeDAO;
import com.employee.model.Employee;

@WebServlet("/addEmployee")
public class AddEmployeeServlet extends HttpServlet {

    private EmployeeDAO employeeDAO;

    @Override
    public void init() {
        employeeDAO = new EmployeeDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String department = request.getParameter("department");
        String designation = request.getParameter("designation");

        Date joiningDate =
                Date.valueOf(request.getParameter("joiningDate"));

        double salary =
                Double.parseDouble(request.getParameter("salary"));

        Employee employee = new Employee(
                0,
                name,
                email,
                phone,
                department,
                designation,
                joiningDate,
                salary
        );

        boolean result = employeeDAO.addEmployee(employee);

        if (result) {
            response.sendRedirect("add-employee.jsp");
        } else {
            response.getWriter().println("Employee could not be added.");
        }
    }
}