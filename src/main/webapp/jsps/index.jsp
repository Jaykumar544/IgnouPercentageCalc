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
    .header {
        padding: 20px;
        text-align: center;
        border-bottom: 5px solid #0056b3;
        display: flex;
        flex-direction: column;
        align-items: center;
        background-color: #f5f5f5; /* Match the container's background color */
    }
    .header img {
        width: 70px;
        height: 70px;
        margin-right: 10px;
        filter: brightness(1.2);
    }
    .header h1 {
        font-size: 2.5em;
        margin: 0;
        color: blue; /* Keep the text color blue */
    }
    .header a {
        text-decoration: none;
        color: blue; /* Color blue for the link */
    }
    .header i {
        margin-top: 10px;
        font-style: italic;
        color: darkred; /* Color dark red for the i tag */
    }
    .container {
        max-width: 600px;
        margin: 20px auto;
        padding: 20px;
        border-radius: 10px;
        background-color: #fff;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    }
    h2 {
        text-align: center;
        color: purple;
        margin-bottom: 30px;
    }
    h3 {
        text-align: center;
        color: #007bff;
        margin-bottom: 30px;
    }
    form {
        margin-top: 20px;
        margin-bottom: 50px;
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
    .footer {
        text-align: right;
        font-size: 16px;
        color: black;
        position: fixed;
        bottom: 30px;
        right: 30px;
        width: calc(100% - 60px);
    }
    .footer .contact {
        margin-bottom: 10px;
    }
    .footer .developed a {
        color: darkgreen;
        display: inline-block;
    }
</style>
</head>
<body>

<div class="header">
    <a href="https://biitclasses.in/">
        <img src="/static/bl1 png file.png" alt="Logo">
        <h1>BIIT CLASSES FOR IGNOU BCA/MCA</h1>
    </a>
    <a href="https://biitclasses.in/">
        <i>Classes available for BCA/MCA B.TECH(CS)</i>
    </a>
</div>

<div class="container">
    <h2>INDIRA GANDHI NATIONAL OPEN UNIVERSITY</h2>
    <h3>Percentage Calculator</h3>

    <h3 style="color:red">${errorMsg}</h3>
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

    <div class="footer"> <center>
        <div class="contact">
            <b>Contact & Feedback</b> - RZ 11/12 Extn.Opp Hanuman Mandir, Pali factory road,<br> Indra Park, Uttam Nagar, Delhi-110059
            <br>7290803744, 8700652427
            <br><a href="mailto:biitclasses@gmail.com">biitclasses@gmail.com</a>
        </div>
        <div class="developed">
            <a href="https://www.linkedin.com/in/jaychand-kumar-908038215/" style="color: darkgreen;">Developed by - Jay</a>
        </div> </center>
    </div>
</div>

</body>
</html>
