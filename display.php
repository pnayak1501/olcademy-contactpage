<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <title>Display</title>
    <style>
        .container{
            margin-top:20px;
        }
    </style>
</head>
<body>
       <div class="container">
        <?php
            $conn = new mysqli('localhost','root','','olcademy');
            if($conn->connect_error){
                die('Connection failed:'.$conn->connect_error);
            }
            $sql = "Select id,email,name,subject,message,query from contact";
            $result = $conn->query($sql);
            if($result->num_rows > 0){
                ?>
                    <table class="table table-striped table-dark">
        <tr>
            <th scope="col">Id</th>
            <th scope="col">email</th>
            <th scope="col">Name</th>
            <th scope="col">Subject</th>
            <th scope="col">Message</th>
            <th scope="col">Query</th>
        </tr>
               <?php
                while($row = $result->fetch_assoc()){
                    echo '<tr><td scope="row">'.$row["id"]."</td><td>".$row["email"]."</td><td>".$row["name"]."</td><td>".$row["subject"]."</td><td>".$row["message"]."</td><td>".$row["query"]."</td></tr>";
                }
                echo "</table>";
            }
            else{
                echo '<script> alert("No Queries!")</script> ';
            }
        $conn->close();
        
        ?>
    </table>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>