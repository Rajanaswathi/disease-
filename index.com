<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Disease Prediction</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f0f0f0;
    }
    .container {
        max-width: 600px;
        margin: 20px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    h1, h2 {
        text-align: center;
    }
    label {
        display: block;
        margin-bottom: 8px;
    }
    input[type="text"], input[type="number"] {
        width: 100%;
        padding: 8px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #4CAF50;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>

<div class="container">
    <h1>Disease Prediction</h1>
    <form id="diseasePredictionForm">
        <label for="age">Age:</label>
        <input type="number" id="age" name="age" required>

        <label for="gender">Gender:</label>
        <select id="gender" name="gender">
            <option value="male">Male</option>
            <option value="female">Female</option>
        </select>

        <label for="symptoms">Symptoms:</label>
        <textarea id="symptoms" name="symptoms" rows="4" required></textarea>

        <input type="submit" value="Predict">
    </form>
</div>

<script>
    document.getElementById("diseasePredictionForm").addEventListener("submit", function(event) {
        event.preventDefault();
        // Here you can add JavaScript code to handle form submission, such as sending data to a server for prediction.
        // You can use AJAX, fetch API, or any other method to send form data to the server.
        // Upon receiving the prediction result, you can display it to the user.
        alert("Prediction submitted. Processing...");
    });
</script>

</body>
</html>
