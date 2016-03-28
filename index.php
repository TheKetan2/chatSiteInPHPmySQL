
<?php include 'database.php'?>
<?php

    //create select query
    $query ="SELECT * FROM shouts ORDER BY `id` DESC";
    $shouts = mysqli_query($con, $query);
?>
<!DOCTYPE html>
    <html>
        <head>
            <meta charset="utf8"/>
            <title>ShoutOut</title>
            <link rel="stylesheet" href="css/style.css" type="text/css"/>
            <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
        </head>
        <body>
            <div id="container" class="alert">
                <header>
                    <h1>Online Chat</h1>
                </header>
                <div class="row">
                <div id="shouts" class="alert alert-default">
                    <ul>
                        <?php while($row=mysqli_fetch_assoc($shouts)) : ?>
                        <li class="shout"><strong><?php echo $row['user'] ?> :</strong> <?php echo " ".$row['message'] ?></li>
                    
                        <?php endwhile; ?>
                        
                         
                    </ul>
                </div>
                <div id="input">
                    <?php if(isset($_GET['error'])) : ?>
                        <div class="alert alert-danger"><?php echo $_GET['error'];?></div>
                    <?php endif; ?>
                    <form class="form-group" method="post" action="process.php">
                        
                            <div class="col-md-6">
                                <input class="form-control" type="text" name="user" placeholder="Apps Nav Tak Re"/>   
                            </div>
                             <div class="col-md-6">
                                <input class="form-control" type="text" name="message" placeholder="Enter Message"/>    
                             </div>
                             
                             <input class="btn btn-success"  type="submit" name="submit" class="shout_btn" value="Send"/>
				<a class="btn btn-success" href="index.php">Refresh</a>
                        </div>
                       
                        
                    </form>
                    
                </div>
            <footer class="alert alert-success">
                K2S &copy; 2015
            </footer>
            </div>
            
        </body>
    </html>