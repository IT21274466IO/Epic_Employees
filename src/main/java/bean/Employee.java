/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bean;

import java.util.Date;

/**
 *
 * @author imantha_o
 */
public class Employee {

    private int employeeCode;
    private String firstName;
    private String lastName;
    private String address;
    private String nic;
    private String mobileNo;
    private String gender;
    private String email;
    private String designation;
    private String profileImage;
    private Date dob;
    private String status;
    private String password;

    // Constructors
    public Employee() {
    }

    public Employee(String firstName, String lastName, String address, String nic, String mobileNo, String gender,
            String email, String designation, String profileImage, Date dob, String status, String password) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.address = address;
        this.nic = nic;
        this.mobileNo = mobileNo;
        this.gender = gender;
        this.email = email;
        this.designation = designation;
        this.profileImage = profileImage;
        this.dob = dob;
        this.status = status;
        this.password = password;
    }

    // Getters and setters
    public int getEmployeeCode() {
        return employeeCode;
    }

    public void setEmployeeCode(int employeeCode) {
        this.employeeCode = employeeCode;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }

    public String getMobileNo() {
        return mobileNo;
    }

    public void setMobileNo(String mobileNo) {
        this.mobileNo = mobileNo;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getProfileImage() {
        return profileImage;
    }

    public void setProfileImage(String profileImage) {
        this.profileImage = profileImage;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
