<%-- 
    Document   : ticket
    Created on : Dec 1, 2024, 11:54:13 PM
    Author     : DELL
--%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <link rel="icon" type="image/favicon-icon" href="favicon.png">
        <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
       
        
        <!--CDN link bootstrap!-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
        <link href="WEB-INF/book.css" rel="stylesheet" type="text/css">
        
        <title>Seat Booking</title>

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

        .container
        {
            width: 70%;
            max-width: 1200px;
            margin: 0 auto;
            text-align: center;
            padding-top: 50px;
        }

        .header
        {
            font-size: 20px;
            margin: 0 auto;
            padding: 10px;
        }

        .p1
        {
            font-size: 18px;
            font-weight: bold;
            margin: 20px 0;
        }

        .legend
        {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 20px;
            margin-left: -700px;
        }

        .legend span
        {
            display: inline-flex;
            align-items: center;
        }

        .square
        {
            height: 20px;
            width: 20px;
            margin-right: 8px;
        }

        table
        {
            width: 100%;
            margin: 20px auto;
            text-align: center;
            border-spacing: 5px;
        }

        .t1, .t2, .t3
        {
            padding: 10px;
        }

        input.i
        {
            width: 40px;
            height: 40px;
            background-color: #d4d4d4;
            border: 1px solid #ccc;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        hr
        {
            width: 80%;
            margin: 10px auto;
        }

        p input
        {
            background-color: deeppink;
            color: white;
            padding: 8px;
            margin: 0 10px;
            border: 0;
        }


        button
        {
            padding: 10px 20px;
            margin: 5px;
            border: none;
            border-radius: 5px;
            background-color: yellow;
            color: black;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover
        {
            background-color: lightgoldenrodyellow;
        }


        @media (max-width: 991px)
        {
            .container
            {
                width: 90%;
            }

            html
            {
                font-size: 80%;
            }

            button
            {
                font-size: 14px;
            }
        }

        @media (max-width: 768px)
        {
            html
            {
                font-size: 70%;
            }

            .container
            {
                width: 100%;
            }

            button
            {
                font-size: 13px;
                padding: 8px;
            }
        }

        @media (max-width: 450px)
        {
            html
            {
                font-size: 55%;
            }

            .container
            {
                width: 100%;
            }

            table
            {
                width: 100%;
            }

            p input
            {
                padding: 5px;
                margin: 5px;
            }

            button
            {
                font-size: 12px;
            }
        }
    </style>
</head>

<body>




<div class="content-wrapper">
    <header>

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark custom-navbar">
            <div class="container-fluid">
                <h1>ABC CINEMA</h1>

                <br>

                <ul>
                    <li>
                        <a href="index.jsp">Home</a>
                    </li>
                    <li>
                        <a href="movie.jsp">Movies</a>
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
            </div>
        </nav>
    </header>

    <br><br>

    <div class="container">
        <div class="header">
            <h3>Buy Now</h3>
            <!--get the movie name from movie page-->
            <h2> ${Title}</h2>
            <h3>

                <i class="fa fa-calendar" style="font-size:24px"></i>
                <span id="datetime"></span>


            </h3>
            <h2>Digital 3D</h2>
        </div>

        <hr>

        <p class="p1">Showtime
            <!--get show time in DB-->
            <input type="button" value="${showTime}">

        </p>

        <hr>

        <table id="seatTable">
            <!-- Row G -->
            <tr>
                <td class="t1">
                    <!--onclick- select seats-->
                    <input class="i" onclick="selectSeat(this)" type="button" value="G1" id="1">
                    <input class="i" onclick="selectSeat(this)" type="button" value="G2" id="2">
                    <input class="i" onclick="selectSeat(this)" type="button" value="G3" id="3">
                    <input class="i" onclick="selectSeat(this)" type="button" value="G4" id="4">
                    <input class="i" onclick="selectSeat(this)" type="button" value="G5" id="5">
                    <input class="i" onclick="selectSeat(this)" type="button" value="G6" id="6">
                </td>
                <td class="t2">
                    <input class="i" onclick="selectSeat(this)" type="button" value="G7" id="7">
                    <input class="i" onclick="selectSeat(this)" type="button" value="G8" id="8">
                    <input class="i" onclick="selectSeat(this)" type="button" value="G9" id="9">
                    <input class="i" onclick="selectSeat(this)" type="button" value="G10" id="10">
                    <input class="i" onclick="selectSeat(this)" type="button" value="G11" id="11">
                    <input class="i" onclick="selectSeat(this)" type="button" value="G12" id="12">
                    <input class="i" onclick="selectSeat(this)" type="button" value="G13" id="13">
                    <input class="i" onclick="selectSeat(this)" type="button" value="G14" id="14">
                    <input class="i" onclick="selectSeat(this)" type="button" value="G15" id="15">
                    <input class="i" onclick="selectSeat(this)" type="button" value="G16" id="16">
                </td>
                <td class="t3">
                    <input class="i" onclick="selectSeat(this)" type="button" value="G17" id="17">
                    <input class="i" onclick="selectSeat(this)" type="button" value="G18" id="18">
                    <input class="i" onclick="selectSeat(this)" type="button" value="G19" id="19">
                    <input class="i" onclick="selectSeat(this)" type="button" value="G20" id="20">
                    <input class="i" onclick="selectSeat(this)" type="button" value="G21" id="21">
                    <input class="i" onclick="selectSeat(this)" type="button" value="G22" id="22">
                </td>
            </tr>
            <!-- Row F -->
            <tr>
                <td class="t1">
                    <input class="i" onclick="selectSeat(this)" type="button" value="F1" id="23">
                    <input class="i" onclick="selectSeat(this)" type="button" value="F2" id="24">
                    <input class="i" onclick="selectSeat(this)" type="button" value="F3" id="25">
                    <input class="i" onclick="selectSeat(this)" type="button" value="F4" id="26">
                    <input class="i" onclick="selectSeat(this)" type="button" value="F5" id="27">
                    <input class="i" onclick="selectSeat(this)" type="button" value="F6" id="28">
                </td>
                <td class="t2">
                    <input class="i" onclick="selectSeat(this)" type="button" value="F7" id="29">
                    <input class="i" onclick="selectSeat(this)" type="button" value="F8" id="30">
                    <input class="i" onclick="selectSeat(this)" type="button" value="F9" id="31">
                    <input class="i" onclick="selectSeat(this)" type="button" value="F10" id="32">
                    <input class="i" onclick="selectSeat(this)" type="button" value="F11" id="33">
                    <input class="i" onclick="selectSeat(this)" type="button" value="F12" id="34">
                    <input class="i" onclick="selectSeat(this)" type="button" value="F13" id="35">
                    <input class="i" onclick="selectSeat(this)" type="button" value="F14" id="36">
                    <input class="i" onclick="selectSeat(this)" type="button" value="F15" id="37">
                    <input class="i" onclick="selectSeat(this)" type="button" value="F16" id="38">
                </td>
                <td class="t3">
                    <input class="i" onclick="selectSeat(this)" type="button" value="F17" id="39">
                    <input class="i" onclick="selectSeat(this)" type="button" value="F18" id="40">
                    <input class="i" onclick="selectSeat(this)" type="button" value="F19" id="41">
                    <input class="i" onclick="selectSeat(this)" type="button" value="F20" id="42">
                    <input class="i" onclick="selectSeat(this)" type="button" value="F21" id="43">
                    <input class="i" onclick="selectSeat(this)" type="button" value="F22" id="44">
                </td>
            </tr>
            <!-- Row E -->
            <tr>
                <td class="t1">
                    <input class="i" onclick="selectSeat(this)" type="button" value="E1" id="45">
                    <input class="i" onclick="selectSeat(this)" type="button" value="E2" id="46">
                    <input class="i" onclick="selectSeat(this)" type="button" value="E3" id="47">
                    <input class="i" onclick="selectSeat(this)" type="button" value="E4" id="48">
                    <input class="i" onclick="selectSeat(this)" type="button" value="E5" id="49">
                    <input class="i" onclick="selectSeat(this)" type="button" value="E6" id="50">
                </td>
                <td class="t2">
                    <input class="i" onclick="selectSeat(this)" type="button" value="E7" id="51">
                    <input class="i" onclick="selectSeat(this)" type="button" value="E8" id="52">
                    <input class="i" onclick="selectSeat(this)" type="button" value="E9" id="53">
                    <input class="i" onclick="selectSeat(this)" type="button" value="E10" id="54">
                    <input class="i" onclick="selectSeat(this)" type="button" value="E11" id="55">
                    <input class="i" onclick="selectSeat(this)" type="button" value="E12" id="56">
                    <input class="i" onclick="selectSeat(this)" type="button" value="E13" id="57">
                    <input class="i" onclick="selectSeat(this)" type="button" value="E14" id="58">
                    <input class="i" onclick="selectSeat(this)" type="button" value="E15" id="59">
                    <input class="i" onclick="selectSeat(this)" type="button" value="E16" id="60">
                </td>
                <td class="t3">
                    <input class="i" onclick="selectSeat(this)" type="button" value="E17" id="61">
                    <input class="i" onclick="selectSeat(this)" type="button" value="E18" id="62">
                    <input class="i" onclick="selectSeat(this)" type="button" value="E19" id="63">
                    <input class="i" onclick="selectSeat(this)" type="button" value="E20" id="64">
                    <input class="i" onclick="selectSeat(this)" type="button" value="E21" id="65">
                    <input class="i" onclick="selectSeat(this)" type="button" value="E22" id="66">
                </td>
            </tr>
            <!-- Row D -->
            <tr>
                <td class="t1">
                    <input class="i" onclick="selectSeat(this)" type="button" value="D1" id="67">
                    <input class="i" onclick="selectSeat(this)" type="button" value="D2" id="68">
                    <input class="i" onclick="selectSeat(this)" type="button" value="D3" id="69">
                    <input class="i" onclick="selectSeat(this)" type="button" value="D4" id="70">
                    <input class="i" onclick="selectSeat(this)" type="button" value="D5" id="71">
                    <input class="i" onclick="selectSeat(this)" type="button" value="D6" id="72">
                </td>
                <td class="t2">
                    <input class="i" onclick="selectSeat(this)" type="button" value="D7" id="73">
                    <input class="i" onclick="selectSeat(this)" type="button" value="D8" id="74">
                    <input class="i" onclick="selectSeat(this)" type="button" value="D9" id="75">
                    <input class="i" onclick="selectSeat(this)" type="button" value="D10" id="76">
                    <input class="i" onclick="selectSeat(this)" type="button" value="D11" id="77">
                    <input class="i" onclick="selectSeat(this)" type="button" value="D12" id="78">
                    <input class="i" onclick="selectSeat(this)" type="button" value="D13" id="79">
                    <input class="i" onclick="selectSeat(this)" type="button" value="D14" id="80">
                    <input class="i" onclick="selectSeat(this)" type="button" value="D15" id="81">
                    <input class="i" onclick="selectSeat(this)" type="button" value="D16" id="82">
                </td>
                <td class="t3">
                    <input class="i" onclick="selectSeat(this)" type="button" value="D17" id="83">
                    <input class="i" onclick="selectSeat(this)" type="button" value="D18" id="84">
                    <input class="i" onclick="selectSeat(this)" type="button" value="D19" id="85">
                    <input class="i" onclick="selectSeat(this)" type="button" value="D20" id="86">
                    <input class="i" onclick="selectSeat(this)" type="button" value="D21" id="87">
                    <input class="i" onclick="selectSeat(this)" type="button" value="D22" id="88">
                </td>
            </tr>

            <!-- Row C -->
            <tr>
                <td class="t1">
                    <input class="i" onclick="selectSeat(this)" type="button" value="C1" id="89">
                    <input class="i" onclick="selectSeat(this)" type="button" value="C2" id="90">
                    <input class="i" onclick="selectSeat(this)" type="button" value="C3" id="91">
                    <input class="i" onclick="selectSeat(this)" type="button" value="C4" id="92">
                    <input class="i" onclick="selectSeat(this)" type="button" value="C5" id="93">
                    <input class="i" onclick="selectSeat(this)" type="button" value="C6" id="94">
                </td>
                <td class="t2">
                    <input class="i" onclick="selectSeat(this)" type="button" value="C7" id="95">
                    <input class="i" onclick="selectSeat(this)" type="button" value="C8" id="96">
                    <input class="i" onclick="selectSeat(this)" type="button" value="C9" id="97">
                    <input class="i" onclick="selectSeat(this)" type="button" value="C10" id="98">
                    <input class="i" onclick="selectSeat(this)" type="button" value="C11" id="99">
                    <input class="i" onclick="selectSeat(this)" type="button" value="C12" id="100">
                    <input class="i" onclick="selectSeat(this)" type="button" value="C13" id="101">
                    <input class="i" onclick="selectSeat(this)" type="button" value="C14" id="102">
                    <input class="i" onclick="selectSeat(this)" type="button" value="C15" id="103">
                    <input class="i" onclick="selectSeat(this)" type="button" value="C16" id="104">

                </td>
                <td class="t3">
                    <input class="i" onclick="selectSeat(this)" type="button" value="C17" id="105">
                    <input class="i" onclick="selectSeat(this)" type="button" value="C18" id="106">
                    <input class="i" onclick="selectSeat(this)" type="button" value="C19" id="107">
                    <input class="i" onclick="selectSeat(this)" type="button" value="C20" id="108">
                    <input class="i" onclick="selectSeat(this)" type="button" value="C21" id="109">
                    <input class="i" onclick="selectSeat(this)" type="button" value="C22" id="110">
                </td>
            </tr>

            <!-- Row B -->
            <tr>
                <td class="t1">
                    <input class="i" onclick="selectSeat(this)" type="button" value="B1" id="111">
                    <input class="i" onclick="selectSeat(this)" type="button" value="B2" id="112">
                    <input class="i" onclick="selectSeat(this)" type="button" value="B3" id="113">
                    <input class="i" onclick="selectSeat(this)" type="button" value="B4" id="114">
                    <input class="i" onclick="selectSeat(this)" type="button" value="B5" id="115">
                    <input class="i" onclick="selectSeat(this)" type="button" value="B6" id="116">
                </td>
                <td class="t2">
                    <input class="i" onclick="selectSeat(this)" type="button" value="B7" id="117">
                    <input class="i" onclick="selectSeat(this)" type="button" value="B8" id="118">
                    <input class="i" onclick="selectSeat(this)" type="button" value="B9" id="119">
                    <input class="i" onclick="selectSeat(this)" type="button" value="B10" id="120">
                    <input class="i" onclick="selectSeat(this)" type="button" value="B11" id="121">
                    <input class="i" onclick="selectSeat(this)" type="button" value="B12" id="122">
                    <input class="i" onclick="selectSeat(this)" type="button" value="B13" id="123">
                    <input class="i" onclick="selectSeat(this)" type="button" value="B14" id="124">
                    <input class="i" onclick="selectSeat(this)" type="button" value="B15" id="125">
                    <input class="i" onclick="selectSeat(this)" type="button" value="B16" id="126">
                </td>
                <td class="t3">
                    <input class="i" onclick="selectSeat(this)" type="button" value="B17" id="127">
                    <input class="i" onclick="selectSeat(this)" type="button" value="B18" id="128">
                    <input class="i" onclick="selectSeat(this)" type="button" value="B19" id="129">
                    <input class="i" onclick="selectSeat(this)" type="button" value="B20" id="130">
                    <input class="i" onclick="selectSeat(this)" type="button" value="B21" id="131">
                    <input class="i" onclick="selectSeat(this)" type="button" value="B22" id="132">
                </td>
            </tr>
            <!-- Row A -->
            <tr>
                <td class="t1" style="margin-left:400px;"></td>
                <td class="t2">
                    <input class="i" onclick="selectSeat(this)" type="button" value="A1" id="133">
                    <input class="i" onclick="selectSeat(this)" type="button" value="A2" id="134">
                    <input class="i" onclick="selectSeat(this)" type="button" value="A3" id="135">
                    <input class="i" onclick="selectSeat(this)" type="button" value="A4" id="136">
                    <input class="i" onclick="selectSeat(this)" type="button" value="A5" id="137">
                    <input class="i" onclick="selectSeat(this)" type="button" value="A6" id="138">
                    <input class="i" onclick="selectSeat(this)" type="button" value="A7" id="139">
                    <input class="i" onclick="selectSeat(this)" type="button" value="A8" id="140">
                </td>
        </table>



        <br>
        <br>

        <p style="text-align: center; font-size: 20px;">Screen</p>

        <hr style="width: 50%; margin: 0 auto;">

        <br>
        <br>

        <div class="legend">
                <span>
                    <div class="square" style="background-color:gainsboro; margin-left: 750px;"></div>
                    Available
                </span>

            <span>
                    <div class="square" style="background-color: blue;"></div>
                    Selected
                </span>

            <span>
                    <div class="square" style="background-color: red;"></div>
                    Reserved
                </span>
        </div>

        <br>
        <br>

        <hr>

        <p style="text-align: center; font-size: 18px; margin-top: 20px;">Ticket Price
            <span>Rs.1800.00</span>
        </p>

        <hr>
        <!-- go to movie page back -->
        <form action="movie.jsp" method="post">
            <button>Back</button>
        </form>


        <!-- Go to Payment Page -->
        <form action="payment.jsp" method="post">
            <!-- Hidden fields to send data to payment.jsp -->
            <input type="hidden" id="selectedSeats" name="selectedSeats" value="">
            <input type="hidden" id="totalPrice" name="totalPrice" value="">

            <button>Continue</button>
        </form>
    </div>
</div>

<br>

<footer>

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
    // Update the date and time front-end
    function updateDateTime()
    {
        const now = new Date();
        const currentDateTime = now.toLocaleString();
        document.querySelector('#datetime').textContent = currentDateTime;
    }

    setInterval(updateDateTime, 1000);

    const seatPrices =1800;

    let selectedSeats = [];
    //Selected seat ids for add DB
    let selectedSeatIDs = [];

    function selectSeat(button)
    {
        var seatId = button.id;

        // Check seatId is already in the array
        if (!selectedSeatIDs.includes(seatId)) {
            selectedSeatIDs.push(seatId);
        }
        console.log("clicked");
        const seatID = button.innerHTML;

        // Check if seat selected
        if (selectedSeats.some(seat => seat.seat === seatID))
        {
            //remove it
            selectedSeats = selectedSeats.filter(seat => seat.seat !== seatID);
            button.classList.remove("selected");

            // Change available color
            button.style.backgroundColor = 'gainsboro';
        }
        else
        {
                selectedSeats.push({ seat: seatID });

                button.classList.add("selected");
                button.style.backgroundColor = 'blue';
        }

        // Update hidden fields with selected seats and total price
        updateFormFields();
    }

    function updateFormFields()
    {
        const seatField = document.getElementById("selectedSeats");
        const priceField = document.getElementById("totalPrice");

        // Calculate total price
        const totalPrice = selectedSeats.reduce((sum, seat) =>
        {
            return sum + seatPrices[seat.type];
        }, 0);

        // Update form hidden fields
        seatField.value = JSON.stringify(selectedSeats);
        priceField.value = totalPrice;
    }

</script>


<script type="text/javascript">
    //for seat booking
    var jsonData = <%= request.getAttribute("jsonData") %>;

    for (i=0;i<jsonData.length;i++)
    {
        const element = document.getElementById(jsonData[i]);
        element.style.backgroundColor= "red";
        //curser block
        element.disabled = true;
        element.style.color = "white";
    }
    const seatPrices = {
        adult: 1800,
        child: 1500
    };

    let selectedSeats = [];

    function selectSeat(button) {
        const seatID = button.value;

        // Check if seat is already selected
        if (selectedSeats.some(seat => seat.seat === seatID)) {
            // Remove seat
            selectedSeats = selectedSeats.filter(seat => seat.seat !== seatID);
            button.classList.remove("selected");
            button.style.backgroundColor = 'gainsboro';
        } else {
            // Prompt for seat type (adult/child)
            const ageGroup = prompt("Enter 'adult' or 'child' for " + seatID);
            if (ageGroup === "adult" || ageGroup === "child") {
                selectedSeats.push({ seat: seatID, type: ageGroup });
                button.classList.add("selected");
                button.style.backgroundColor = 'blue';
            } else {
                alert("Invalid selection. Please enter 'adult' or 'child'.");
            }
        }

        // Update hidden fields with selected seats and total price
        updateFormFields();
    }

    function updateFormFields() {
        const seatField = document.getElementById("selectedSeats");
        const priceField = document.getElementById("totalPrice");

        // Calculate total price
        const totalPrice = selectedSeats.reduce((sum, seat) => {
            return sum + seatPrices[seat.type];
        }, 0);

        // Update form hidden fields
        seatField.value = JSON.stringify(selectedSeats);
        priceField.value = totalPrice;
    };
    
</script>
</body>
</html>