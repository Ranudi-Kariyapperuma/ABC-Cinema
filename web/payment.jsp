<%-- 
    Document   : payment
    Created on : Dec 2, 2024, 12:04:33 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

        
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Secure Payment</title>
    <style>
        /* General Reset and Styling */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #121212; /* Black background */
            color: #ffffff; /* White text */
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .payment-form {
            background: #1c1c1c; /* Slightly lighter black for contrast */
            border-radius: 12px;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.5);
            padding: 20px;
            max-width: 400px;
            width: 100%;
        }
        .payment-form h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #ffffff;
        }
        .payment-methods {
            margin-bottom: 20px;
        }
        .payment-methods input {
            margin-right: 10px;
        }
        label {
            font-weight: bold;
            margin-bottom: 5px;
            display: block;
        }
        input, select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #333;
            border-radius: 5px;
            background: #222;
            color: #fff;
        }
        input::placeholder {
            color: #888;
        }
        button {
            width: 100%;
            padding: 10px;
            background: #007bff; /* Blue for button */
            border: none;
            border-radius: 5px;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s ease;
        }
        button:hover {
            background: #0056b3; /* Darker blue on hover */
        }
        #paypal-section button {
            background: #ffc439; /* PayPal yellow button */
            color: #000;
            font-weight: bold;
        }
        #paypal-section button:hover {
            background: #d9a825; /* Darker yellow */
        }
        .card-icons {
            display: flex;
            gap: 10px;
            margin-bottom: 15px;
            justify-content: center;
        }
        .card-icons img {
            width: 40px;
        }
    </style>
</head>
<body>
    <form class="payment-form">
        <h2>Secure Payment</h2>

        <!-- Payment Method Selection -->
        <div class="payment-methods">
            <label>
                <input type="radio" name="payment-method" value="card" checked>
                Credit or Debit Card
            </label>
            <label>
                <input type="radio" name="payment-method" value="paypal">
                PayPal
            </label>
        </div>

        <!-- Credit/Debit Card Section -->
        <div id="card-section">
            <div class="card-icons">
                <img src="https://upload.wikimedia.org/wikipedia/commons/0/04/Mastercard-logo.png" alt="Mastercard">
                <img src="https://upload.wikimedia.org/wikipedia/commons/4/41/Visa_Logo.png" alt="Visa">
            </div>
            <label for="card-number">Card Number</label>
            <input type="text" id="card-number" placeholder="Enter your card number" required>

            <div style="display: flex; gap: 10px;">
                <div style="flex: 1;">
                    <label for="expiry-month">Expiry Month</label>
                    <select id="expiry-month" required>
                        <option value="" disabled selected>MM</option>
                        <option value="01">01</option>
                        <option value="02">02</option>
                        <option value="03">03</option>
                        <option value="04">04</option>
                        <option value="05">05</option>
                        <option value="06">06</option>
                        <option value="07">07</option>
                        <option value="08">08</option>
                        <option value="09">09</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                        
                    </select>
                </div>
                <div style="flex: 1;">
                    <label for="expiry-year">Expiry Year</label>
                    <select id="expiry-year" required>
                        <option value="" disabled selected>YY</option>
                        <option value="2024">2024</option>
                        <option value="2025">2025</option>
                        <option value="2026">2026</option>
                        <option value="2027">2027</option>
                        <option value="2028">2028</option>
                        <option value="2029">2029</option>
                        <option value="2030">2030</option>
                        <option value="2031">2031</option>
                        <option value="2032">2032</option>
                        <option value="2033">2033</option>
                        <option value="2034">2034</option>
                        <option value="2035">2035</option>
                        <option value="2036">2036</option>
                        <option value="2037">2037</option>
                        <option value="2038">2038</option>
                        <option value="2039">2039</option>
                        <option value="2040">2040</option>
                        <option value="2041">2041</option>
                        <option value="2042">2042</option>
                        <option value="2043">2043</option>
                        <option value="2044">2044</option>
                        <option value="2045">2045</option>
                        <option value="2046">2046</option>
                        <option value="2047">2047</option>
                                                
                    </select>
                </div>
            </div>

            <label for="cardholder-name">Cardholder Name</label>
            <input type="text" id="cardholder-name" placeholder="Name on the card" required>

            <label for="security-code">Security Code</label>
            <input type="password" id="security-code" placeholder="3 digits on back of card" required>
        </div>

        <!-- PayPal Section -->
        <div id="paypal-section" style="display: none;">
            <p>Pay securely with PayPal.</p>
            <button type="button" onclick="window.location.href='https://www.paypal.com/signin'">
                Pay with PayPal
            </button>
        </div>

        <!-- Submit Button -->
        <button type="submit">Pay Now</button>
    </form>

    <script>
        // Toggle between payment methods
        const paymentMethods = document.getElementsByName('payment-method');
        const cardSection = document.getElementById('card-section');
        const paypalSection = document.getElementById('paypal-section');

        paymentMethods.forEach(method => {
            method.addEventListener('change', () => {
                if (method.value === 'card') {
                    cardSection.style.display = 'block';
                    paypalSection.style.display = 'none';
                } else if (method.value === 'paypal') {
                    cardSection.style.display = 'none';
                    paypalSection.style.display = 'block';
                }
            });
        });
    </script>
</body>
</html>

