<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Form</title>
  <link rel="stylesheet" href="style.css">
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
    <!-- Hidden input to pass the status -->
    <input type="hidden" id="status" value="<%= request.getAttribute("status") != null ? request.getAttribute("status") : "" %>">
    
    <div class="wrapper">
        <form method="post" action="Login">
            <h2 style="color: #808080">Login</h2>
            
            <div class="input-field">
                <input type="text" name="email" required>
                <label style="color: #808080">Enter your email</label>
            </div>
            
            <div class="input-field">
                <input type="password" name="pswd" required>
                <label style="color: #808080">Enter your password</label>
            </div>
            
            <div class="forget">
                <a href="forgotPassword.jsp" name="forgotpswd">Forgot password?</a>
            </div>
            <button type="submit">Log In</button>
            <div class="register">
                <p style="color: red">Don't have an account? <a style="color: red" href="register.jsp">Register</a></p>
            </div>
        </form>
    </div>

    <script>

        var status = document.getElementById("status").value;

        if (status === "loginSuccess") {
            Swal.fire("Welcome", "You have logged in successfully!", "success");
        } else if (status === "loginFailed") {
            Swal.fire("Error", "Incorrect email or password. Please try again.", "error");
        }
    </script>
</body>
</html>
