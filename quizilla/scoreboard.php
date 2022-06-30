<?php 
    include 'connect.php';
    include 'links.php'; 

    $set = $_SESSION['id_set_pertanyaan'];
    $query = mysqli_query($con,"SELECT nama, score FROM player WHERE id_set_pertanyaan = $set ORDER BY score DESC LIMIT 5");

    if (!isset($_SESSION["id_set_pertanyaan"])) {
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
    <title>Scoreboard</title>

    <style>
        body, html{
            margin: 0;
            padding: 0;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
            background-size: cover;
            background-image: url("assets/bg.png");
        }

        .title{
            color: #e9a799;
            margin: 40px auto;
            font-size: 50px;
            text-align: center;
            text-shadow: 4px 4px 5px white;
            letter-spacing: 2px;
            font-family: LemonMilk-Regular, 'Arial';
            
        }

        .title:hover{
            cursor: context-menu;
        }

        @keyframes title{
            0% {transform: translateY(0px);}
            50% {transform: translateY(-2px);}
            100% {transform: translateY(0px);}
        }

        .container{
            width: 60%;
            border: 3px solid white;
            border-radius: 25px;
            background: #ECD69D;
            margin: 100px auto;
            box-shadow: 5px 5px 5px #888888;
            padding: 0px 30px 30px 30px;
        }

        .rowNameScore{
            margin: 10px auto;
            color: #9b4722;
            
        }

        .nameScore{
            font-size: 35px;
            font-family: NoirPro-SemiBold, 'Arial';
        }

        .scoreBorder{
            border: 3px solid #fea500;
            box-shadow: 3px 3px 3px #fea500;
            border-radius: 20px;
            background: white;
            margin: 10px auto;

            transition-property: width;
            transition-duration: 0.3s;
            transition-delay: 0.2s;
        }

        .scoreBorder:hover{
            width: 90%;
            cursor:context-menu;
            background: #55c6aa;
            background: rgba(255, 255, 255, 0.3);
            backdrop-filter: blur(60px);
        }

        .rowNameScore :hover{
            cursor: context-menu;
        }

        .scores1{
            color: #4a5336;
            font-family: NoirPro-Regular, 'Arial'; 
            font-size: 30px;
            margin: 10px auto;
        }

        .scores2{
            color: #4a5336;
            font-family: NoirPro-Regular, 'Arial'; 
            font-size: 30px;
            margin: 10px auto;
            text-align: right;
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

        @media screen and (max-width: 1066px) {
            .container{
                width: 90%;
            }
            
        }

        @media screen and (max-width: 768px) {
            .container{
                width: 90%;
            }
            .scores1, .scores2, .no{
                text-align: center;
                margin: 5px auto;
            }
            .title{
                font-size: 40px;
                text-align: center;
            }
        }
        @media screen and (max-width: 576px) {
            .container{
                padding: 0 20px 20px 20px;
            }
            .nameScore{
                font-size: 30px;
            }
            .no{
                font-size: 40px !important;
            }
            .scores1, .scores2{
                font-size: 25px;;
            }
            .btn{
                font-size: 20px;
            }
            .col-1{
                padding-left: 0;
            }
        }
        @media screen and (max-width: 450px) {
            .title{
                font-size: 35px;
            }
        }

    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <h1 class="title mb-3">Scoreboard</h1>
        </div>

        <div class="row rowNameScore mb-1">
            <div class="col-1">

            </div>
            <div class="col-7">
                <h2 class="nameScore" style="text-align: left;">Name</h2>
            </div>

            <div class="col-4">
                <h2 class="nameScore" style="text-align: right;">Score</h2>
            </div>
        </div>
        <?php 
        $no = 1;
        while($row = mysqli_fetch_array($query))
            {
        ?>      
                <div class="row">
                    <!-- <div class="col-lg-1 col-xs-12 col-sm-2 col-md-2 my-2"> -->
                    <div class="col-1">
                            <h3 class="no" style="color: #4a5336;font-family: NoirPro-semiBold, 'Arial'; font-size: 50px;"> <?php echo $no++; ?> </h3>
                    </div>
                    <!-- <div class="col-lg-11 col-xs-12 col-sm-10 col-md-10 scoreBorder"> -->
                    <div class="col-11 scoreBorder">
                        <div class="row">
                            <!-- <div class="col-lg-7 col-xs-12 col-sm-7 col-md-8"> -->
                            <div class="col-7">
                                <h3 class="scores1"><?php echo htmlentities($row['nama']); ?></h3>
                            </div>
                            <div class="col-5">
                            <!-- <div class="col-lg-5 col-xs-12 col-sm-5 col-md-4"> -->
                                <h3 class="scores2"><?php echo $row['score']?></h3>
                            </div>
                        </div>
                        
                    </div>
                </div>
                
        <?php
            }
        ?>

        <div class="row mt-4" style="text-align: center;">
            <div class="col-lg-12">
                <a type="button" class="btn btn-warning" href="destroy.php">Play Again</a>
            </div>
        </div>
    </div>
</body>
</html>