<?php
    $email = $_POST['email'];
    $name = $_POST['name'];
    $subject = $_POST['subject'];
    $message = $_POST['message'];
    $query = $_POST['query'];

    //database connection
    
    $conn = new mysqli('localhost','root','','olcademy');
    if($conn->connect_error){
        die('Connection failed:'.$conn->connect_error);
    }
    else{
        $stmt = $conn->prepare("insert into contact(email,name,subject,message,query) values(?,?,?,?,?)");
        $stmt->bind_param("sssss",$email,$name,$subject,$message,$query);
        $stmt->execute();
        echo '<script>alert("Your query has been registered and we are on to fix your issue!")</script>';
        $stmt->close();
        $conn->close();
    }

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Thanks</title>
    <style>
        body{
            background: url(images/thanku.jpg) center center fixed;
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body>
   <?php 
            $conn = new mysqli('localhost','root','','olcademy');
            if($conn->connect_error){
                die('Connection failed:'.$conn->connect_error);
            }
            $sql = "Select name from contact where email='$email'";
            $result = $conn->query($sql);
            if($result->num_rows > 0){
                while($row = $result->fetch_assoc()){
                    echo "Logged in as ".$row['name'];
                }
            }
         $conn->close();

    ?>
</body>
</html>