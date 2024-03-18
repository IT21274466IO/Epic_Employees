<%-- 
    Document   : login
    Created on : Mar 16, 2024, 8:56:10 PM
    Author     : imant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <title>Login Page</title>

        <style>
            .gradient-custom-2 {
                background-image: url("https://www.epictechnology.lk/wp-content/uploads/2022/02/Website-Banner-4.0-Mobile.jpg");
                background-size: cover;
                background-repeat: no-repeat;
                /*             fallback for old browsers 
                            background: #fccb90;
                
                             Chrome 10-25, Safari 5.1-6 
                            background: -webkit-linear-gradient(to right, #ee7724, #d8363a, #dd3675, #b44593);
                
                             W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ 
                            background: linear-gradient(to right, #ee7724, #d8363a, #dd3675, #b44593);*/
            }

            .epic-title-style-1 {
                font-family: 'antonio';
                font-weight: 900;
                text-transform: uppercase;
                color: #0666a0;
            }

            .button-29 {
                align-items: center;
                appearance: none;
                background-image: radial-gradient(100% 100% at 100% 0, #2b6eea 0, #030c57 100%);
                border: 0;
                border-radius: 6px;
                box-shadow: rgba(45, 35, 66, .4) 0 2px 4px,rgba(45, 35, 66, .3) 0 7px 13px -3px,rgba(58, 65, 111, .5) 0 -3px 0 inset;
                box-sizing: border-box;
                color: #fff;
                cursor: pointer;
                display: inline-flex;
                font-family: "antonio";
                height: 48px;
                justify-content: center;
                line-height: 1;
                list-style: none;
                overflow: hidden;
                padding-left: 16px;
                padding-right: 16px;
                position: relative;
                text-align: left;
                text-decoration: none;
                transition: box-shadow .15s,transform .15s;
                user-select: none;
                -webkit-user-select: none;
                touch-action: manipulation;
                white-space: nowrap;
                will-change: box-shadow,transform;
                font-size: 18px;
            }

            .button-29:focus {
                box-shadow: #3c4fe0 0 0 0 1.5px inset, rgba(45, 35, 66, .4) 0 2px 4px, rgba(45, 35, 66, .3) 0 7px 13px -3px, #3c4fe0 0 -3px 0 inset;
            }

            .button-29:hover {
                box-shadow: rgba(45, 35, 66, .4) 0 4px 8px, rgba(45, 35, 66, .3) 0 7px 13px -3px, #3c4fe0 0 -3px 0 inset;
                transform: translateY(-2px);
            }

            .button-29:active {
                box-shadow: #3c4fe0 0 3px 7px inset;
                transform: translateY(2px);
            }
        </style>


    </head>
    <body>

        <section class="h-100 gradient-form" style="background-color: #eee;">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-xl-10">
                        <div class="card rounded-3 text-black">
                            <div class="row g-0">
                                <div class="col-lg-6">
                                    <div class="card-body p-md-5 mx-md-4">

                                        <div class="text-center">
                                            <img src="https://www.epictechnology.lk/wp-content/uploads/2019/03/epic-lanka-logo.png"
                                                 style="width: 185px;" alt="logo">
                                            <h4 class="mt-3 mb-5 epic-title-style-1">Welcome to EPIC!</h4>
                                        </div>

                                        <form style="width: 23rem;" class="needs-validation" novalidate>

                                            <h3 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Log in</h3>

                                            <div class="form-outline mb-4">
                                                <input type="email" id="form2Example18" class="form-control form-control-lg" required/>
                                                <label class="form-label" for="form2Example18">Email address</label>
                                                <div class="invalid-feedback">Please enter a valid email address.</div>
                                            </div>

                                            <div class="form-outline mb-4">
                                                <input type="password" id="form2Example28" class="form-control form-control-lg" required/>
                                                <label class="form-label" for="form2Example28">Password</label>
                                                <div class="invalid-feedback">Please enter your password.</div>
                                            </div>

                                            <div class="pt-1 mb-4">
                                                <button class="button-29" role="button">Login</button>
                                            </div>

                                            <p class="small mb-5 pb-lg-2"><a class="text-muted" href="#!">Forgot password?</a></p>
                                            <p>Don't have an account? <a href="registration.jsp" class="link-info">Register here</a></p>
                                            <p>Don't have an account? <a href="dashboard.jsp" class="link-info">Register here</a></p>

                                        </form>

                                    </div>
                                </div>
                                <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
                                    <div class="text-white px-3 py-4 p-md-5 mx-md-4 mt-5">
                                        <h4 class="mb-4">We are more than just a company</h4>
                                        <p class="small mb-0">In 1998, we rolled out a vision with less than 10 employees to unleash the true potential of the Sri Lankan ICT industry and build a preeminent software brand. We made it our mission to revolutionize the local banking and finance industry and digitalize state enterprises.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <script>
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.querySelectorAll('.needs-validation');

            // Loop over them and prevent submission
            Array.prototype.slice.call(forms)
                    .forEach(function (form) {
                        form.addEventListener('submit', function (event) {
                            if (!form.checkValidity()) {
                                event.preventDefault();
                                event.stopPropagation();
                            }
                            form.classList.add('was-validated');
                        }, false);
                    });
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>    
    </body>
</html>
