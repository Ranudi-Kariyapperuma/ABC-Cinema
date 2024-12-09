<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" type="image/favicon-icon" href="favicon.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Register - ABC CINEMA</title>
    </head>
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
            padding-right: 38px;
            border-radius: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
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
            cursor: pointer;
        }
        .input-field {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
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
        .error {
            color: red;
            margin: 10px 0;
        }
    </style>
    <body>
        <div class="container">
            <div class="profile-circle"></div>
            <h2>Register</h2>
            
            <form method="post" action="">
                <input type="text" name="name" id="name" class="input-field" placeholder="Full Name" required>
                <input type="email" name="email" id="email" class="input-field" placeholder="Email" required>
                <input type="password" name="password" id="password" class="input-field" placeholder="Password" required>
                <button type="submit" class="button" id="registerButton">REGISTER</button>
            </form>

            <div class="error" id="errorMessage">
                <% 
                    String errorMessage = (String) request.getAttribute("errorMessage");
                    if (errorMessage != null) {
                %>
                    <%= errorMessage %>
                <% } %>
            </div>
        </div>

        <script>
            document.getElementById('registerButton').addEventListener('click', function(event) {
                console.log('Register button clicked');

                var name = document.getElementById('name').value;
                var email = document.getElementById('email').value;
                var password = document.getElementById('password').value;
                var errorMessage = document.getElementById('errorMessage');

                console.log('Name entered:', name);
                console.log('Email entered:', email);
                console.log('Password entered:', password);

                if (name && email && password) {
                    console.log('Registration successful. Redirecting...');
                    window.location.href = 'welcome.html'; // Redirect to a welcome page or dashboard
                    return;
                }

                console.log('Please fill all fields');
                errorMessage.textContent = 'All fields are required';
                event.preventDefault();
            });
        </script>
    </body>
</html>