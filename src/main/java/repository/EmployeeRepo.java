/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package repository;

import bean.Employee;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author imantha_o
 */
public class EmployeeRepo {

    public Connection con;

    // Constructor to initialize the connection
    public EmployeeRepo(Connection con) {
        if (con == null) {
            throw new IllegalArgumentException("Connection cannot be null");
        }
        this.con = con;
    }

    // Method to save user data
    public boolean saveEmployee(Employee emp) {
        boolean set = false;

        try {
            // Insert user data on Registration
            String query = "INSERT INTO employees (first_name, last_name, address, nic, mobile_no, gender, email, designation, profile_image, dob, status, password) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            // Using try-with-resources to automatically close PreparedStatement
            try (PreparedStatement pt = this.con.prepareStatement(query)) {

                pt.setString(1, emp.getFirstName());
                pt.setString(2, emp.getLastName());
                pt.setString(3, emp.getAddress());
                pt.setString(4, emp.getNic());
                pt.setString(5, emp.getMobileNo());
                pt.setString(6, emp.getGender());
                pt.setString(7, emp.getEmail());
                pt.setString(8, emp.getDesignation());
                pt.setString(9, emp.getProfileImage());
                pt.setDate(10, new java.sql.Date(emp.getDob().getTime()));
                pt.setString(11, emp.getStatus());
                pt.setString(12, emp.getPassword());

                int rowsAffected = pt.executeUpdate();
                // Check if any rows were affected by the query
                if (rowsAffected > 0) {
                    set = true;
                }
            }
        } catch (SQLException e) {
            Logger.getLogger(EmployeeRepo.class.getName()).log(Level.SEVERE, "Error saving employee", e);
        }
        return set;
    }
    
    
    // Employee login
    public Employee logEmployee(String email, String pass){
        Employee user = null;
        
        try{
            String query = "SELECT * FROM employees WHERE email=? AND password=?";
            
            try (PreparedStatement pst = this.con.prepareStatement(query)) {
                pst.setString(1, email);
                pst.setString(2, pass);
                
                try (ResultSet rs = pst.executeQuery()) {
                    if(rs.next()) {
                        user = new Employee();
                        user.setEmployeeCode(rs.getInt("id"));
                        user.setEmail(rs.getString("email"));
                        user.setPassword(rs.getString("password"));
                    }
                }
            }
        } catch(SQLException e) {
            Logger.getLogger(EmployeeRepo.class.getName()).log(Level.SEVERE, "Error logging employee", e);
        }
        
        return user;
    }
    
    public boolean verifyPassword(int userId, String password) throws SQLException {
        // Implement logic to verify password against the database
        // Here's an example (replace with your actual implementation):
        String query = "SELECT * FROM employees WHERE id=? and password=?";
        try (PreparedStatement pst = this.con.prepareStatement(query)) {
          pst.setInt(1, userId);
          pst.setString(2, password);

          ResultSet rs = pst.executeQuery();
          return rs.next(); // Return true if a user is found with the matching ID and password
        }
  }

    // Method to update user data
    public boolean updateEmployee(Employee empU) {
        boolean updated = false;

        try {
            // Update user data
            String query = "UPDATE employees SET first_name=?, last_name=?, address=?, nic=?, mobile_no=?, gender=?, email=?, designation=?, profile_image=?, dob=?, status=?, password=? WHERE employee_code=?";

            // Using try-with-resources to automatically close PreparedStatement
            try (PreparedStatement pt = this.con.prepareStatement(query)) {
                pt.setString(1, empU.getFirstName());
                pt.setString(2, empU.getLastName());
                pt.setString(3, empU.getAddress());
                pt.setString(4, empU.getNic());
                pt.setString(5, empU.getMobileNo());
                pt.setString(6, empU.getGender());
                pt.setString(7, empU.getEmail());
                pt.setString(8, empU.getDesignation());
                pt.setString(9, empU.getProfileImage());
                pt.setDate(10, new java.sql.Date(empU.getDob().getTime()));
                pt.setString(11, empU.getStatus());
                pt.setString(12, empU.getPassword());
                pt.setInt(13, empU.getEmployeeCode());

                int rowsAffected = pt.executeUpdate();
                // Check if any rows were affected by the query
                if (rowsAffected > 0) {
                    updated = true;
                }
            }
        } catch (SQLException e) {
            Logger.getLogger(EmployeeRepo.class.getName()).log(Level.SEVERE, "Error updating employee", e);
        }
        return updated;
    }

    // Method to delete user data
    public boolean deleteEmployee(int userId) {
        boolean deleted = false;

        try {
            // Delete user data
            String query = "DELETE FROM employees WHERE id=?";

            // Using try-with-resources to automatically close PreparedStatement
            try (PreparedStatement pt = this.con.prepareStatement(query)) {
                pt.setInt(1, userId);

                int rowsAffected = pt.executeUpdate();
                // Check if any rows were affected by the query
                if (rowsAffected > 0) {
                    deleted = true;
                }
            }
        } catch (SQLException e) {
            Logger.getLogger(EmployeeRepo.class.getName()).log(Level.SEVERE, "Error deleting employee", e);
        }

        return deleted;
    }
}
