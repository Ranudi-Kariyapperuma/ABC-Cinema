<%-- 
    Document   : contact
    Created on : Dec 1, 2024, 11:55:04 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/favicon-icon" href="favicon.png">
    <title>Contact Us - ABC Cinema</title>
    <style>
        /* Add the custom font using @font-face */
        @font-face {
            font-family: 'Amasis MT Pro Medium';
            src: url('fonts/AmasisMTPro-Medium.ttf') format('truetype');
            font-weight: normal;
            font-style: normal;
        }

        body {
            font-family: 'Amasis MT Pro Medium', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(45deg, #1a1a1a, #333);
            background-size: 400% 400%;
            animation: gradientAnimation 15s ease infinite;
            color: #fff;
            transition: background 1s ease-in-out;
            opacity: 0;
            animation: fadeIn 1.5s forwards;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes gradientAnimation {
            0% {
                background-position: 0% 50%;
            }
            50% {
                background-position: 100% 50%;
            }
            100% {
                background-position: 0% 50%;
            }
        }

        /* Header Section */
        header {
            background-image: url('https://images.unsplash.com/photo-1605598941685-b7800b7cc890?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjUyOXwwfDF8c2VhY2h8NXx8Y2luZW1hfGVufDB8fHx8fDE2NzkzNTk4NjA&ixlib=rb-1.2.1&q=80&w=1080');
            background-size: cover;
            background-position: center;
            color: white;
            text-align: center;
            padding: 80px 0;
            position: relative;
            overflow: hidden;
            opacity: 0;
            animation: fadeInHeader 2s forwards 0.5s;
        }

        @keyframes fadeInHeader {
            from {
                opacity: 0;
                transform: scale(0.9);
            }
            to {
                opacity: 1;
                transform: scale(1);
            }
        }

        h1 {
            font-size: 3em;
            font-family: 'Amasis MT Pro Medium', sans-serif;
            font-weight: 600;
            letter-spacing: 1.5px;
            text-transform: uppercase;
            animation: slideIn 2s forwards;
        }

        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateY(-50px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Container Section */
        .container {
            width: 70%;
            margin: 0 auto;
            padding: 20px;
        }

        .contact-info, .contact-form {
            background-color: #444;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.3);
            margin-bottom: 30px;
            opacity: 0;
            animation: slideIn 1.5s forwards 1s;
        }

        /* Contact Info Section */
        .contact-info p, .contact-info a {
            font-size: 16px;
            color: #ccc;
            transition: color 0.3s;
        }

        .contact-info a:hover {
            color: #1e90ff;
            transform: scale(1.05);
        }

        /* Contact Form */
        .contact-form label {
            font-size: 16px;
            font-weight: bold;
            margin-bottom: 8px;
            display: block;
            color: #fff;
        }

        .contact-form input, .contact-form textarea {
            width: 100%;
            max-width: 400px;
            padding: 12px;
            margin: 10px 0;
            border: 2px solid #555;
            border-radius: 8px;
            background-color: #222;
            color: #fff;
            font-size: 14px;
            box-sizing: border-box;
            transition: box-shadow 0.3s, border 0.3s, transform 0.2s ease;
            resize: none;
        }

        .contact-form input:focus, .contact-form textarea:focus {
            box-shadow: 0 0 15px rgba(0, 126, 255, 0.7);
            border: 2px solid #1e90ff;
            transform: scale(1.05);
            outline: none;
        }

        .contact-form button {
            background-color: #1e90ff;
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s, transform 0.2s;
        }

        .contact-form button:hover {
            background-color: #555;
        }

        .contact-form button:active {
            transform: scale(0.98);
        }

        /* Scroll-in Animation */
        .scroll-in {
            opacity: 0;
            transform: translateY(30px);
            animation: fadeInUp 1.5s forwards;
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Input Focus Animation */
        .input-group input,
        .input-group textarea {
            transition: all 0.3s ease;
        }

        .input-group input:focus,
        .input-group textarea:focus {
            background-color: #333;
        }
    </style>
</head>
<body>

    <header>
        <h1>ABC CINEMA</h1>
    </header>

    <div class="container">
        <section class="contact-info scroll-in">
            <h2>Contact ABC Cinema</h2>
            <p><strong>ABC Cinema and Theatres offices are situated at the ABC Cinema building, Wellawatta - Colombo 6. Should you wish to contact us for any matter you can reach us on the following address or contact numbers listed below.</strong></p>            
            <p><strong>Phone:</strong><a href="tel:+947612345678">+947612345678</a></p>
            <p><strong>Email   :</strong><a href="mailto:abccinema@gmail.com">abccinema@gmail.com</a></p>
            
            <h2>Business Hours:</h2>
            <p><strong>Monday to Friday:</strong> 09:00 AM - 10:00 PM</p>
            <p><strong>Saturday & Sunday:</strong> 09:00 AM - 11:00 PM</p>
            <br>
            <p><b>If you wish to contact us via email please fill in the following form and we will get in touch with you at the earliest.</b></p>
        </section>

        <section class="contact-form scroll-in">
            <h2>Send Us a Message:</h2>
            <form action="#" method="post">
                <div class="input-group">
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" required>
                </div>

                <div class="input-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                </div>

                <div class="input-group">
                    <label for="phone">Phone Number:</label>
                    <input type="tel" id="phone" name="phone">
                </div>

                <div class="input-group">
                    <label for="message">Message:</label>
                    <textarea id="message" name="message" rows="4" required></textarea>
                </div>

                <button type="submit">Submit</button>
            </form>
        </section>
    </div>

</body>
</html>

