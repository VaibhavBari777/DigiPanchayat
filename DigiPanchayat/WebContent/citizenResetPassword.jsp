<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reset Officer Password</title>
<style>
    body {
        background: linear-gradient(to right, #0f2027, #203a43, #2c5364);
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        color: white;
    }

    .container {
        max-width: 400px;
        margin: 100px auto;
        background-color: #1e1e1e;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0,0,0,0.6);
    }

    h2 {
        text-align: center;
        color: cyan;
        margin-bottom: 25px;
    }

    label {
        display: block;
        margin-bottom: 10px;
        font-size: 16px;
    }

    input[type="text"] {
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
        color: #000;
        cursor: pointer;
    }

    button:hover {
        background-color: #00cccc;
    }
</style>
</head>
<body>

<div class="container">
    <h2>Reset Your Password</h2>
    
    
    <form action="citizenResetPassword" method="post">
    
     <label>Enter your Old password</label>
        <input type="text" name="oldPassword" required>
    	
        <label>Enter your new password</label>
        <input type="text" name="newPassword" required>

        <button type="submit">Submit</button>
    </form>
</div>

</body>
</html>
