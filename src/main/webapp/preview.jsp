<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Human Resource Application</title>
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
                <form><button type="submit" name="logout" value="logout"><i class="bi bi-box-arrow-right" style="color: #1e7fcf">Logout</i></button></form>
            </div> -->
        </div>
        
        <div class="d-flex flex-column justify-content-center align-items-center mb-5">
            <h2 class="fw-bold fs-3" style="color:#1e7fcf">Admission Form</h2>
        </div>
        <div class="d-flex flex-column justify-content-center align-items-center mb-5">
        <p>Your form was submitted successfully! To track the status of your application, please refer to the Student Portal.</p>
        <p class="fw-bold">Admission Office</p>
        </div>
    </div>

</body>
