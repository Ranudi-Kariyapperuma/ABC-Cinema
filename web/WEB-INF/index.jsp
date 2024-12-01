<%-- 
    Document   : index.jsp
    Created on : Dec 1, 2024, 6:35:46 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="homePageStyle.css">
       
        <title>ABC Cinema</title>
    </head>
    <body>
       <header>
        <h1>Welcome to ABC Cinema</h1>
        <nav>
            <ul>
                <li><a href="movies.jsp">Movies</a></li>
                <li><a href="reservations.jsp">Book Tickets</a></li>
                <li><a href="feedback.jsp">Feedback</a></li>
                <li><a href="contact.jsp">Contact Us</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <h2>Now Showing</h2>
        <p>Explore the latest blockbuster movies and book your tickets online!</p>
        <form action="homePageServlet" method="post">
            <label center for="username">Enter Username:</label>
            <input type="text" id="username" name="username" required><br>
            <label center for="password"> Password:</label>
            <input type="password" name="password" value="" required /> <br><br>
            <button type="submit">Login</button>
        </form>
    </main>
    <footer>
        <p>© 2024 ABC Cinema. All Rights Reserved.</p>
    </footer>
    </body>
</html>
