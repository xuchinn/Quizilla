<?php
    //include 'connect.php';
    include 'links.php'; 
?>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <title>Quiz</title>
        <link rel="stylesheet" type="text/css" href="fonts/fonts.css">
        <link rel="icon" type="image/png" href="assets/icon.png" sizes="20">
        <style>
            body{
                font-family: LemonMilk-Regular, 'Arial';
                /* background-color: #e9a799; */
                background-image: url("assets/pinkbg.png");
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
                background-attachment: fixed;
            }
            .container{
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
            }
            .btn{
                background-color: #9b4722;
                border: none;
                color: white;
                width: 100%;
                height: 40px;
                animation: grow 3s infinite;

            }
            .btn:hover{
                background-color: #6b2f16;
                color: white;

            }
            @keyframes grow {
                0%   { transform: scale(1.05); }
                50%  { transform: scale(1); }
                100% { transform: scale(1.05); }
            }
        </style>

    </head>
    <body>
        <div class="container">
            <div class="row justify-content-center mb-5">
                <div class="col-6 col-sm-4">
                    <img src="assets/text.png" class="mx-auto mb-3" style="width: 100%;">
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-6 col-sm-4 col-md-3">
                    <a class="btn" href="kategori.php">Play</a>
                </div>
            </div>
        </div>
    </body>
</html>