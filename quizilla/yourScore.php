<?php 
    include 'connect.php';
    include 'links.php'; 

    // $name = $_SESSION['nama'];
    // $query = mysqli_query($con,"SELECT score FROM player WHERE nama = '$name'");
    // $row = mysqli_fetch_assoc($query);
    $score = $_SESSION["score"];

    if (!isset($_SESSION["nama"])) {
        header("Location: index.php");
        exit;
    };
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="fonts/fonts.css">
    <link rel="icon" type="image/png" href="assets/icon.png" sizes="20">
    <title>Your Score</title>

    <style>
        body, html{
            margin: 0;
            padding: 0;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
            background-size: cover;
            background-image: url("assets/bg.png");
            font-family: LemonMilk-Regular, 'Arial';
        }

        .title{
            color: #e9a799;
            margin: 40px auto;
            font-size: 50px;
            text-align: center;
            text-shadow: 4px 4px 5px white;
            font-weight: 700;
            letter-spacing: 2px;
            
        }

        .title:hover{
            cursor: context-menu;
        }

        .score{
            font-family: NoirPro-Bold, 'Arial';
            margin: 20px auto;
            text-align: center;
            color: #55c6aa;
            font-size: 100px;
            font-weight: 700;
            text-shadow: 4px 4px 0px white, 8px 8px 0px #fd823e;
            animation: score 1s linear infinite alternate;
        }
       

        .container{
            width: 50%;
            border: 3px solid white;
            border-radius: 25px;
            background: #ECD69D;
            margin: 100px auto;
            box-shadow: 5px 5px 5px #888888;
        }

        .container:hover{
            cursor: context-menu;
        }
        
        .butt{
            text-align: center;
            margin: 20px auto;
        }
        
        .btn{
            color: white;
            background: #fea500;
            font-size: 30px;
            font-family: NoirPro-SemiBold, 'Arial';
        }

        .btn:hover{
            color: #cc2129;
        }

        @keyframes score{
            0% {transform: translateY(0px);}
            50% {transform: translateY(-3px);}
            100% {transform: translateY(0px);}
        }

        @media screen and (max-width: 894px) {
            .container{
                width: 90%;
            }  
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <h1 class="title mb-1">Your Score</h1>
        </div>

        <div class="row">
            <h1 class="score"><?php echo $score;?></h1>
        </div>

        <div class="row butt">
            <div class="col-12 col-lg-6 col-md-6 col-sm-6 my-2">
                <a type="button" class="btn btn-warning" href="destroy.php">Play Again</a>
            </div>
            <div class="col-12 col-lg-6 col-md-6 col-sm-6 my-2">
                <a type="button" class="btn btn-warning" href="scoreboard.php">Scoreboard</a>
            </div>
        </div>
    </div>
</body>
</html>