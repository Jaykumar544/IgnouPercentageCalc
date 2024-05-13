<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Percentage Calculator</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        background-color: #f5f5f5;
    }
    .container {
        max-width: 600px;
        margin: 50px auto;
        padding: 20px;
        border-radius: 10px;
        background-color: #fff;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    }
    h1 {
        text-align: center;
        color: #333;
        margin-bottom: 20px;
    }
    h2 {
        text-align: center;
        color: #007bff;
        margin-bottom: 30px;
    }
    form {
        margin-top: 20px;
    }
    .form-group {
        margin-bottom: 20px;
    }
    label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
        color: #333;
    }
    input[type="number"], select {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    input[type="submit"] {
        width: 100%;
        padding: 10px;
        border: none;
        border-radius: 5px;
        background-color: #007bff;
        color: #fff;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #0056b3;
    }

    /* Responsive CSS */
    @media screen and (max-width: 600px) {
        .container {
            width: 90%;
            margin: 20px auto;
        }
    }
</style>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        var form = document.getElementById("percentageForm");
        form.addEventListener("submit", function(event) {
            var enrollmentNo = document.getElementById("enrollmentNo").value;
            var course = document.getElementById("course").value;

            if (enrollmentNo.trim() === "" || course === "") {
                alert("Please fill out all the fields");
                event.preventDefault(); // Prevent the form from submitting
            }
        });
    });

</script>

</head>
<body>

<div class="container">
    <h1>INDIRA GANDHI NATIONAL OPEN UNIVERSITY</h1>
    <h2>Percentage Calculator</h2>

    <br> <h2 style="color:red">${errorMsg}</h2>
    <form id="percentageForm" action="/gradeCard" method="post">
        <div class="form-group">
            <label for="enrollmentNo">Enrollment No:</label>
            <input type="number" id="enrollmentNo" name="enrollNo" required>
        </div>
        <div class="form-group">
            <label for="course">Course:</label>
            <select id="course" name="course">
                <option value="">Select Course</option>
                <option value="BCA">BCA</option>

            </select>
        </div>
        <input type="submit" id="submitButton" value="Calculate">
    </form>
</div>

</body>
</html>
