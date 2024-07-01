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
    .percentage {
        font-size: 150%;
        color: green;
    }

    @media (max-width: 600px) {
        .container {
            margin: 20px auto;
            padding: 10px;
        }
        th, td {
            padding: 8px;
            font-size: 12px;
        }
        h1, h2 {
            font-size: 18px;
        }
        .info p {
            font-size: 14px;
        }
        .percentage {
            font-size: 200%;
        }
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
        <p></p>
        <p class="percentage"><strong>Percentage :- </strong> ${percentage}</p>
    </div>
</div>

<script>
    window.onload = function() {
        var table = document.getElementById("ctl00_ContentPlaceHolder1_gvDetail");

        // Remove the last row
        var lastRow = table.rows[table.rows.length - 1];
        lastRow.parentNode.removeChild(lastRow);

        // Function to remove specific columns from a row
        function removeColumns(row, indices) {
            for (var i = indices.length - 1; i >= 0; i--) {
                row.deleteCell(indices[i]);
            }
        }

        // Column indices to remove (0-based index)
        var columnsToRemove = [2, 3, 4, 5];

        // Iterate through each row and remove the specified columns
        for (var i = 0; i < table.rows.length; i++) {
            removeColumns(table.rows[i], columnsToRemove);
        }
    };
</script>

</body>
</html>
