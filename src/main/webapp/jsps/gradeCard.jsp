<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Grade Card</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }
    .container {
        max-width: 90%; /* Adjust the maximum width to 90% of the viewport */
        margin: 50px auto;
        padding: 20px;
        background-color: #f9f9f9;
        border: 1px solid #ccc;
        border-radius: 10px;
        overflow: auto; /* Add overflow property to contain the table within the box */
    }
    h1 {
        text-align: center;
        color: #333;
    }
    h2 {
        text-align: center;
        color: #007bff;
    }
    .info {
        margin-bottom: 20px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    th, td {
        border: 1px solid #ccc;
        padding: 10px;
        text-align: left;
    }
    th {
        background-color: #007bff;
        color: #fff;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
</style>
</head>
<body>

<div class="container">
    <h1>INDIRA GANDHI NATIONAL OPEN UNIVERSITY</h1>
    <h2>Grade Card</h2>
    <div class="info">
        <p><strong>Name:</strong> ${studentName}</p>
        <p><strong>Enrollment No:</strong> ${enrollmentNo}</p>
        <p><strong>Course:</strong> ${courseName}</p>
    </div>

    ${table}

    <p> </p> <br>
    <div class="info">
        <p style="color:green"><strong> Percentage :- </strong> ${percentage}</p>
        <p></p>
        <p><strong style="color:red">Note : </strong> Only subjects having both assignments and exam marks more than 35% are included in calculation.</p>
    </div>
</div>

<script>
    // JavaScript code to remove the last row of the table
    window.onload = function() {
        var table = document.getElementById("ctl00_ContentPlaceHolder1_gvDetail");
        var lastRow = table.rows[table.rows.length - 1]; // Get the last row

        // Remove the last row
        lastRow.parentNode.removeChild(lastRow);
    };
</script>

</body>
</html>
