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
            body 
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


