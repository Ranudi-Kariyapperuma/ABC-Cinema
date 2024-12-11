<%-- 
    Document   : movie
    Created on : Dec 2, 2024, 8:41:45 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
        <link rel="icon" type="image/favicon-icon" href="favicon.png">
        <!--CDN link bootstrap!-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">

         
        <link rel="stylesheet" href="MoviePage/MoviePageStyle.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ABC Cinema</title>
         
         
         </head>
    <body>
  <div class="container-fluid">    
      <div class="content-wrapper">
        <header>
           <nav class="navbar navbar-expand-lg navbar-dark bg-dark custom-navbar">
         
                   
               <h1 style="margin-left: 10px;">ABC CINEMA</h1> <br>
                  <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ms-auto">
                       <li><a href="index.jsp">Home</a></li>
                       <li><a href="movie.jsp">Movies</a></li>
                       <li><a href="booking.jsp">Book Tickets</a></li>
                       <li><a href="feedback.jsp">Feedback</a></li>
                       <li><a href="contact.jsp">Contact Us</a></li>
                       <li><a href="adminLogin.jsp">Login</a></li>
                       </ul>
                  </div>
                
                </nav>
        </header>
        
    <div class="container my-5">
    <h2 class="now-showing">Now Showing</h2>
    <div class="row">
        <!-- Movie Card 1 -->
        <div class="col-md-4">
            <div class="card" style="width: 18rem;">
                <img src="Images/png1.jpg" class="card-img-top" alt="Movie 1" >
                <div class="card-body">
                    <h5 class="card-title">The Queen's Gambit</h5>
                    <p class="card-text"> Orphaned chess prodigy Beth Harmon fights addiction while aiming to become the world's greatest chess player during the Cold War.</p>
                   <div class="center-container">
                    <a href="booking.jsp?movie=3" class="btn btn-primary">Book Now</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Movie Card 2 -->
        <div class="col-md-4">
            <div class="card"style="width: 18rem;">
                <img src="Images/png2.jpg" class="card-img-top" alt="Movie 2">
                <div class="card-body">
                    <h5 class="card-title">Shrew's Nest</h5>
                    <p class="card-text"> Montse, an agoraphobic woman, is forced to shelter her injured neighbor who crawls to her door, disrupting her solitary life.</p>
                      <div class="center-container">
                    <a href="booking.jsp?movie=3" class="btn btn-primary">Book Now</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Movie Card 3 -->
        <div class="col-md-4" >
            <div class="card" style="width: 18rem;">
                <img src="Images/png3.jpg" class="card-img-top" alt="Movie 3">
                <div class="card-body">
                    <h5 class="card-title">Manikarnika</h5>
                    <p class="card-text"> Manikarnika, the queen of Jhansi, defies the East India Company’s attempt to annex her kingdom, sparking a fierce revolution against British rule.</p>
                    <div class="center-container">
                     <div class="center-container">
                    <a href="booking.jsp?movie=3" class="btn btn-primary">Book Now</a>
                    </div>
                    </div>
                </div>  
            </div>
        </div>  
    </div>
    
     <div class="row">
        <!-- Movie Card 1 -->
        <div class="col-md-4">
            <div class="card" style="width: 18rem;">
                <img src="Images/avatar.jpg" class="card-img-top" alt="Movie 1" >
                <div class="card-body">
                    <h5 class="card-title">Avatar</h5>
                    <p class="card-text">Avatar follows a paraplegic marine who explores a lush alien world and becomes involved in a battle to protect its indigenous inhabitants from exploitation.</p>
                    <div class="center-container">
                    <a href="booking.jsp?movie=3" class="btn btn-primary">Book Now</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Movie Card 2 -->
        <div class="col-md-4">
            <div class="card"style="width: 18rem;">
                <img src="Images/goal.jpg" class="card-img-top" alt="Movie 2">
                <div class="card-body">
                    <h5 class="card-title">Gole</h5>
                    <p class="card-text">Gole is a film that explores the complexities of love, identity, and societal expectations through the emotional journey of its central characters.</p>
                     <div class="center-container">
                    <a href="booking.jsp?movie=3" class="btn btn-primary">Book Now</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Movie Card 3 -->
        <div class="col-md-4" >
            <div class="card" style="width: 18rem;">
                <img src="Images/png6.jpg" class="card-img-top" alt="Movie 3">
                <div class="card-body">
                    <h5 class="card-title">Sardaar Gabbar Singh</h5>
                    <p class="card-text">The residents of Rathanpur, oppressed by the ruthless Bhairav Singh who seizes their land and terrorizes them, find hope and courage.</p>
                     <div class="center-container">
                    <a href="booking.jsp?movie=3" class="btn btn-primary" >Book Now</a>
                    </div>
                </div>  
            </div>
        </div>  
    </div>
   
</div>

           
    <footer>
        <p>© 2024 ABC Cinema. All Rights Reserved.</p>
        <p>     <a href="pr.jsp">Privacy Policy</a>&ensp; &ensp; 
                <a href="contact.jsp">Contact Us</a>&ensp;&ensp; 
                <a href="tm.jsp">Terms and Conditions</a>&ensp; &ensp; 
        </p>
    </footer>
          
        <!-- Bootstrap JS Bundle -->
   <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" 
   integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" 
integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
        
 </body>
</html>
