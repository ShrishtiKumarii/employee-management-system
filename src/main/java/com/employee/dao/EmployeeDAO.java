package com.employee.dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.employee.model.Employee;

public class EmployeeDAO {

   
	private static Properties properties = new Properties();

	static {
	    try (InputStream input = EmployeeDAO.class
	            .getClassLoader()
	            .getResourceAsStream("db.properties")) {

	        if (input == null) {
	            throw new RuntimeException("db.properties file not found");
	        }

	        properties.load(input);

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
	
	
	public Connection getConnection() throws SQLException {

	    try {
	        Class.forName("org.postgresql.Driver");
	    } catch (ClassNotFoundException e) {
	        e.printStackTrace();
	    }

	    return DriverManager.getConnection(
	            properties.getProperty("db.url"),
	            properties.getProperty("db.username"),
	            properties.getProperty("db.password")
	    );
	}
    public boolean addEmployee(Employee employee) {

        String sql = "INSERT INTO employees " +
                     "(name, email, phone, department, designation, joining_date, salary) " +
                     "VALUES (?, ?, ?, ?, ?, ?, ?)";

        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, employee.getName());
            ps.setString(2, employee.getEmail());
            ps.setString(3, employee.getPhone());
            ps.setString(4, employee.getDepartment());
            ps.setString(5, employee.getDesignation());
            ps.setDate(6, employee.getJoiningDate());
            ps.setDouble(7, employee.getSalary());

            int rows = ps.executeUpdate();

            return rows > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public boolean updateEmployee(Employee employee) {

        String sql = "UPDATE employees SET name=?, email=?, phone=?, "
                   + "department=?, designation=?, joining_date=?, salary=? "
                   + "WHERE employee_id=?";

        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, employee.getName());
            ps.setString(2, employee.getEmail());
            ps.setString(3, employee.getPhone());
            ps.setString(4, employee.getDepartment());
            ps.setString(5, employee.getDesignation());
            ps.setDate(6, employee.getJoiningDate());
            ps.setDouble(7, employee.getSalary());
            ps.setInt(8, employee.getEmployeeId());

            int rows = ps.executeUpdate();

            return rows > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    
    
    public Employee getEmployeeById(int employeeId) {

        String sql = "SELECT * FROM employees WHERE employee_id=?";

        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, employeeId);

            try (ResultSet rs = ps.executeQuery()) {

                if (rs.next()) {

                    Employee employee = new Employee();

                    employee.setEmployeeId(rs.getInt("employee_id"));
                    employee.setName(rs.getString("name"));
                    employee.setEmail(rs.getString("email"));
                    employee.setPhone(rs.getString("phone"));
                    employee.setDepartment(rs.getString("department"));
                    employee.setDesignation(rs.getString("designation"));
                    employee.setJoiningDate(rs.getDate("joining_date"));
                    employee.setSalary(rs.getDouble("salary"));

                    return employee;
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }
    
    
    public boolean deleteEmployee(int employeeId) {

        String sql = "DELETE FROM employees WHERE employee_id=?";

        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, employeeId);

            int rows = ps.executeUpdate();

            return rows > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public List<Employee> searchEmployees(String keyword) {

        List<Employee> employees = new ArrayList<>();

        String sql = "SELECT * FROM employees "
                   + "WHERE name ILIKE ? OR department ILIKE ? "
                   + "OR designation ILIKE ?";

        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            String searchKeyword = "%" + keyword + "%";

            ps.setString(1, searchKeyword);
            ps.setString(2, searchKeyword);
            ps.setString(3, searchKeyword);

            try (ResultSet rs = ps.executeQuery()) {

                while (rs.next()) {

                    Employee employee = new Employee();

                    employee.setEmployeeId(rs.getInt("employee_id"));
                    employee.setName(rs.getString("name"));
                    employee.setEmail(rs.getString("email"));
                    employee.setPhone(rs.getString("phone"));
                    employee.setDepartment(rs.getString("department"));
                    employee.setDesignation(rs.getString("designation"));
                    employee.setJoiningDate(rs.getDate("joining_date"));
                    employee.setSalary(rs.getDouble("salary"));

                    employees.add(employee);
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return employees;
    }
    
    public List<Employee> getAllEmployees() {

        List<Employee> employees = new ArrayList<>();

        String sql = "SELECT * FROM employees";

        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {

                Employee employee = new Employee();

                employee.setEmployeeId(rs.getInt("employee_id"));
                employee.setName(rs.getString("name"));
                employee.setEmail(rs.getString("email"));
                employee.setPhone(rs.getString("phone"));
                employee.setDepartment(rs.getString("department"));
                employee.setDesignation(rs.getString("designation"));
                employee.setJoiningDate(rs.getDate("joining_date"));
                employee.setSalary(rs.getDouble("salary"));

                employees.add(employee);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return employees;
    }
    
    
    public static void main(String[] args) {
		EmployeeDAO dao = new EmployeeDAO();
		try {
			Connection con = dao.getConnection();
			System.out.println("Database connected sucessfully");
			con.close();
			
		}catch(SQLException e) {
			e.printStackTrace();
			
		}
		
	}
}
