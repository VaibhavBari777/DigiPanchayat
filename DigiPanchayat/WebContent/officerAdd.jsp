<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add Officer - DigiPanchayat</title>
    <style>
        body {
            background: transparent; /* Inherit dashboard bg */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #ffffff;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 50px 20px;
            margin: 0;
        }

        .form-container {
            background-color: rgba(0, 0, 0, 0.6);
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.5);
            max-width: 400px;
            width: 100%;
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #00bcd4;
        }

        label {
            display: block;
            margin-bottom: 6px;
            font-weight: bold;
            font-size: 14px;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-bottom: 18px;
            border: none;
            border-radius: 5px;
            background-color: #f2f2f2;
            color: #000;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #00bcd4;
            border: none;
            border-radius: 5px;
            color: white;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        button:hover {
            background-color: #0198a3;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Add Officer</h2>
    <form action="officerAdd" method="post">
        <label for="name">Officer Name</label>
        <input type="text" id="name" name="name" required>

        <label for="designation">Designation</label>
        <input type="text" id="designation" name="designation" required>

        <label for="contact">Contact</label>
        <input type="text" id="contact" name="contact" required>

        <label for="email">Email</label>
        <input type="email" id="email" name="email" required>

        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>

        <button type="submit">Submit</button>
    </form>
</div>

</body>
</html>
