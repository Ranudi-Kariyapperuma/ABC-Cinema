<%-- 
    Document   : index.jsp
    Created on : Dec 1, 2024, 8:11:28 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="HomePage/homePageStyle.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ABC Cinema</title>
    </head>
    <body>
       <header>
                <h1>ABC CINEMA</h1>
                <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="movies.jsp">Movies</a></li>
                <li><a href="ticket.jsp">Book Tickets</a></li>
                <li><a href="feedback.jsp">Feedback</a></li>
                <li><a href="contact.jsp">Contact Us</a></li>
            </ul>
                </nav>
    </header>
    <main>
        <h2>Now Showing</h2>
        <p>Explore the latest blockbuster movies and book your tickets online!</p>
     
        <%--<form action="homePageServlet" method="post">
            <label center for="username">Enter Username:</label>
            <input type="text" id="username" name="username" required><br>
            <label center for="password"> Password:</label>
            <input type="password" name="password" value="" required /> <br><br>
            <button type="submit">Login</button>
        </form> --%>
        
    </main>
    <footer>
        <p>© 2024 ABC Cinema. All Rights Reserved.</p>
        <p> <ul>
                <li><a href="pr.jsp">Privacy Policy</a></li>
                <li><a href="contact.jsp">Contact Us</a></li>
                <li><a href="tm.jsp">Terms and Conditions</a></li>
            </ul></p>
    </footer>
    </body>
</html>

