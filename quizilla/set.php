<?php
    include 'connect.php';
    include 'links.php'; 

    // $kategori = $_GET["kategori"];
    // echo $kategori;
    $kategori = isset($_GET["kategori"]) ? $_GET["kategori"] : header('Location: index.php');

    $result_set = mysqli_query($con, "SELECT * FROM set_pertanyaan WHERE id_kategori = $kategori"); 

    // while($row = mysqli_fetch_assoc($result_set)){
    //     echo $row["set_pertanyaan"]; 
    // }
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
                /* font-family: NoirPro-Regular, 'Arial'; */
                font-family: LemonMilk-Regular, 'Arial';
                background-image: url("assets/bg.png");
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
                background-attachment: fixed;
                color: #4a5336;
            }
            .btnSet{
                height: 200px;
                width: 100%;
                background-color: rgba(236, 214, 157, 0.9);
                border-width: 5px;
                border-radius: 20px;
                border-color: #fea500;
                color: #9b4722;
                font-size: 40px;
                line-height: 50px;
                font-family: NoirPro-SemiBold, 'Arial';
                transition: 0.3s;
                animation: grow 5s infinite;
            }
            .btnSet:hover{
                color: #9b4722;
                transform:scale(1.1);
                background-color: rgba(236, 214, 157, 1);
                border-color: #9b4722;
                box-shadow: 10px 10px 10px rgba(0, 0, 0, 0.1);
            }
            a{
                color: #4a5336 !important;
                /* transition: 0.3s; */
                text-decoration: none !important;
                font-size: 50px;
            }
            #title{
                text-align: center;
                text-shadow: 4px 4px 5px rgba(255, 255, 255, 0.5);
            }
            #back{
                font-family: NoirPro-SemiBold, 'Arial';
            }
            @keyframes grow {
                0%   { transform: scale(1.02); }
                50%  { transform: scale(1); }
                100% { transform: scale(1.02); }
            }
            @media screen and (max-width: 1200px){
                .btnSet{
                    font-size: 20px;
                    line-height: 30px;
                    height: 150px;
                }
            }
            @media screen and (max-width: 992px){
                .btnSet{
                    font-size: 30px;
                    line-height: 35px;
                    height: 150px;
                }
                #back{
                    font-size: 30px;
                }
            }
            @media screen and (max-width: 576px){
                #back{
                    font-size: 25px;
                }
            }
        </style>

    </head>
    <body>
        <a href="kategori.php" class="m-3 m-md-5" id="back">< <span>Back</span></a>
        <div class="container">
            <div class="row justify-content-center pb-5 mt-5">
                <h1 class="mt-5 mb-5" id="title">Pilih Level Soal</h1>

                <!-- <div class="col-6 col-sm-4 col-lg-3">
                    <button class="btnSet btn" style="background-color: pink;">Matematika</button>
                </div> -->
                <?php 
                    while($row = mysqli_fetch_assoc($result_set)){
                        echo '<div class="col-12 col-sm-6 col-lg-3 mb-3">' . 
                        '<a href = "quiz.php?set=' . $row["id_set_pertanyaan"] . '">'. 
                            '<button class="btnSet btn">' . $row["set_pertanyaan"] . '</button>' . 
                        '</a></div>';
                        // echo $row["mapel"];
                    }
                ?>
            </div>
        </div>

        
        <script>
            
        </script>
    </body>
</html>