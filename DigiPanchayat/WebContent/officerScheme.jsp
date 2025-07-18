<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Scheme</title>
<style>
    body {
        background: linear-gradient(to right, #0f2027, #203a43, #2c5364);
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        color: white;
    }

    .container {
        max-width: 500px;
        margin: 80px auto;
        background-color: #1e1e1e;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0,0,0,0.6);
    }

    h2 {
        text-align: center;
        color: cyan;
        margin-bottom: 30px;
    }

    label {
        display: block;
        margin-bottom: 8px;
        font-size: 16px;
    }

    input[type="text"], input[type="date"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: none;
        border-radius: 5px;
        background-color: #333;
        color: white;
        font-size: 15px;
    }

    button {
        width: 100%;
        padding: 10px;
        background-color: cyan;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
        color: #000;
    }

    button:hover {
        background-color: #00cccc;
    }
</style>
</head>
<body>

<div class="container">
    <h2>Add New Scheme</h2>
    <form action="officerScheme" method="post">
        <label>Enter Title of Scheme</label>
        <input type="text" name="title" required>

        <label>Enter Description of Scheme</label>
        <input type="text" name="description" required>

        <label>Enter Date of Scheme</label>
        <input type="date" name="date" required>

        <button type="submit">Submit</button>
    </form>
</div>

</body>
</html>
