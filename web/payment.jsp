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
  <title>Payment Form</title>
</head>
<body style="font-family: Arial, sans-serif; background: #121212; display: flex; justify-content: center; align-items: center; height: 100vh; color: #fff; margin: 0;">
  <div style="background: #1e1e2f; padding: 2rem; border-radius: 10px; box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3); max-width: 400px; width: 100%;">
    <h1 style="text-align: center; margin-bottom: 1.5rem; font-size: 1.5rem;">Payment Details</h1>
    
    <!-- Total Business Section -->
    <div id="total-business" style="margin-bottom: 1.5rem;">
      <h2 style="font-size: 1.25rem; color: #00c4cc; text-align: center;">Total Price: $500.00</h2>
      <p style="font-size: 1rem; color: #ccc; text-align: center;">The Total Cost For Your Payment</p>
    </div>

    <div id="payment-icons" style="display: flex; justify-content: space-around; margin-bottom: 1rem;">
      <img id="visa-icon" src="https://www.google.com/url?sa=i&url=https%3A%2F%2Fencrypted-tbn3.gstatic.com%2Fimages%3Fq%3Dtbn%3AANd9GcR_FrTaaaGEk9eULQpb355SxtAFizG5jleBqp_1q8j2dgMxqfHT&psig=AOvVaw3WvMflc_7N9gQl4mCz2Vx2&ust=1733329785163000&source=images&cd=vfe&opi=89978449&ved=0CBMQjhxqFwoTCOCw1-OCjIoDFQAAAAAdAAAAABAE.svg" alt="Visa" style="width: 40px; background: #fff; border-radius: 5px; padding: 5px; border: 1px solid #ccc; cursor: pointer;" onclick="toggleForm('visa')">
      <img id="mastercard-icon" src="https://upload.wikimedia.org/wikipedia/commons/2/2a/Mastercard-logo.svg" alt="MasterCard" style="width: 40px; background: #fff; border-radius: 5px; padding: 5px; border: 1px solid #ccc; cursor: pointer;" onclick="toggleForm('mastercard')">
      <img id="paypal-icon" src="https://upload.wikimedia.org/wikipedia/commons/b/b5/PayPal.svg" alt="PayPal" style="width: 40px; background: #fff; border-radius: 5px; padding: 5px; border: 1px solid #ccc; cursor: pointer;" onclick="toggleForm('paypal')">
    </div>
    
    <div id="form-container">
      <!-- Default Credit Card Form -->
      <form id="credit-card-form">
        <div style="display: flex; flex-direction: column; gap: 0.5rem; margin-bottom: 1rem;">
          <label for="card-number">Card Number</label>
          <input type="text" id="card-number" placeholder="1234 5678 9012 3456" style="padding: 0.5rem; border-radius: 5px; border: 1px solid #555; background: #2b2b3f; color: #fff;">
        </div>
        <div style="display: flex; justify-content: space-between; gap: 1rem; margin-bottom: 1rem;">
          <div style="display: flex; flex-direction: column; gap: 0.5rem; flex: 1;">
            <label for="expiry-month">Expiry Date</label>
            <div style="display: flex; gap: 0.5rem;">
              <select id="expiry-month" style="padding: 0.5rem; border-radius: 5px; border: 1px solid #555; background: #2b2b3f; color: #fff;">
                <option>MM</option>
                <option>01</option>
                <option>02</option>
                <option>03</option>
                <option>04</option>
                <option>05</option>
                <option>06</option>
                <option>07</option>
                <option>08</option>
                <option>09</option>
                <option>10</option>
                <option>11</option>
                <option>12</option>
              </select>
              <select id="expiry-year" style="padding: 0.5rem; border-radius: 5px; border: 1px solid #555; background: #2b2b3f; color: #fff;">
                <option>YY</option>
                <option>23</option>
                <option>24</option>
                <option>25</option>
                <option>26</option>
                <option>27</option>
              </select>
            </div>
          </div>
          <div style="display: flex; flex-direction: column; gap: 0.5rem; flex: 1;">
            <label for="security-code">Security Code</label>
            <input type="text" id="security-code" placeholder="CVV" style="padding: 0.5rem; border-radius: 5px; border: 1px solid #555; background: #2b2b3f; color: #fff;">
          </div>
        </div>
        <div style="display: flex; flex-direction: column; gap: 0.5rem; margin-bottom: 1rem;">
          <label for="cardholder-name">Cardholder Name</label>
          <input type="text" id="cardholder-name" placeholder="Name on the Card" style="padding: 0.5rem; border-radius: 5px; border: 1px solid #555; background: #2b2b3f; color: #fff;">
        </div>
        <!-- Centering Pay Now Button -->
        <div style="display: flex; justify-content: center; margin-top: 1rem;">
          <button type="submit" style="padding: 0.8rem; border: none; border-radius: 5px; background: #007BFF; color: #fff; font-size: 1rem; cursor: pointer; transition: background 0.3s ease; width: 100%;">Pay Now</button>
        </div>
      </form>
    </div>
  </div>

  <script>
    function toggleForm(method) {
      const formContainer = document.getElementById('form-container');
      const icons = {
        visa: document.getElementById('visa-icon'),
        mastercard: document.getElementById('mastercard-icon'),
        paypal: document.getElementById('paypal-icon')
      };

      // Reset icon borders
      Object.values(icons).forEach(icon => {
        icon.style.border = '1px solid #ccc';
      });

      // Highlight selected icon
      icons[method].style.border = '2px solid #007BFF';

      if (method === 'paypal') {
        formContainer.innerHTML = `
          <form id="paypal-form">
            <div style="display: flex; flex-direction: column; gap: 0.5rem; margin-bottom: 1rem;">
              <label for="paypal-email">PayPal Email</label>
              <input type="email" id="paypal-email" placeholder="example@paypal.com" style="padding: 0.5rem; border-radius: 5px; border: 1px solid #555; background: #2b2b3f; color: #fff;">
            </div>
            <div style="display: flex; justify-content: center; margin-top: 1rem;">
              <button type="submit" style="padding: 0.8rem; border: none; border-radius: 5px; background: #007BFF; color: #fff; font-size: 1rem; cursor: pointer; transition: background 0.3s ease; width: 100%;">Pay Now</button>
            </div>
          </form>
        `;
      } else {
        formContainer.innerHTML = `
          <form id="credit-card-form">
            <div style="display: flex; flex-direction: column; gap: 0.5rem; margin-bottom: 1rem;">
              <label for="card-number">Card Number</label>
              <input type="text" id="card-number" placeholder="1234 5678 9012 3456" style="padding: 0.5rem; border-radius: 5px; border: 1px solid #555; background: #2b2b3f; color: #fff;">
            </div>
            <div style="display: flex; justify-content: space-between; gap: 1rem; margin-bottom: 1rem;">
              <div style="display: flex; flex-direction: column; gap: 0.5rem; flex: 1;">
                <label for="expiry-month">Expiry Date</label>
                <div style="display: flex; gap: 0.5rem;">
                  <select id="expiry-month" style="padding: 0.5rem; border-radius: 5px; border: 1px solid #555; background: #2b2b3f; color: #fff;">
                    <option>MM</option>
                    <option>01</option>
                    <option>02</option>
                    <option>03</option>
                    <option>04</option>
                    <option>05</option>
                    <option>06</option>
                    <option>07</option>
                    <option>08</option>
                    <option>09</option>
                    <option>10</option>
                    <option>11</option>
                    <option>12</option>
                  </select>
                  <select id="expiry-year" style="padding: 0.5rem; border-radius: 5px; border: 1px solid #555; background: #2b2b3f; color: #fff;">
                    <option>YY</option>
                    <option>23</option>
                    <option>24</option>
                    <option>25</option>
                    <option>26</option>
                    <option>27</option>
                  </select>
                </div>
              </div>
              <div style="display: flex; flex-direction: column; gap: 0.5rem; flex: 1;">
                <label for="security-code">Security Code</label>
                <input type="text" id="security-code" placeholder="CVV" style="padding: 0.5rem; border-radius: 5px; border: 1px solid #555; background: #2b2b3f; color: #fff;">
              </div>
            </div>
            <div style="display: flex; flex-direction: column; gap: 0.5rem; margin-bottom: 1rem;">
              <label for="cardholder-name">Cardholder Name</label>
              <input type="text" id="cardholder-name" placeholder="Name on the Card" style="padding: 0.5rem; border-radius: 5px; border: 1px solid #555; background: #2b2b3f; color: #fff;">
            </div>
            <!-- Centering Pay Now Button -->
            <div style="display: flex; justify-content: center; margin-top: 1rem;">
              <button type="submit" style="padding: 0.8rem; border: none; border-radius: 5px; background: #007BFF; color: #fff; font-size: 1rem; cursor: pointer; transition: background 0.3s ease; width: 100%;">Pay Now</button>
            </div>
          </form>
        `;
      }
    }
  </script>
</body>
</html>
