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

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRegistration(request, response);
        } catch (SQLException | ParseException ex) {
            Logger.getLogger(EmployeeRegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    protected void processRegistration(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ParseException {
        response.setContentType("text/html;charset=UTF-8");

        // Retrieve form data
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String address = request.getParameter("address");
        String nic = request.getParameter("nic");
        String mobileNo = request.getParameter("mobileNo");
        String gender = request.getParameter("gender");
        String email = request.getParameter("email");
        String designation = request.getParameter("designation");
        String profileImage = request.getParameter("profileImage");
        String dobString = request.getParameter("dob");
        String status = request.getParameter("status");
        String password = request.getParameter("password");

// Define the date format expected from the form
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd"); // Assuming the format is "yyyy-MM-dd"

        Date dob = null;
        try {
            // Parse the string representation of the date to a Date object
            dob = dateFormat.parse(dobString);
        } catch (ParseException e) {
            // Handle parsing exception
            e.printStackTrace(); // Or log the error
        }

// Create Employee object
        Employee userModel = new Employee(firstName, lastName, address, nic, mobileNo, gender,
                email, designation, profileImage, dob, status, password);

        // Obtain database connection
        Connection connection = DBConnection.getConnection();

        try {
            // Create EmployeeRepo instance with the obtained connection
            EmployeeRepo userDatabase = new EmployeeRepo(connection);

            // Save user data
            boolean isEmployeeSaved = userDatabase.saveEmployee(userModel);

            if (isEmployeeSaved) {
                // Redirect to success page
                response.sendRedirect("index.jsp");
            } else {
                // Redirect to error page
                response.sendRedirect("error.jsp");
            }
        } catch (IOException e) { // Print stack trace of the exception
            // Print stack trace of the exception
            // Redirect to error page
            response.sendRedirect("error.jsp");
        }
    }
}
