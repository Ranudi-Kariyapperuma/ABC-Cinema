<%-- 
    Document   : paymentsuccess
    Created on : Dec 15, 2024, 2:58:57 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="icon" type="image/favicon-icon" href="Images/favicon.png">
    <style>
        /* Global styles */
        body {
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #121212;  /* Dark background */
            color: #fff;
            font-family: Arial, sans-serif;
            overflow: hidden;
        }

        /* Box container with glowing effect */
        .box {
            padding: 30px;
            border-radius: 10px;
            background-color: rgba(255, 255, 255, 0.1);
            box-shadow: 0 0 20px 10px rgba(255, 255, 0, 0.8); /* Glowing yellow effect */
            width: 80%;
            max-width: 500px;
            text-align: center;
            opacity: 0;
            animation: fadeIn 2s forwards; /* Fade in animation */
        }

        /* Header animation */
        h1 {
            font-size: 30px;
            margin-bottom: 20px;
            animation: slideInFromTop 1s ease-out;
            color: #ffeb3b; /* Yellow color */
            text-shadow: 0 0 15px rgba(255, 235, 59, 0.8); /* Glowing text effect */
        }

        /* Text animation */
        p {
            font-size: 1.5em;
            animation: slideInFromBottom 1.5s ease-out;
            color: #fff;
            text-shadow: 0 0 10px rgba(255, 235, 59, 0.6); /* Slight glow effect for the text */
        }

        /* Button styles */
        .ok-button {
            padding: 10px 20px;
            background-color: #ffeb3b;
            border: none;
            border-radius: 5px;
            color: #121212;
            font-size: 18px;
            cursor: pointer;
            margin-top: 20px;
            animation: fadeIn 2s forwards; /* Fade-in effect */
        }

        .ok-button:hover {
            background-color: #fbc02d;
        }

        /* Fade in animation */
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        /* Slide-in from top for header */
        @keyframes slideInFromTop {
            from {
                transform: translateY(-30px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        /* Slide-in from bottom for paragraph */
        @keyframes slideInFromBottom {
            from {
                transform: translateY(30px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }
    </style>
</head>
<body>
<div class="box">
    <h1>Payment Successful!</h1>
    <p>Your payment has been successfully processed.</p>
    <!-- OK button to redirect to confirmation.jsp -->
    <button class="ok-button" onclick="window.location.href='confirmation.jsp'">OK</button>
</div>
</body>
</html>
