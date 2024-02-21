<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Admissions</title>
    <link type="text/css" rel="stylesheet" href="css/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <style>
        @font-face {
            font-family: 'Comfortaa';
            src: url('css/fonts/Comfortaa-Regular.ttf') format('ttf');
            /* Add additional font formats as needed */
        }

        /* Add your custom CSS styles here */
        body {
            font-family: 'Comfortaa', sans-serif;
            /* Set background image */
            background-image: url('css/images/BG.jpg');
            /* Set background size to cover the entire body */
            background-size: cover;
            /* Set background position to center */
            background-position: center;
            /* Set background attachment to fixed to keep the image fixed while scrolling */
            background-attachment: fixed;
        }
    </style>
</head>
<body>
    <div class="d-flex flex-column py-5" style="background-color: white; margin-top: 50px; margin-left: 70px; width: 1100px; border-radius: 10px;">
        <div class="d-flex justify-content-between">
            <img  src="css/images/admin.png">
            <!-- <div>
                <a href="login.jsp" class="fw-bold btn btn-primary me-5">Login</a>
            </div> -->
            
        </div>
        
        <div class="row my-1 mx-3">
            <div class="ms-4 col-md-6 d-flex justify-content-center">
                <img style="width:480px;height:400px" src="css/images/signup.png">
            </div>
            <div class="col-md-4 d-flex flex-column justify-content-center ">
                <h3 class="fw-bold">Welcome to Admissions!</h3>
                <p>Sign Up to continue</p>
                <form class="form" id="form" method="post" action="registration" novalidate>
                    <div>
                        <% 
                        String nameMessage = (String) request.getAttribute("name_message");
                        if (nameMessage != null && !nameMessage.isEmpty()) {
                        %>
                        <input type="text" id="name" name="name" class="form-control is-invalid" placeholder ="Names" required/>
                        <span class ="error" style="color: #ff1a1a;"><%=request.getAttribute("name_message")%></span>
                        <%
                        } else {
                        %>
                        <input type="text" id="name" name="name" class="form-control" placeholder ="Names" required/>
                        <span class ="error" style="color: #ff1a1a;"></span>
                        <%
                        }
                        %>
                    </div>


                    <div>
                        <% 
                        String emailMessage = (String) request.getAttribute("email_message");
                        if (emailMessage != null && !emailMessage.isEmpty()) {
                        %>
                        <input type="email" id="email" name="email" class="form-control mt-4 is-invalid" placeholder ="Email" required/>
                        <span class ="error" style="color: #ff1a1a;"><%=request.getAttribute("email_message")%></span>
                        <%
                        } else {
                        %>
                        <input type="email" id="email" name="email" class="form-control mt-4" placeholder ="Email" required/>
                        <span class ="error" style="color: #ff1a1a;"></span>
                        <%
                        }
                        %>
                    </div>

                    <div>
                        <% 
                        String passMessage = (String) request.getAttribute("pass_message");
                        if (passMessage != null && !passMessage.isEmpty()) {
                        %>
                        <input type="password" id="password" name="password" class="form-control mt-4 is-invalid" placeholder="Password" required />
                        <span class ="error" style="color: #ff1a1a;"><%=request.getAttribute("pass_message")%></span>
                        <%
                        } else {
                        %>
                        <input type="password" id="password" name="password" class="form-control mt-4" placeholder="Password" required />
                        <span class ="error" style="color: #ff1a1a;"></span>
                        <%
                        }
                        %>
                    </div>

                    <div>
                        <% 
                        String confMessage = (String) request.getAttribute("conf_message");
                        if (confMessage != null && !confMessage.isEmpty()) {
                        %>
                        <input type="password" id="confpassword" name="confpassword" class="form-control mt-4 is-invalid" placeholder="Confirm password" required/>
                        <span class ="error" style="color: #ff1a1a;"><%=request.getAttribute("conf_message")%></span>
                        <%
                        } else {
                        %>
                        <input type="password" id="confpassword" name="confpassword" class="form-control mb-4 mt-4" placeholder="Confirm password" required/>
                        <span class ="error" style="color: #ff1a1a;"></span>
                        <%
                        }
                        %>
                    </div>
                    <div class="d-flex justify-content-center">
                        <input type="submit" class="px-4 mt-2 btn btn-primary rounded-pill" value="Sign up"/>
                    </div>
                </form>
            </div>
    
    
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.js"></script>
    
</body>
</html>