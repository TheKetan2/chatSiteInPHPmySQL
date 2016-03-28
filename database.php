<?php
//Connect to MySQL
$con = mysqli_connect("localhost","root","1234","shoutit");


//test connection
if(mysqli_connect_errno()){
    echo 'Failed to connect to MySQL: '.mysqli_connect_error();
}