<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="images/sricine.ico" type="image/icon type">
        <title>recover password</title>
        <link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    </head>
    <body>
   
<section class="bg-light py-3 py-md-5">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-12 col-sm-10 col-md-8 col-lg-6 col-xl-5 col-xxl-4">
        <div class="card border border-light-subtle rounded-3 shadow-sm">
          <div class="card-body p-3 p-md-4 p-xl-5">
            <div class="text-center mb-3">
              <a href="#!">
                <img src="sricine.png" alt="BootstrapBrain Logo" width="350" height="114">
              </a>
            </div>
            <h2 class="fs-6 fw-normal text-center text-secondary mb-4">Provide the email address associated with your account to recover your password.</h2>
            
            <form action="forgotPassword" method="POST">
              <div class="row gy-2 overflow-hidden">
                <div class="col-12">
                  <div class="form-floating">
                    <input type="email" class="form-control" name="email" id="email" placeholder="name@example.com" required>
                    <label for="email" class="form-label">Email</label>
                  </div>
                </div>
                <div class="col-12">
                  <div class="d-grid my-3">
                    <button class="btn btn-primary btn-lg" type="submit">Reset Password</button>
                  </div>
                </div>
                <div class="col-12">
                  <div class="d-flex gap-2 justify-content-between">
                    <a href="login.jsp" class="link-primary text-decoration-none">Log In</a>
                    <a href="login.jsp" class="link-primary text-decoration-none">Register</a>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
    </body>
</html>
