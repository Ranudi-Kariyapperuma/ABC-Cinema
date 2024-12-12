<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Styled Email Notification Form</title>
    <link rel="stylesheet" href="text/css">
            <style>
            /* General Reset */
        body, html {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            height: 100%;
        }

        /* Page Background */
        body {
            background-color: #000; /* Black background */
            color: #fff; /* White text */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Form Container */
        .form-container {
            opacity: 0;
            transform: translateY(50px);
            animation: fadeInUp 1.5s forwards;
        }

        /* Form Styling */
        .email-form {
            background: rgba(255, 255, 255, 0.1); /* Slightly transparent form background */
            border-radius: 8px;
            padding: 20px 30px;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.3);
            text-align: center;
            max-width: 400px;
        }

        /* Form Title */
        .email-form h1 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #fff; /* White text */
        }

        /* Button Styling */
        .email-form button {
            background-color: #ffeb3b; /* Yellow button */
            color: #000; /* Black text */
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 4px;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        /* Button Hover Effect */
        .email-form button:hover {
            transform: translateY(-3px);
            box-shadow: 0 5px 10px rgba(255, 235, 59, 0.5);
        }

        /* Fade-in Animation */
        @keyframes fadeInUp {
            0% {
                opacity: 0;
                transform: translateY(50px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }
        </style>
    </head>
    <body>
        <div class="form-container">
            <form action="JavaMail2" method="post" class="email-form">
                <h1>Email Notification</h1>
                <input type="email" id="recipient" name="email" value="${user.email}" required>
                <input type="hidden" name="message" value="Your reservation has been confirmed!">
                <button type="submit">Send Email</button>
            </form>
        </div>
    </body>
    </html>
