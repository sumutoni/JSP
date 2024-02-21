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
        </div>
        <div class="row my-1 mx-3">
            <div class="ms-4 col-md-6 d-flex justify-content-center">
                <img style="width:480px;height:400px" src="css/images/signup.png">
            </div>
            <div class="col-md-4 d-flex flex-column justify-content-center ">
                <h3 class="fw-bold">Welcome Back!</h3>
                <p>Login to access admission form</p>
                <form class="form" id="form" method="post" action="login" novalidate>
                    <div>
                        <% 
                        String emailMessage = (String) request.getAttribute("email_message");
                        String emailValue = (String) request.getAttribute("email");
                        if (emailMessage != null && !emailMessage.isEmpty()) {
                        %>
                        <input type="email" id="email" name="email" class="form-control is-invalid" placeholder ="Email" required/>
                        <span class ="error" style="color: #ff1a1a;"><%=request.getAttribute("email_message")%></span>
                        <%
                        } else {
                            if (emailValue != null) {
                        %>
                        <input type="email" id="email" name="email" value="<%= emailValue %>" class="form-control" placeholder ="Email" required/>
                        <span class ="error" style="color: #ff1a1a;"></span>
                        <%
                        } else {
                        %>
                        <input type="email" id="email" name="email" class="form-control" placeholder ="Email" required/>
                        <span class ="error" style="color: #ff1a1a;"></span>
                        <%
                            }
                        }
                        %>
                    </div>
                    <div>
                        <% 
                        String passMessage = (String) request.getAttribute("pass_message");
                        String passValue = (String) request.getAttribute("password");
                        if (passMessage != null && !passMessage.isEmpty()) {
                        %>
                        <input type="password" id="password" name="password" class="form-control mt-4 is-invalid" placeholder="Password" required />
                        <span class ="error" style="color: #ff1a1a;"><%=request.getAttribute("pass_message")%></span>
                        <%
                        } else {
                            if (passValue != null ) {
                        %>
                        <input type="password" id="password" name="password" value="<%= passValue%>" class="form-control mt-4 mb-4" placeholder="Password" required />
                        <span class ="error" style="color: #ff1a1a;"></span>
                        <%
                        } else {
                        %>
                        <input type="password" id="password" name="password" class="form-control mt-4 mb-4" placeholder="Password" required />
                        <span class ="error" style="color: #ff1a1a;"></span>
                        <%
                            }
                        }
                        %>
                    </div>
                    <div class="d-flex justify-content-center">
                        <input type="submit" class="px-4 mt-2 btn btn-primary rounded-pill" value="Login"/>
                    </div>
                    <div class="d-flex justify-content-center mt-3">
                        <a href="index.jsp" class="link-primary">Sign Up, if you haven't</a>
                    </div>
                </form>
            </div>
    
    
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.js"></script>
</body>
</html>