<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Human Resource Application</title>
    <link type="text/css" rel="stylesheet" href="css/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
	<script defer type="script" src="css/js/validation.js"></script>
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
                <form><button type="submit" name="logout" value="logout"><i class="bi bi-box-arrow-right" style="color: #1e7fcf">Logout</i></button></form>
            </div> -->
        </div>
        
        <div class="d-flex flex-column justify-content-center align-items-center mb-5">
            <h2 class="fw-bold fs-2" style="color:#1e7fcf">Admission Form</h2>
        </div>
        <div class="d-flex justify-content-center mb-5">
        <form class="row g-3 w-50 mx-5" novalidate id="form" style="height:450px; overflow: auto" method="post" action="admission">
            <div class="col-md-12"><h5 style="font-weight: bold;">PERSONAL INFORMATION</h5></div>
            <div class="col-md-6">
                <label class="form-label">First Name</label>
                <input type="text" class="form-control" id="firstname" name="firstname" required>
                <span class ="error" style="color: #ff1a1a;"></span>
            </div>
            <div class="col-md-6">
                <label class="form-label">Last Name</label>
                <input type="text" class="form-control" id="lastname" name="lastname" required>
                <span class ="error" style="color: #ff1a1a;"></span> 
            </div>
            <div class="col-md-6">
                <label class="form-label">Date of Birth</label>
                <input type="date" class="form-control" id="dob" name="dob" required > 
            </div>
            <div class="col-md-6">
                <label class="form-label">Gender</label>
                <select class="form-select" id="gender" name="gender"  required>
                    <option>Female</option>
                    <option>Male</option>
                    <option>Prefer Not To Say</option>
                </select>
            </div>
            <div class="col-md-6">
                <label class="form-label">Father's Name</label>
                <input type="text" class="form-control" name="fathname" id="fathname">
                <span class ="error" style="color: #ff1a1a;"></span>
            </div>
            <div class="col-md-6">
                <label class="form-label">Mother's Name</label>
                <input type="text" class="form-control" name="mothname" id="mothname"  >
                <span class ="error" style="color: #ff1a1a;"></span> 
            </div>
            <div class="col-md-6">
                <label class="form-label">Country of Birth</label>
                <input type="text" class="form-control" name="country" id="country">
                <span class ="error" style="color: #ff1a1a;"></span>
            </div>
            <div class="col-md-6">
                <label class="form-label">City</label>
                <input type="text" class="form-control" name="city" id="city"  >
                <span class ="error" style="color: #ff1a1a;"></span> 
            </div>
            <div class="col-md-6">
                <label class="form-label">Country of Residence</label>
                <input type="text" class="form-control" name="residence" id="residence">
                <span class ="error" style="color: #ff1a1a;"></span>
            </div>
            <div class="col-md-6">
                <label class="form-label">City</label>
                <input type="text" class="form-control" name="resicity" id="resicity"  >
                <span class ="error" style="color: #ff1a1a;"></span> 
            </div>
            <div class="col-md-6">
                <label class="form-label">Email</label>
                <input type="text" class="form-control" name="email" id="email"  > 
                <span class="error" style="color: #ff1a1a;"></span>
            </div>
            <div class="col-md-6">
                <label class="form-label">Phone Number</label>
                <input type="text" class="form-control" name="phone" id="phone" placeholder=""  > 
                <span class ="error" style="color: #ff1a1a;"></span>
            </div>
            <div class="col-md-12">
                <label class="form-label">Address</label>
                <input type="text" class="form-control" name="address" id="address" placeholder="Ex. KG 98 st or KG 10 AVE"  > 
                <span class ="error" style="color: #ff1a1a;"></span>
            </div>

            <div class="col-md-12"><h5 style="font-weight: bold;">ACADEMIC BACKGROUND</h5></div>
            <div class="col-md-12">
                <label class="form-label">Degree/Certificate</label>
                <select class="form-select" id="degree" name="degree" required >
                    <option>A1</option>
                    <option>A2</option>
                    <option>High School Diploma</option>
                    <option>Primary School Diploma</option>
                </select>
            </div>
            <div class="col-md-6">
                <label class="form-label">Faculty</label>
                <input type="text" class="form-control" name="faculty" value="IT" disabled> 
            </div>
            <div class="col-md-6">
                <label class="form-label">Department</label>
                <select class="form-select" id="dept" name="dept" value="" required >
                    <option>Information Management</option>
                    <option>Software Engineering</option>
                    <option>Network</option>
                    
                </select>
                <span class ="error" style="color: #ff1a1a;"></span>
            </div>

            <div class="col-md-12"><h5 style="font-weight: bold;">UPLOADS</h5></div>
            
            <div class="col-md-6">
                <label class="form-label">PassPort Picture</label>
                <input type="file" class="form-control" name="picture">  
            </div>
            
            <div class="col-md-6">
                <label class="form-label">Certificates/Diploma</label>
                <input type="file" class="form-control" name="certs"> 
            </div>
            <% 
            Boolean errors = (Boolean) request.getAttribute("hasErrors");
            if (errors != null && errors){
            %>
            <div class="col-md-12">
                <span class ="error" style="color: #ff1a1a;">Please make sure your files have the right extensions. Pictures should be jpg or png and Diploma pdf file.</span>
            </div>
            <%
            }
            %>
            
            <input type="submit" name="submit" value="Submit" class="btn btn-primary col-md-12 mt-4">
        </form>
        </div>
    </div>
    
</body>
