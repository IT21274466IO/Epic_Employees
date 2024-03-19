<%-- 
    Document   : register
    Created on : Mar 18, 2024, 7:47:31 PM
    Author     : imant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
        <!-- MDB -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.2.0/mdb.min.css" rel="stylesheet" />
        <title>Register Page</title>
        <style>
            .card-registration .select-input.form-control[readonly]:not([disabled]) {
                font-size: 1rem;
                line-height: 2.15;
                padding-left: .75em;
                padding-right: .75em;
            }
            .card-registration .select-arrow {
                top: 13px;
            }
            /* Additional CSS for the form */
            .form-outline input[type=text],
            .form-outline input[type=date],
            .form-outline input[type=password],
            .form-outline select,
            .form-outline input[type=file] {
                border: 1px solid #ced4da;
                border-radius: 0.25rem;
            }

            /* Adjustments for select inputs */
            .form-outline select {
                appearance: none;
                -webkit-appearance: none;
                -moz-appearance: none;
            }

            /* Styling the radio buttons */
            .form-check-input[type=radio] {
                width: 1.3rem;
                height: 1.3rem;
            }

            /* Adjustments for the radio button label */
            .form-check-label {
                margin-bottom: 0;
            }

            /* Styling for the file input label */
            .form-outline input[type=file] + .form-label {
                overflow: hidden;
                white-space: nowrap;
                text-overflow: ellipsis;
            }
            /* Placeholder animation */
            .form-outline.focused input[type=text] + .form-label,
            .form-outline.focused input[type=date] + .form-label,
            .form-outline.focused input[type=password] + .form-label,
            .form-outline.focused select + .form-label,
            .form-outline.focused input[type=file] + .form-label {
                font-size: 1rem;
                transform: translateY(-1.5rem);
                color: #113CCD;
            }
            .fullReg{
                background: #020348;
            }
        </style>
    </head>
    <body>
        <section class="h-100 fullReg">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col">
                        <div class="card card-registration my-4">
                            <div class="row g-0">
                                <div class="col-xl-6 d-none d-xl-block">
                                    <img src="https://images.pexels.com/photos/7283562/pexels-photo-7283562.jpeg?auto=compress&cs=tinysrgb&w=600"
                                         alt="Sample photo" class="img-fluid"
                                         style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
                                </div>
                                <div class="col-xl-6">
                                    <div class="card-body p-md-5 text-black">
                                        <h3 class="mb-5 text-uppercase">Employee registration form</h3>
                                        <form action="EmployeeRegisterServlet" method="post" class="needs-validation" novalidate>
                                            <div class="row">
                                                <div class="col-md-6 mb-4">
                                                    <div class="form-outline">
                                                        <input type="text" id="firstName" name="firstName" class="form-control form-control-lg" required />
                                                        <label class="form-label" for="firstName">First name</label>
                                                        <div class="invalid-feedback">First name is required.</div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 mb-4">
                                                    <div class="form-outline">
                                                        <input type="text" id="lastName" name="lastName" class="form-control form-control-lg" required/>
                                                        <label class="form-label" for="lastName">Last name</label>
                                                        <div class="invalid-feedback">Last name is required.</div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6 mb-4">
                                                    <div class="form-outline">
                                                        <input type="text" id="mobileNo" name="mobileNo" class="form-control form-control-lg" required/>
                                                        <label class="form-label" for="mobileNo">Mobile Number</label>
                                                        <div class="invalid-feedback">Mobile number is required.</div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 mb-4">
                                                    <div class="form-outline">
                                                        <input type="text" id="nic" name="nic" class="form-control form-control-lg" required/>
                                                        <label class="form-label" for="nic">NIC</label>
                                                        <div class="invalid-feedback">NIC is required.</div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-outline mb-4">
                                                <input type="text" id="address" name="address" class="form-control form-control-lg" required/>
                                                <label class="form-label" for="address">Address</label>
                                                <div class="invalid-feedback">Address is required.</div>

                                            </div>
                                            <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">
                                                <h6 class="mb-0 me-4">Gender: </h6>
                                                <div class="form-check form-check-inline mb-0 me-4">
                                                    <input class="form-check-input" type="radio" id="female" name="gender"
                                                           value="option1" required />
                                                    <label class="form-check-label" for="female">Female</label>
                                                </div>
                                                <div class="form-check form-check-inline mb-0 me-4">
                                                    <input class="form-check-input" type="radio" id="male" name="gender"
                                                           value="option2" required />
                                                    <label class="form-check-label" for="male">Male</label>
                                                </div>
                                                <div class="invalid-feedback invalid-gender" style="display: none; margin-top: 40px;">Please select the Gender</div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6 mb-4">
                                                    <label for="designation" class="form-label">Designation: </label>
                                                    <select class="select form-control form-control-lg" id="designation" name="designation" required>
                                                        <option value="">Select</option>
                                                        <option value="Intern">Intern</option>
                                                        <option value="ASE">ASE</option>
                                                        <option value="SE">SE</option>
                                                        <option value="SSE">SSE</option>
                                                        <option value="ATL">ATL</option>
                                                        <option value="TL">TL</option>
                                                    </select>
                                                    <div class="invalid-feedback invalid-designation" style="display: none;">Designation is required.</div>
                                                </div>
                                                <div class="col-md-6 mb-4">
                                                    <label for="status" class="form-label">Status: </label>
                                                    <select class="select form-control form-control-lg" id="status" name="status" required>
                                                        <option value="">Select</option>
                                                        <option value="Active">Active</option>
                                                        <option value="Inactive">Inactive</option>
                                                    </select>
                                                    <div class="invalid-feedback invalid-status" style="display: none;">Status is required.</div>
                                                </div>
                                            </div>

                                            <div class="form-outline mb-4">
                                                <label for="dob" class="form-label">Date of Birth</label>
                                                <input type="date" id="dob" name="dob" class="form-control form-control-lg" required/>
                                                <div class="invalid-feedback">Date of Birth is required.</div>
                                            </div>
                                            <div class="form-outline mb-4">
                                                <input type="text" id="email" name="email" class="form-control form-control-lg" required/>
                                                <label class="form-label" for="email">Email ID</label>
                                                <div class="invalid-feedback">Please enter a valid email address.</div>
                                            </div>
                                            <div class="form-outline mb-4">
                                                <input type="password" id="password" class="form-control form-control-lg" required/>
                                                <label class="form-label" for="password">Password</label>
                                                <div class="invalid-feedback">Please enter your password.</div>
                                            </div>
                                            <div class="form-outline mb-4">
                                                <label class="form-label" for="profileImage">Upload your Profile Picture</label>
                                                <input type="file" class="form-control form-control-lg" id="profileImage" name="profileImage"/>
                                            </div>
                                            <div class="d-flex justify-content-end pt-3">
                                                <button type="button" class="btn btn-light btn-lg" onclick="resetForm()">Reset all</button>
                                                <button type="submit" class="btn btn-warning btn-lg ms-2">Submit form</button>
                                            </div>
                                        </form>       
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <script>
            // Function to handle input focus
            function handleInputFocus(input) {
                input.parentElement.classList.add('focused');
            }

            // Function to handle input blur
            function handleInputBlur(input) {
                if (input.value === '') {
                    input.parentElement.classList.remove('focused');
                }
            }

            // Reset form function
            function resetForm() {
                document.getElementById("firstName").value = "";
                document.getElementById("lastName").value = "";
                document.getElementById("mobileNo").value = "";
                document.getElementById("nic").value = "";
                document.getElementById("address").value = "";
                document.getElementById("dob").value = "";
                // Clear file input
                var fileInput = document.getElementById('profileImage');
                fileInput.value = '';
                // Remove 'focused' class from all input fields
                var inputs = document.querySelectorAll('.form-outline input');
                inputs.forEach(function (input) {
                    input.parentElement.classList.remove('focused');
                });
            }

            // Add event listeners to input fields for focus and blur
            var inputs = document.querySelectorAll('.form-outline input');
            inputs.forEach(function (input) {
                input.addEventListener('focus', function () {
                    handleInputFocus(this);
                });
                input.addEventListener('blur', function () {
                    handleInputBlur(this);
                });
            });

            var forms = document.querySelectorAll('.needs-validation');

            // Loop over them and prevent submission
            Array.prototype.slice.call(forms)
                    .forEach(function (form) {
                        form.addEventListener('submit', function (event) {
                            var genderInputs = document.querySelectorAll('input[name="gender"]');
                            var genderSelected = false;
                            genderInputs.forEach(function (input) {
                                if (input.checked) {
                                    genderSelected = true;
                                }
                            });

                            var designation = document.getElementById('designation').value;
                            var status = document.getElementById('status').value;

                            if (!form.checkValidity() || !genderSelected || designation === '' || status === '') {
                                event.preventDefault();
                                event.stopPropagation();

                                if (!genderSelected) {
                                    document.querySelector('.invalid-gender').style.display = 'block';
                                } else {
                                    document.querySelector('.invalid-gender').style.display = 'none';
                                }

                                if (designation === '') {
                                    document.querySelector('.invalid-designation').style.display = 'block';
                                } else {
                                    document.querySelector('.invalid-designation').style.display = 'none';
                                }

                                if (status === '') {
                                    document.querySelector('.invalid-status').style.display = 'block';
                                } else {
                                    document.querySelector('.invalid-status').style.display = 'none';
                                }
                            }
                            form.classList.add('was-validated');
                        }, false);
                    });
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>  
    </body>
</html>

