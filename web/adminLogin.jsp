<%-- 
    Document   : adminLogin
    Created on : Dec 2, 2024, 12:05:06 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: rgb(3,1,29);
            background: linear-gradient(90deg, rgba(3,1,29,1) 0%, rgba(90,92,83,1) 100%);
            font-family: Arial, sans-serif;
        }
        .container {
            text-align: center;
            background: rgb(3,1,29);
            background: linear-gradient(186deg, rgba(3,1,29,1) 0%, rgba(105,112,153,1) 100%);
            padding: 20px;
            border-radius: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .profile-circle {
            background-image: url('Images/profile1.jpeg');
            width: 100px;
            height: 100px;
            border-radius: 40%;
            background-color: #ddd;
            margin: 0 auto;
            background-size: cover;
            background-position: center;
        }
        .button {
            display: block;
            width: 100%;
            border-radius: 10px;
            padding: 10px;
            margin: 30px 0;
            border: none;
            background-color: black;
            color: white;
            cursor: pointer;
        }
        .button:hover {
            background-color: yellow;
            color: black;
        }
        .button:active {
            background-color: yellow;
            color: black;
        }
        .input-field {
            width: 100%;
            padding: 5px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .checkbox {
            margin: 10px 0;
        }
        .error {
            color: red;
            display: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="profile-circle"></div>
        <button class="button" id="userButton">USER</button>
        <button class="button" id="adminButton">ADMIN</button>
        <input type="text" id="username" class="input-field" placeholder="USERNAME">
        <input type="password" id="password" class="input-field" placeholder="PASSWORD">
        <div class="checkbox">
            <input type="checkbox" id="keepSignedIn"> Keep me signed in
        </div>
        <button class="button" id="signInButton">SIGN IN</button>
        <div class="error" id="errorMessage">Invalid username or password</div>
    </div>
    <!-- Modal for selecting profile picture -->
<div id="profileModal" style="display:none; position:fixed; top:50%; left:50%; transform:translate(-50%, -50%); background:white; padding:20px; border-radius:10px; box-shadow:0 0 10px rgba(0,0,0,0.5);">
    <h3>Select Profile Picture</h3>
    <div style="display:flex; gap:10px;">
        <img src="Images/profile2.jpeg" class="profile-option" style="width:50px; height:50px; border-radius:50%; cursor:pointer;">
        <img src="Images/profile3.png" class="profile-option" style="width:50px; height:50px; border-radius:50%; cursor:pointer;">
        <!-- Add more profile options as needed -->
    </div>
    <button id="closeModal" style="margin-top:20px; padding:10px; border:none; background:black; color:white; cursor:pointer;">Close</button>
</div>

    <script>
        document.getElementById('signInButton').addEventListener('click', function() {
            var username = document.getElementById('username').value;
            var password = document.getElementById('password').value;
            var errorMessage = document.getElementById('errorMessage');

            if (username === 'admin' && password === '1234') {
                window.location.href = 'helloWorld.html';
            } else {
                errorMessage.style.display = 'block';
            }
        });
        document.querySelector('.profile-circle').addEventListener('click', function() {
        document.getElementById('profileModal').style.display = 'block';
    });

    document.getElementById('closeModal').addEventListener('click', function() {
        document.getElementById('profileModal').style.display = 'none';
    });

    document.querySelectorAll('.profile-option').forEach(function(img) {
        img.addEventListener('click', function() {
            document.querySelector('.profile-circle').style.backgroundImage = 'url(' + this.src + ')';
            document.getElementById('profileModal').style.display = 'none';
        });
    });
    </script>
</body>
</html>