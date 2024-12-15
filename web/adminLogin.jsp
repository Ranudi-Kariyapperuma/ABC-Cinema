<%-- 
    Document   : adminLogin
    Created on : Dec 2, 2024, 12:05:06 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.logging.*" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" type="image/favicon-icon" href="favicon.png">
         <!--CDN link bootstrap!-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">

         
        <link rel="stylesheet" href="HomePage/homePageStyle.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ABC CINEMA Admin Login</title>
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
            border-radius: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
            margin-top: 150px;
            margin-bottom: 30px;
            
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
        .toggle-container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 20px 0;
        }
        .toggle-container label {
            font-size: 16px;
            color: white;
            margin: 0 10px;
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
        .input-field {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .checkbox {
            margin: 10px 0;
            color: white;
            text-align: left;
        }
        .error {
            color: red;
            margin: 10px 0;
        }
        .toggle-switch {
            position: relative;
            display: inline-block;
            width: 60px;
            height: 34px;
        }
        .toggle-switch input {
            opacity: 0;
            width: 0;
            height: 0;
        }
        .slider {
            position: absolute;
            cursor: pointer;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: #ccc;
            transition: 0.4s;
            border-radius: 34px;
        }
        .slider:before {
            position: absolute;
            content: "";
            height: 26px;
            width: 26px;
            left: 4px;
            bottom: 4px;
            background-color: white;
            transition: 0.4s;
            border-radius: 50%;
        }
        input:checked + .slider {
            background-color: #2196F3;
        }
        input:checked + .slider:before {
            transform: translateX(26px);
        }
    </style>
    <body>
        
         <nav class="navbar navbar-expand-lg navbar-dark bg-dark custom-navbar">
         
                   <h1 style="margin-left: 10px; color: white;">ABC CINEMA</h1><br>
                  <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ms-auto">
                       <li><a href="index.jsp">Home</a></li>
                       <li><a href="movie.jsp">Movies</a></li>
                       <li><a href="booking.jsp">Book Tickets</a></li>
                       <li><a href="feedback.jsp">Feedback</a></li>
                       <li><a href="contact.jsp">Contact Us</a></li>
                       <li><a href="adminLogin.jsp">Login</a></li>
                       </ul>
                  </div>
                
                </nav>
        
        <div class="container">
            <div class="profile-circle"></div>
            <div class="toggle-container">
                <label>User</label>
                <label class="toggle-switch">
                    <input type="checkbox" id="userAdminToggle">
                    <span class="slider"></span>
                </label>
                <label>Admin</label>
            </div>
            
            <form method="post" action="adminLogin.jsp">
                <input type="text" name="username" id="username" class="input-field" placeholder="USERNAME" required>
                <input type="password" name="password" id="password" class="input-field" placeholder="PASSWORD" required>
                <div class="checkbox">
                    <input type="checkbox" name="keepSignedIn" id="keepSignedIn"> Keep me signed in
                </div>
                <button type="submit" class="button" id="signInButton">SIGN IN</button>
            </form>

                <button id="registerButton" class="button" style="display: none;" onclick="navigateToRegister()">Not a member yet? Register</button>

            <div class="error" id="errorMessage">
                <% 
                    String errorMessage = (String) request.getAttribute("errorMessage");
                    if (errorMessage != null) {
                %>
                    <%= errorMessage %>
                <% } %>
            </div>
        </div>
        
        <div id="profileModal" style="display:none; position:fixed; top:50%; left:50%; transform:translate(-50%, -50%); background:white; padding:20px; border-radius:10px; box-shadow:0 0 10px rgba(0,0,0,0.5);">
            <h3>Select Profile Picture</h3>
            <div style="display:flex; gap:10px;">
                <img src="Images/profile2.jpeg" class="profile-option" style="width:50px; height:50px; border-radius:50%; cursor:pointer;">
                <img src="Images/profile3.png" class="profile-option" style="width:50px; height:50px; border-radius:50%; cursor:pointer;">
            </div>
            <button id="closeModal" style="margin-top:20px; padding:10px; border:none; background:black; color:white; cursor:pointer;">Close</button>
        </div>

        <script>
            document.getElementById('signInButton').addEventListener('click', function(event) {
            console.log('Sign In button clicked');

            var username = document.getElementById('username').value;
            var password = document.getElementById('password').value;
            var errorMessage = document.getElementById('errorMessage');
            var isAdmin = document.getElementById('userAdminToggle').checked;

            console.log('Username entered:', username);
            console.log('Password entered:', password);
            console.log('Is Admin:', isAdmin);

            if ((isAdmin && username === 'admin' && password === '1234') ||
                (!isAdmin && username === 'user' && password === 'user123')) {
                console.log('Credentials validated successfully. Redirecting...');
                window.location.href = 'dashboard.jsp';
                return;
            }

            console.log('Invalid credentials');
            errorMessage.textContent = 'Invalid username or password';
            event.preventDefault();
        });

        document.querySelector('.profile-circle').addEventListener('click', function() {
            console.log('Profile picture clicked');
            document.getElementById('profileModal').style.display = 'block';
        });

        document.getElementById('closeModal').addEventListener('click', function() {
            console.log('Closing profile modal');
            document.getElementById('profileModal').style.display = 'none';
        });

        document.querySelectorAll('.profile-option').forEach(function(img) {
            img.addEventListener('click', function() {
                console.log('Profile picture option selected:', this.src);
                document.querySelector('.profile-circle').style.backgroundImage = 'url(' + this.src + ')';
                document.getElementById('profileModal').style.display = 'none';
            });
        });
        
        const toggle = document.getElementById('userAdminToggle');
        const registerButton = document.getElementById('registerButton');

        toggle.addEventListener('change', function () {
            if (toggle.checked) {
                registerButton.style.display = 'none';
            } else {
                registerButton.style.display = 'block';
            }
        });

        document.addEventListener('DOMContentLoaded', () => {
            registerButton.style.display = toggle.checked ? 'none' : 'block';
        });
        
        function navigateToRegister() {
            window.location.href = 'register.jsp'; 
        }
        </script>
        
         <%!
            private static final Logger LOGGER = Logger.getLogger("AdminLoginLogger");
        %>

        <%
            Handler consoleHandler = new ConsoleHandler();
            consoleHandler.setLevel(Level.ALL);
            LOGGER.addHandler(consoleHandler);
            LOGGER.setLevel(Level.ALL);

            String username = request.getParameter("username");
            String password = request.getParameter("password");

            LOGGER.info("Login attempt started");

            if (username != null && password != null) {
                LOGGER.info("Username and password received");
                
                String dbURL = "jdbc:mysql://localhost:3306/ABC_Cinema"; 
                String dbUser = "root"; 
                String dbPassword = "20242024"; 

                Connection conn = null;
                PreparedStatement stmt = null;
                ResultSet rs = null;

                try {
                    LOGGER.info("Attempting to load JDBC driver");
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    LOGGER.info("JDBC driver loaded successfully");

                    LOGGER.info("Attempting to establish database connection");
                    conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);
                    LOGGER.info("Database connection established successfully");

                    String sql = "SELECT * FROM admin WHERE admin_username = ? AND admin_pw = ?";
                    LOGGER.info("Preparing SQL statement: " + sql);

                    stmt = conn.prepareStatement(sql);
                    stmt.setString(1, username);
                    stmt.setString(2, password);

                    LOGGER.info("Executing query for username: " + username);
                    rs = stmt.executeQuery();

                    if (rs.next()) {
                        LOGGER.info("Login successful for user: " + username);
                        response.sendRedirect("dashboard.jsp"); 
                    } else {
                        LOGGER.warning("Login failed for username: " + username);
                        request.setAttribute("errorMessage", "Invalid username or password\n\nDebug Info:\n- Attempted Username: " + username);
                        request.getRequestDispatcher("adminLogin.jsp").forward(request, response);
                    }
                } catch (ClassNotFoundException e) {
                    LOGGER.severe("JDBC Driver not found: " + e.getMessage());
                    request.setAttribute("errorMessage", "Database driver error\n\nError: " + e.getMessage());
                    request.getRequestDispatcher("adminLogin.jsp").forward(request, response);
                } catch (SQLException e) {
                    LOGGER.severe("Database connection or query error: " + e.getMessage());
                    request.setAttribute("errorMessage", "Database connection error\n\nError: " + e.getMessage());
                    request.getRequestDispatcher("adminLogin.jsp").forward(request, response);
                } catch (Exception e) {
                    LOGGER.severe("Unexpected error: " + e.getMessage());
                    request.setAttribute("errorMessage", "Unexpected error occurred\n\nError: " + e.getMessage());
                    request.getRequestDispatcher("adminLogin.jsp").forward(request, response);
                } finally {
                    try {
                        LOGGER.info("Closing database resources");
                        if (rs != null) rs.close();
                        if (stmt != null) stmt.close();
                        if (conn != null) conn.close();
                        LOGGER.info("Database resources closed successfully");
                    } catch (Exception e) {
                        LOGGER.severe("Error closing database resources: " + e.getMessage());
                    }
                }
            } else {
                LOGGER.warning("Login attempt with null username or password");
            }
        %>
        
     <footer>
        <div class="footer-icons">
        <a href="https://instagram.com" target="_blank">
            <img src="Images/icon1.png" alt="Instagram" class="icon">
        </a>
        <a href="https://facebook.com" target="_blank">
            <img src="Images/icon2.png" alt="Twitter" class="icon">
        </a>
        <a href="" target="_blank">
            <img src="Images/icon3.png" alt="Instagram" class="icon">
        </a>
        </div> 
            <div class="footer-icons2">
            <img src="Images/pngwing.com(2).png" alt="paypal" class="icon2">
            <img src="Images/pngwing.com(4).png" alt="payment gate ways" class="icon2">
        </div>
        <p>© 2024 ABC Cinema. All Rights Reserved.</p>
        <p>      <a href="pr.jsp">Privacy Policy</a>&ensp; &ensp; 
                <a href="contact.jsp">Contact Us</a>&ensp;&ensp; 
                <a href="tm.jsp">Terms and Conditions</a>&ensp; &ensp; 
            </p>
          
    </footer>       
        <!-- Bootstrap JS Bundle -->
     <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" 
   integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" 
   integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
    </body>
</html>