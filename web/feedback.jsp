<%-- 
    Document   : feedback
    Created on : Dec 1, 2024, 11:54:46 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback - ABC Cinema</title>
    <link rel="icon" href="favicon.png" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #000;
            color: #fff;
            margin: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        header {
            background: #111;
            color: #fff;
            padding: 10px;
            text-align: center;
            position: sticky;
            top: 0;
            z-index: 1000;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.5);
        }

        nav ul {
            list-style: none;
            padding: 0;
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        nav ul li a {
            color: #fff;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s;
        }

        nav ul li a:hover {
            color: yellow;
        }

        .container {
            background: #222;
            color: #fff;
            padding: 30px;
            border-radius: 10px;
            max-width: 500px;
            margin: 40px auto;
            box-shadow: 0 4px 10px rgba(255, 255, 255, 0.1);
            animation: fadeIn 1s ease-in-out;
        }

        h1 {
            color: #ffc107;
            margin-bottom: 20px;
        }

        .form-control {
            background: #444;
            color: #fff;
            border: 1px solid #555;
            transition: background 0.3s, transform 0.2s;
        }

        .form-control::placeholder {
            color: #bbb;
        }

        .form-control:focus {
            background: #555;
            border-color: yellow;
            outline: none;
            transform: scale(1.02);
        }

        .btn-submit {
            background-color: yellow;
            color: black;
            border: none;
            transition: background 0.3s, transform 0.2s;
        }

        .btn-submit:hover {
            background-color: lightgoldenrodyellow;
            transform: scale(1.05);
             color:black;
        }

        footer {
            background: #111;
            color: #fff;
            padding: 10px;
            text-align: center;
            position: relative;
            bottom: 0;
            width: 100%;
            box-shadow: 0 -2px 5px rgba(0, 0, 0, 0.5);
        }

        footer a {
            color: #fff;
            text-decoration: none;
            margin: 0 10px;
            transition: color 0.3s;
        }

        footer a:hover {
            color: yellow;
        }

        .footer-icons {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin: 10px 0;
        }

        .footer-icons img {
            width: 24px;
            cursor: pointer;
            transition: transform 0.3s ease-in-out;
        }

        .footer-icons img:hover {
            transform: scale(1.3) rotate(10deg);
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @media (max-width: 768px) {
            .container {
                width: 90%;
                padding: 20px;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>ABC CINEMA</h1>
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="movie.jsp">Movies</a></li>
                <li><a href="feedback.jsp">Feedback</a></li>
                <li><a href="contact.jsp">Contact Us</a></li>
                <li><a href="adminLogin.jsp">Login</a></li>
            </ul>
        </nav>
    </header>
    <main class="container">
        <h1>We Value Your Feedback!</h1>
        <p>Share your experience at ABC Cinema.</p>
        <form id="feedbackForm" action="SubmitFeedback" method="POST">
            <div class="mb-3">
                <label for="name" class="form-label">Name</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name" required>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
            </div>
            <div class="mb-3">
                <label for="rating" class="form-label">Rating</label>
                <select class="form-select form-control" id="rating" name="rating" required>
                    <option value="" disabled selected>Select a rating</option>
                    <option value="5">Excellent</option>
                    <option value="4">Very Good</option>
                    <option value="3">Good</option>
                    <option value="2">Fair</option>
                    <option value="1">Poor</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="comments" class="form-label">Comments</label>
                <textarea class="form-control" id="comments" name="comments" rows="4" placeholder="Share your feedback"></textarea>
            </div>
            <button type="submit" class="btn btn-submit w-100">Submit Feedback</button>
        </form>
    </main>
    <footer>
        
        <p>© 2024 ABC Cinema. All Rights Reserved.</p>
        <p>
            <a href="pr.jsp">Privacy Policy</a> |
            <a href="contact.jsp">Contact Us</a> |
            <a href="tm.jsp">Terms and Conditions</a>
        </p>
    </footer>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>
    <script>
        document.getElementById('feedbackForm').addEventListener('submit', function (e) {
            const email = document.getElementById('email').value;
            if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
                e.preventDefault();
                alert('Please enter a valid email address.');
            }
        });
    </script>
</body>
</html>
