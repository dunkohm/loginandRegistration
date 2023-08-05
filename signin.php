<?php 
// Include the database connection file
include("includes/connection.php");
// Start the session (if not already started)
session_start();
// Generate a CSRF token if it doesn't exist in the session
if (!isset($_SESSION['csrf_token'])) {
    $_SESSION['csrf_token'] = bin2hex(random_bytes(32)); // Generate a random token
  }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
    <!-- css -->
    <link rel="stylesheet" href="style.css">
    <!-- bootsrap css link -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <!-- Font awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
     <style>
        .card{
    width: 350px;
    height: 300px;
    background-color: rgba(0, 0, 0, 0.4);
}
.signup_btn{
    color: var(--white);
    background-color: var(--primary);
}
.signup_btn:hover{
    color: #000;
    background-color: var(--white);
}
     </style>
</head>

<body>
    <div class="container d-flex align-items-center justify-content-center ">
        <div class="card">
            <!-- card header -->
            <div class="card-header">
                <h3 class="text-center text-white">Sign In</h3>

            </div>
            <!-- Card body -->
        <div class="card-body">
            <form action="" method="post">
                <!-- Enter Useremail -->
                <div class="input-group mb-3">
                   <span class="input-group-text" id="basic-addon1"><i class="fa fa-user" aria-hidden="true"></i></span>
                    <input type="text" class="form-control" placeholder="Enter your Email" aria-label="Username" aria-describedby="basic-addon1"  name="useremail">
                 </div>
                 <!-- Enter password -->
                 <div class="input-group mb-3">
                   <span class="input-group-text" id="basic-addon1"><i class="fa fa-lock" aria-hidden="true"></i></span>
                    <input type="password" class="form-control" placeholder="Enter your Password" aria-label="password" aria-describedby="basic-addon1"  name="password">
                 </div>
                 <!-- "Remember Me" checkbox -->
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="rememberMe" name="rememberMe">
                    <label class="form-check-label text-light" for="rememberMe">Remember me</label>
                </div>
                <!-- hidden input -->
                <input type="hidden" name="csrf_token" value="<?php echo $_SESSION['csrf_token']; ?>">

                 <div class="input-group">
                    <input type="submit" value="Sign In" name="login" class="btn signup_btn">
                 </div>
            </form>
        </div>
            <!-- card footer -->
            <div class="card-footer text-center text-white">
                Dont have an account? <a href="index.php" class="sign_up">Sign Up</a>
            </div>
        </div>
    </div> 
</body>
</html>
<?php
// Check if the form is submitted
if (isset($_POST['login'])) {
    // if (!isset($_POST['csrf_token']) || $_POST['csrf_token'] !== $_SESSION['csrf_token']) {
    //     // CSRF token is missing or invalid
    //     die("CSRF validation failed. Please try again.");
    // }
    $userEmail = $_POST['useremail'];
    $Password = $_POST['password'];
    
    // Validate user credentials against the database
    $sqlquery = "select * from `users` where user_email= '$userEmail'";
    $result =mysqli_query($con,$sqlquery);
    $rowCount=mysqli_num_rows($result);
    $row =mysqli_fetch_assoc($result);
    if (!$result) {
        die('Query execution failed: ' . mysqli_error($con));
    }    
    if ($rowCount > 0) {
        $hashedPassword = $row['user_password'];
        // Verify password
        if (password_verify($Password,$hashedPassword)) {
            // User logged in successfully
            $_SESSION['user_id'] = $row['id'];
            if($rowCount==1){
                echo"<script>User succesfully logged in</script>";
            }
            else{
                echo"<script>Couldn't Authenticate try again</script>";
            }

            // "Remember Me" functionality
            if (isset($_POST['rememberMe'])) {
                // Generate a random token
                $token = bin2hex(random_bytes(32));

                // Store the token in the database for the user
                $userId = $row['id'];
                $updateTokenSql = "update  `users` set remember_token = '$token' where id = '$userId'";
                mysqli_query($con, $updateTokenSql);

                // Set the token as a cookie with a long expiry time (e.g., 1 week)
                setcookie('remember_me', $token, time() + (7 * 24 * 60 * 60), '/');
            } 
            else {
                // User did not check "Remember Me," remove any existing token
                $userId = $row['id'];
                $updateTokenSql = "update `users` set remember_token = NULL where id = '$userId'";
                mysqli_query($con,$updateTokenSql);

                // If the user previously had a token stored in a cookie, remove the cookie
                setcookie('remember_me', '', time() - 3600, '/');
            }

            // Redirect the user to the dashboard or desired page
            header('Location: dashboard.php'); 
            // exit();
        } else {
            // Incorrect password
            echo "<script>Invalid credentials. Please try again.</script>";
        }
    } else {
        // User not found
        echo "<script>Invalid credentials. Please try again.</script>";
    }
     // Cleanup: Unset the CSRF token after processing the form
     unset($_SESSION['csrf_token']);
}
var_dump($_POST);
?>