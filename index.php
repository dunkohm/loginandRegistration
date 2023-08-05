<?php
// Include the database connection file
include("includes/connection.php");

session_start();
// // Generate a CSRF token if it doesn't exist in the session
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
    width: 400px;
    height: 400px;
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
                <h3 class="text-center text-white">Sign Up</h3>

            </div>
            <!-- Card body -->
        <div class="card-body">
            <form action="" method="POST" onsubmit="return validateForm()">
                <!-- First name -->
                <div class="input-group mb-3">
                   <span class="input-group-text" id="basic-addon1"><i class="fa fa-user" aria-hidden="true"></i></span>
                    <input type="text" class="form-control" placeholder="Enter your first name" aria-label="Username" aria-describedby="basic-addon1" name="fName">
                 </div>
                 <!-- Last name -->
                <div class="input-group mb-3">
                   <span class="input-group-text" id="basic-addon1"><i class="fa fa-user" aria-hidden="true"></i></span>
                    <input type="text" class="form-control" placeholder="Enter your Last name" aria-label="Username" aria-describedby="basic-addon1" name="lName">
                 </div>
                 <!-- Email -->
                <div class="input-group mb-3">
                   <span class="input-group-text" id="basic-addon1"><i class="fa fa-envelope" aria-hidden="true"></i></span>
                    <input type="email" class="form-control" placeholder="Enter your Email" aria-label="Useremail" aria-describedby="basic-addon1" name="email">
                 </div>
                 <!-- Enter password -->
                 <div class="input-group mb-3">
                   <span class="input-group-text" id="basic-addon1"><i class="fa fa-lock" aria-hidden="true"></i></span>
                    <input type="password" class="form-control" placeholder="Enter your Password" aria-label="password" aria-describedby="basic-addon1" name="password">
                 </div>
                 <!-- confirm Password -->
                 <div class="input-group mb-3">
                   <span class="input-group-text" id="basic-addon1"><i class="fa fa-lock" aria-hidden="true"></i></span>
                    <input type="password" class="form-control" placeholder="Confirm Password" aria-label="Confirm password" aria-describedby="basic-addon1" name="confirm-password">
                 </div>
                 <!-- hidden cfsr input -->
                 <input type="hidden" name="csrf_token" value="<?php echo $_SESSION['csrf_token']; ?>">
                 <!-- Button -->
                 <div class="input-group">
                    <input type="submit" value="Sign Up" name="user_register" class="btn signup_btn">
                 </div>
            </form>
        </div>
            <!-- card footer -->
            <div class="card-footer text-center text-white">
                Already have an account? <a href="signin.php" class="sign_up">Sign in</a>
            </div>
        </div>
    </div>
    <?php
    // Check if the form is submitted
if(isset($_POST['user_register'])){
//   // Validate CSRF token
//   if (!isset($_POST['csrf_token']) || $_POST['csrf_token'] !== $_SESSION['csrf_token']) {
//     // CSRF token is missing or invalid
//     die("CSRF validation failed. Please try again.");
// }
    $firstname=$_POST['fName'];
    $lastname=$_POST['lName'];
    $email=$_POST['email'];
    $userpass=$_POST['password'];
    $hashpass=password_hash($userpass,PASSWORD_DEFAULT);//Password hash method
    $user_Confuserpass=$_POST['confirm-password'];
    // select query to check if user already exists
    $select_query="select * from `users` where first_name='$firstname' or user_email='$email'";
    $sql_exc=mysqli_query($con,$select_query);
    $rowCount=mysqli_num_rows($sql_exc);
    // Variable rowcount to store the number of rows
    if($rowCount > 0){
        echo "<script>alert('Username and Email Already Exists in the Database')</script>"; 
        // check if passwords match
    }
    else{
    //  Insert query
    $insert_query="insert into `users`(first_name,last_name,user_email,user_password)
    values('$firstname','$lastname','$email','$hashpass')";//add $hashpass to db instead of $userpass
    $sql_query=mysqli_query($con,$insert_query);
    if($sql_query){
        echo "<script>alert('User Registered successfully')</script>";
    }
    //     die(mysqli_error($con));
    // }
}
// // Cleanup: Unset the CSRF token after processing the form
unset($_SESSION['csrf_token']);
}


?>
    
    <script>
        function validateForm() {
            if (!validateNameLength()) {
    return false; // Prevent form submission
  }
   // Check for valid email format
   const emailInput = document.querySelector('input[name="email"]');
  const email = emailInput.value.trim();
  if (!isValidEmail(email)) {
    alert('Please enter a valid email address.');
    return false; // Prevent form submission
  }
   // Check for strong password
   const passwordInput = document.querySelector('input[name="password"]');
  const password = passwordInput.value;
  if (!isStrongPassword(password)) {
    alert('Password must have at least 6 characters, including uppercase, lowercase, number, and symbols.');
    return false; // Prevent form submission
  }
   // Check if passwords match
   if (!passwordsMatch()) {
    return false; // Prevent form submission
  }
  // Get all form input elements
  const inputElements = document.getElementsByTagName('input');
  const textareaElements = document.getElementsByTagName('textarea');
  const selectElements = document.getElementsByTagName('select');
  
  // Loop through input elements and check if they are empty
  for (const input of inputElements) {
    if (input.type !== 'submit' && input.type !== 'hidden' && input.value.trim() === '') {
      alert('Please fill out all fields before submitting the form.');
      return false; // Prevent form submission
    }
  }

  // Loop through textarea elements and check if they are empty
  for (const textarea of textareaElements) {
    if (textarea.value.trim() === '') {
      alert('Please fill out all fields before submitting the form.');
      return false; // Prevent form submission
    }
  }

  // Loop through select elements and check if they are empty
  for (const select of selectElements) {
    if (select.value.trim() === '') {
      alert('Please fill out all fields before submitting the form.');
      return false; // Prevent form submission
    }
  }

  // If all fields are filled, allow form submission
  return true;
}
function validateNameLength() {
  // Get the first name and last name input elements
  const firstNameInput = document.querySelector('input[name="fName"]');
  const lastNameInput = document.querySelector('input[name="lName"]');
  
  // Get the values of first name and last name
  const firstName = firstNameInput.value.trim();
  const lastName = lastNameInput.value.trim();
  
  // Check if first name has at least 3 characters
  if (firstName.length < 3) {
    alert('First name must contain at least 3 characters.');
    return false; // Prevent form submission
  }
  
  // Check if last name has at least 3 characters
  if (lastName.length < 3) {
    alert('Last name must contain at least 3 characters.');
    return false; // Prevent form submission
  }

  // If both first name and last name are valid, allow form submission
  return true;
}
function isValidEmail(email) {
  // Regular expression pattern to validate email format
  const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  return emailPattern.test(email);
}
// function to check password conditions
function isStrongPassword(password) {
  // Regular expressions for checking password criteria
  const minLengthPattern = /.{6,}/; // At least 6 characters
  const uppercasePattern = /[A-Z]/; // At least one uppercase letter
  const lowercasePattern = /[a-z]/; // At least one lowercase letter
  const numberPattern = /[0-9]/; // At least one digit
  const symbolPattern = /[!@#$%^&*()\-_=+[{\]};:'",<.>/?\\|]/; // At least one symbol

  // Check if the password meets all criteria
  return (
    minLengthPattern.test(password) &&
    uppercasePattern.test(password) &&
    lowercasePattern.test(password) &&
    numberPattern.test(password) &&
    symbolPattern.test(password)
  );
}
// function to confirm that password and confirm password field match
function passwordsMatch() {
  // Get the password and confirm password input elements
  const passwordInput = document.querySelector('input[name="password"]');
  const confirmPasswordInput = document.querySelector('input[name="confirm-password"]');

  // Get the values of password and confirm password
  const password = passwordInput.value;
  const confirmPassword = confirmPasswordInput.value;

  // Check if the two passwords match
  if (password !== confirmPassword) {
    alert('Passwords do not match. Please make sure the password and confirm password fields are the same.');
    return false; // Prevent form submission
  }

  // If the passwords match, allow form submission
  return true;
}





    </script>
    
</body>
</html>