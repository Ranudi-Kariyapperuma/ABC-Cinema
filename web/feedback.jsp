<%-- 
    Document   : feedback
    Created on : Dec 1, 2024, 11:54:46 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="icon" type="image/favicon-icon" href="favicon.png">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <title>Feedback</title>
   
        <style>
           html,body 
            {
                font-family:Arial, sans-serif;
                color:white;
                margin: 0;
                padding: 0;
                background-color:  #000000; /*#f4f4f4*/
                height:100%;
                display: flex;
                flex-direction: column;  
               
            }
            
            content-wrapper 
            {
                flex: 1; 
            }

            header 
            {
                background: #333;
                color: white;
                padding: 10px ;
                text-align: center;
            }

            .custom-navbar 
            {
                position: absolute; /* Makes the navbar float */
                top: 0; /* Ensures it stays at the top */
                width: 100%; /* Stretches across the width of the viewport */
                z-index: 1030; /* Keeps it above other elements */
                opacity: 0.9; /* Reduces opacity for a slightly transparent look */
                transition: opacity 0.3s ease-in-out; /* Adds a smooth opacity change effect */
            }

            nav ul 
            {
                list-style: none;
                padding: 0;
            }

            nav ul li 
            {
                display: inline;
                margin: 0 15px;
            }

            nav ul li a 
            {
                color: white;
                text-decoration: none;
                font-weight: bold;
            }
            
            nav ul li a:hover 
            {
                color:yellow;
            }


            footer 
            {
                background: #333;
                color: white;
                text-align: center;
                padding: 5px ;
                position:relative;
                bottom: 0;
                width: 100%;
            }

            footer  a
            {
                color: white;
                text-decoration: none;
                font-weight: bold;
            }

            footer  a:hover
            {
                color: yellow; 
            }

            /*Left bottom footer icon*/

            .footer-icons 
            {
                position: absolute; 
                bottom: 20px; /* Distance from the bottom of the footer */
                left: 40px; /* Distance from the left side */
                display: flex; 
                gap: 10px; 
            }

            .footer-icons .icon 
            {
                width: 24px; 
                height: 24px; 
                cursor: pointer; 
                transition: transform 0.3s ease-in-out; 
            }

            .footer-icons .icon:hover 
            {
                transform: scale(1.2); 
            }

            /*Right Bottom footer Icon*/

            .footer-icons2 
            {
                position: absolute; 
                bottom: 20px; /* Distance from the bottom of the footer */
                right: 40px; /* Distance from the left side */
                display: flex; 
                gap: 10px; 
            }

            .footer-icons2 .icon2 
            {
                width: 60px; 
                height: 90px; 
                cursor: pointer; 
                transition: transform 0.3s ease-in-out; 
                bottom: 20px; /* Distance from the bottom of the footer */
                left: 20px; 
            }

            .footer-icons2 .icon2:hover 
            {
                transform: scale(1.2);
            }

            /*.footer-icons .icon2
            {
                width: 50px; 
                height: 24px; 
                cursor: pointer; 
                transition: transform 0.3s ease-in-out;
            }*/

            .body 
            {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: black;
                color: white;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                padding-top: 50px;
            }

            .container 
            {
                background-color: gainsboro;
                padding: 20px 30px;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                width: 400px;
                text-align: center;    
                color: #333;
            }

            h1 
            {
                color: #444;
                margin-bottom: 20px;
            }

            .form-group 
            {
                margin-bottom: 15px;
                text-align: left;
            }

            label 
            {
                display: block;
                margin-bottom: 5px;
                font-weight: bold;
            }

            input, select, textarea, button 
            {
                width: 100%;
                padding: 10px;
                font-size: 14px;
                margin-bottom: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }

            button.submit-btn 
            {
                background-color: yellow;
                color: black;
                font-size: 16px;
                cursor: pointer;
                border: none;
                transition: background 0.3s;
            }

            button.submit-btn:hover 
            {
                background-color: lightgoldenrodyellow;
            }


            @media (max-width: 991px) 
            {
                .container 
                {
                    width: 90%;
                    padding: 15px 20px;
                }

                h1 
                {
                    font-size: 24px;
                }

                button.submit-btn 
                {
                    font-size: 14px;
                }
            }


            @media (max-width: 768px) 
            {
                .container 
                {
                    width: 100%;
                    margin: 10px;
                    box-shadow: none;
                    border-radius: 0;
                }

                h1 
                {
                    font-size: 20px;
                }

                input, select, textarea, button 
                {
                    font-size: 13px;
                    padding: 8px;
                }
            }


            @media (max-width: 450px) 
            {
                h1 
                {
                    font-size: 18px;
                }

                p
                {
                    font-size: 14px;
                }

                input, select, textarea, button 
                {
                    font-size: 12px;
                }

                .container 
                {
                    padding: 10px;
                    width: 100%;
                }
            }

        </style>
    
    </head>
     
    <body>
    <div class="content-wrapper">
            <header>
                
                <nav class="navbar navbar-expand-lg navbar-dark bg-dark custom-navbar">
                    <div class="container-fluid">
                        <h1 style="color: white;">ABC CINEMA</h1>
                        
                        <br>
                        
                        <ul>
                            <li>
                                <a href="index.jsp">Home</a>
                            </li>
                            <li>
                                <a href="movie.jsp">Movies</a>
                            </li>
                            <li>
                                <a href="booking.jsp">Book Tickets</a>
                            </li>
                            <li>
                                <a href="feedback.jsp">Feedback</a>
                            </li>
                            <li>
                                <a href="contact.jsp">Contact Us</a>
                            </li>
                            <li>
                                <a href="adminLogin.jsp">Login</a>
                            </li>
                        </ul>
                    </nav>
                </header> 
            
            <br><br>
            <div class="body">
        <div class="container">
            <h1>We Value Your Feedback!</h1>
        
            <p>Please share your feedback about your experience at Our ABC Cinema.</p>
        
            <form id="feedbackForm" action="SubmitFeedback" method="POST">
                <div class="form-group">
                    <label for="name">Name:</label>
                        <input type="text" id="name" name="name" placeholder="Enter your name" required>
                </div>
                
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" placeholder="Enter your email" required>
                </div>
            
                <div class="form-group">
                    <label for="rating">Rating:</label>
                    <select id="rating" name="rating" required>
                        <option value="" disabled selected> Select a rating </option>
                        <option value="5">Excellent</option>
                        <option value="4">Very Good</option>
                        <option value="3">Good</option>
                        <option value="2">Fair</option>
                        <option value="1">Poor</option>
                    </select>
                </div>
            
                <div class="form-group">
                    <label for="comments">Comments:</label>
                        <textarea id="comments" name="comments" rows="4" placeholder="Share your feedback here..."></textarea>
                </div>
            
                <div class="form-group">
                    <button type="submit" class="submit-btn">Submit Feedback</button>
                </div>
            </form>
        </div>
     </div>
  </div>

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
                <a href="" target="_blank">
                    <img src="Images/pngwing.com(2).png" alt="paypal" class="icon2"></a>
                <a href="" target="_blank">
                    <img src="Images/pngwing.com(3).png" alt="Safe payment gate way" class="icon2">
                </a>
            </div>
            
            <p>© 2024 ABC Cinema. All Rights Reserved.</p>
            <p>      
                <a href="pr.jsp">Privacy Policy</a>&ensp; &ensp; 
                <a href="contact.jsp">Contact Us</a>&ensp;&ensp; 
                <a href="tm.jsp">Terms and Conditions</a>&ensp; &ensp; 
            </p>
        </footer>
                    
        <!-- Bootstrap JS Bundle -->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
 
    
        <script>
            document.getElementById('feedbackForm').addEventListener('submit', function (e) 
            {
                const name = document.getElementById('name').value.trim();
                const email = document.getElementById('email').value.trim();
                const rating = document.getElementById('rating').value;

                if (!name || !email || !rating) 
                {
                    e.preventDefault();
                    alert('Please fill in all required fields.');
                    return false;
                }

                if (!validateEmail(email)) 
                {
                    e.preventDefault();
                    alert('Please enter a valid email address.');
                    return false;
                }

                alert('Thank you for your feedback!');
            }
            );

            function validateEmail(email) 
            {
                const re = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
                return re.test(String(email).toLowerCase());
            }

        </script>
    </body>
</html>


