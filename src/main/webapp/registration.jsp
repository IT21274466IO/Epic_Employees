<%-- 
    Document   : registration
    Created on : Mar 18, 2024, 10:51:09 AM
    Author     : imantha_o
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <style>
            body {
                background-color: #eee;
                color: #fff;
            }
            .trre {
                background-image: url("https://www.epictechnology.lk/wp-content/uploads/2019/03/fintech-mobile-software-company-epic-lanka-our-corporate-management-image.jpg");
                background-size: cover;
                background-repeat: no-repeat;
            }
            .form-container {
                max-width: 1000px; /* Adjust this value to increase or decrease the width of the form */
                margin: auto;
                padding: 20px;
                background-color: rgba(255, 255, 255, 0.3); /* Transparent white */
                backdrop-filter: blur(10px); /* Apply blur effect */
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                background-image: url("https://www.epictechnology.lk/wp-content/uploads/2022/02/Website-Banner-4.0-Mobile.jpg");
                background-size: cover;
                background-repeat: no-repeat;
            }
            .form-container h4 {
                text-align: center;
                margin-bottom: 20px;
            }
            .form-control {
                background-color: rgba(255, 255, 255, 0.5); /* Transparent white */
                border: none;
                border-radius: 5px;
                padding: 10px;
                color: #fff;
            }
            .form-control:focus {
                background-color: rgba(255, 255, 255, 0.7); /* Lighter transparent white on focus */
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="row p-5">
                <div class="col-md-12">
                    <div class="form-container">
                        <!--                <img src="https://www.epictechnology.lk/wp-content/uploads/2019/03/epic-lanka-logo.png" alt="logo" class="mx-auto d-block">-->
                        <h4>Welcome to EPIC!</h4>
                        <form action="/submit_employee_info" method="POST" enctype="multipart/form-data">
                            <div class="row mb-3">
                                <div class="col">
                                    <label for="firstname" class="form-label">First Name</label>
                                    <input type="text" id="firstname" name="firstName" class="form-control" />
                                </div>
                                <div class="col">
                                    <label for="lastname" class="form-label">Last Name</label>
                                    <input type="text" id="lastname" name="lastLame" class="form-control" />
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="address" class="form-label">Address</label>
                                <textarea id="address" name="address" class="form-control"></textarea>
                            </div>
                            <div class="row mb-3">
                                <div class="col">
                                    <label for="nic" class="form-label">NIC</label>
                                    <input type="text" id="nic" name="nic" class="form-control" />
                                </div>
                                <div class="col">
                                    <label for="mobileNo" class="form-label">Mobile Number</label>
                                    <input type="text" id="mobileNo" name="mobileNo" class="form-control" />
                                </div>
                                <div class="col">
                                    <label for="gender" class="form-label">Gender</label>
                                    <div>
                                        <input type="radio" id="male" name="gender" value="Male" class="form-check-input" />
                                        <label for="male" class="form-check-label">Male</label>
                                        <input type="radio" id="female" name="gender" value="Female" class="form-check-input" />
                                        <label for="female" class="form-check-label">Female</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col">
                                    <label for="email" class="form-label">Email address</label>
                                    <input type="email" id="email" name="email" class="form-control" />
                                </div>
                                <div class="col">
                                    <label for="designation" class="form-label">Designation</label>
                                    <select id="designation" name="designation" class="form-select">
                                        <option value="Intern">Intern</option>
                                        <option value="ASE">ASE</option>
                                        <option value="SE">SE</option>
                                        <option value="SSE">SSE</option>
                                        <option value="ATL">ATL</option>
                                        <option value="TL">TL</option>
                                    </select>
                                </div>
                            </div>
                            
                            <div class="mb-3">
                                <label for="status" class="form-label">Status</label>
                                <select id="status" name="status" class="form-select">
                                    <option value="Active">Active</option>
                                    <option value="Inactive">Inactive</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label">Password</label>
                                <input type="password" id="password" name="password" class="form-control" />
                            </div>
                            <div class="row mb-3">
                                <div class="col">
                                    <div>
                                        <div class="d-flex justify-content-center mb-4">
                                            <img id="selectedAvatar" src="https://mdbootstrap.com/img/Photos/Others/placeholder-avatar.jpg"
                                                 class="rounded-circle" style="width: 100px; height: 100px; object-fit: cover;" alt="example placeholder" />
                                        </div>
                                        <div class="d-flex justify-content-center">
                                            <div class="btn btn-primary btn-rounded">
                                                <label class="form-label text-white m-1" for="customFile2">Upload Image</label>
                                                <input type="file" class="form-control d-none" id="customFile2" name="profileImage" onchange="displaySelectedImage(event, 'selectedAvatar')" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <label for="dob" class="form-label">Date of Birth</label>
                                    <input type="date" id="dob" name="dob" class="form-control" />
                                </div>
                            </div>
                            <div class="mb-3 text-center">
                                <button type="submit" class="btn btn-danger" data-mdb-ripple-init>Register</button>
                            </div>
                            <p class="text-center">Already have an account? <a href="login.jsp">Login here</a></p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html> 

