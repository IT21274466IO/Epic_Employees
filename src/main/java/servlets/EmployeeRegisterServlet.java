/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import bean.Employee;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import repository.EmployeeRepo;
import utill.DBConnection;

/**
 *
 * @author imantha_o
 */
@WebServlet(name = "EmployeeRegisterServlet", urlPatterns = {"/EmployeeRegisterServlet"})
public class EmployeeRegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRegistration(request, response);
        } catch (SQLException | ParseException ex) {
            Logger.getLogger(EmployeeRegisterServlet.class.getName()).log(Level.SEVERE, "Error processing registration", ex);
            response.sendRedirect("error.jsp"); // Redirect to error page in case of exception
        }
    }

    protected void processRegistration(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ParseException {
        response.setContentType("text/html;charset=UTF-8");

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String address = request.getParameter("address");
        String nic = request.getParameter("nic");
        String mobileNo = request.getParameter("mobileNo");
        String genderValue = request.getParameter("gender");
        String gender = null;

        if ("option1".equals(genderValue)) {
            gender = "Male";
        } else if ("option2".equals(genderValue)) {
            gender = "Female";
        } else {
            // Handle invalid gender value here
        }
        String email = request.getParameter("email");
        String designation = request.getParameter("designation");
        String profileImage = request.getParameter("profileImage");
        String status = request.getParameter("status");
        String password = request.getParameter("password");

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        Date dob = null;
        String dobString = request.getParameter("dob"); // Retrieve date string
        if (dobString != null && !dobString.isEmpty()) {
            try {
                dob = dateFormat.parse(dobString);
            } catch (ParseException e) {
                Logger.getLogger(EmployeeRegisterServlet.class.getName()).log(Level.WARNING, "Error parsing date of birth", e);
                throw new ServletException("Invalid date format for date of birth", e); // Rethrow exception
            }
        }

        // Set the gender field in your Employee object
        Employee userModel = new Employee(firstName, lastName, address, nic, mobileNo, gender,
                email, designation, profileImage, dob, status, password);

        Connection connection = null;
        try {
            connection = DBConnection.getConnection();
            EmployeeRepo userDatabase = new EmployeeRepo(connection);
            boolean isEmployeeSaved = userDatabase.saveEmployee(userModel);

            if (isEmployeeSaved) {
                response.sendRedirect("login.jsp");
            } else {
                response.sendRedirect("error.jsp");
            }
        } finally {
            if (connection != null) {
                try {
                    connection.close(); // Close connection in finally block
                } catch (SQLException e) {
                    Logger.getLogger(EmployeeRegisterServlet.class.getName()).log(Level.SEVERE, "Error closing connection", e);
                }
            }
        }
    }
}
