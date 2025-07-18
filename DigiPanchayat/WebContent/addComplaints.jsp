<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Complaint Form</title>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #0f2027, #203a43, #2c5364); /* gradient like dashboard */
        color: #00ffff; /* cyan text color to match dashboard headers */
    }

    .form-container {
        background-color: #1e1e1e;
        color: #00ffff;
        max-width: 500px;
        margin: 80px auto;
        padding: 30px 40px;
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(0,255,255,0.3);
    }

    label {
        display: block;
        margin-bottom: 10px;
        font-weight: bold;
    }

    input[type="text"], input[type="date"] {
        width: 100%;
        padding: 12px;
        margin-bottom: 20px;
        border: none;
        border-radius: 4px;
        background-color: #333;
        color: #00ffff;
    }

    input[type="text"]::placeholder,
    input[type="date"]::placeholder {
        color: #aaa;
    }

    button[type="submit"] {
        width: 100%;
        background-color: #00bcd4;
        color: white;
        padding: 12px;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    button[type="submit"]:hover {
        background-color: #0097a7;
    }

    h2 {
        text-align: center;
        margin-bottom: 30px;
        color: #00ffff;
    }
</style>

</head>
<body>

<div class="form-container">
    <h2>Submit Complaint</h2>
    <form action="addComplains" method="post">
        <label>Enter Area of Complaint</label>
        <input type="text" name="area" placeholder="e.g., Shirpur">

        <label>Enter Complaint</label>
        <input type="text" name="complaints" placeholder="e.g., Cleanliness issue">

        <label>Enter Complaint Date</label>
        <input type="date" name="date">

        <button type="submit">Submit</button>
    </form>
</div>

</body>
</html>
