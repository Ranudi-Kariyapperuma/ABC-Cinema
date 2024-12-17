<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <link rel="stylesheet" href="style.css">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </head>
    <body>
        <input type="hidden" id="status" value="<%= request.getAttribute("status") != null ? request.getAttribute("status") : "" %>">
        <div class="wrapper">
            <form method="post" action="register" class="signupform">
                <h2 style="color: #808080">Register</h2>
                <div class="input-field">
                    <input type="text" name="uname" required>
                    <label style="color: #808080">Enter User Name</label>
                </div>
                <div class="input-field">
                    <input type="email" name="email" required>
                    <label style="color: #808080">Enter your email</label>
                </div>
                <div class="input-field">
                    <input type="password" name="pswd" required>
                    <label style="color: #808080">Enter your password</label>
                </div>
                <button type="submit">Register</button>
                <div class="register">
                    <p style="color: red">Already have an account? <a style="color: red" href="login.jsp">Login</a></p>
                </div>
            </form>
        </div>

        <script>
            var status = document.getElementById("status").value;
            if (status === "signupSuccess") {
                swal("Congrats", "Account Created Successfully", "success");
            } else if (status === "signupFailed") {
                swal("Error", "Signup failed. Please try again.", "error");
            } else if (status === "emailExists") {
                swal("Error", "Email already exists. Please try with a different one.", "error");
            }
        </script>
    </body>
</html>
