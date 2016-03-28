<?php
include 'database.php';
//Check if form submitted

if(isset($_POST['submit'])){
    $user= mysqli_real_escape_string($con,$_POST['user']);
    $message= mysqli_real_escape_string($con,$_POST['message']);
    
    //set timezone
    date_default_timezone_set('America/New_York');
    $time=date('h:i:s a',time());
    
    if(!isset($user)||$user==''||!isset($message)||$message==''){
            $error="Please Fill in your name and message.";
            header("Location: index.php?error=".urldecode($error));
            exit();
        }
        else{
            $query ="INSERT INTO shouts (user,message,date) VALUES ('$user','$message','$time')";
                    $shouts = mysqli_query($con, $query);
                    if(!$shouts){
                        die('Error:'.mysqli_error($con));
                        
                    }
                    else{
                        header("Location: index.php");
                        exit();
                    }
        }
        header("Location:index.php");
        exit();

}