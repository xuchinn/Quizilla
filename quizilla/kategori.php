<?php
    
    include 'connect.php';
    include 'links.php'; 

    $result_kategori = mysqli_query($con, "SELECT * FROM kategori"); 
    
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
                /* background-color: #ecd69d; */
                background-image: url("assets/bg.png");
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
                background-attachment: fixed;
            }
            .loading-wrapper{
                background-color: #e9a799;
                width: 100%;
                height: 100%;
                position: fixed;
                top: 0;
                left: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                text-align: center;
                z-index: 99999;
            }
            #loading{
                animation: glow 3s infinite;
                width: 50%;
            }
            @keyframes glow {
              0%   { -webkit-filter: drop-shadow(0px 0px 20px rgba(255, 255, 255, 0.9)); }
              50%  { -webkit-filter: drop-shadow(0px 0px 15px rgba(255, 255, 255, 0.5));}
              100% { -webkit-filter: drop-shadow(0px 0px 20px rgba(92556, 255, 255, 0.9)); }
            }
            @keyframes grow {
                0%   { transform: scale(1.02); }
                50%  { transform: scale(1); }
                100% { transform: scale(1.02); }
            }
            .btnKategori{
                height: 200px;
                width: 100%;
                background-color: rgba(236, 214, 157, 0.9);
                border-width: 5px;
                border-radius: 20px;
                border-color: #fea500;
                color: #5cc6aa;
                font-size: 35px;
                line-height: 50px;
                font-family: NoirPro-SemiBold, 'Arial';
                transition: 0.3s;
                animation: grow 5s infinite;
            }
            .btnKategori:hover{
                color: #5cc6aa;
                transform:scale(1.1);
                background-color: rgba(236, 214, 157, 1);
                border-color: #9b4722;
                box-shadow: 10px 10px 10px rgba(0, 0, 0, 0.1);
            }
            #title{
                text-align: center;
                text-shadow: 4px 4px 5px rgba(255, 255, 255, 0.5);
                color: #4a5336;
            }
            
            @media screen and (max-width: 1400px){
                .btnKategori{
                    font-size: 30px;
                    line-height: 35px;
                }
            }
            @media screen and (max-width: 1200px){
                .btnKategori{
                    font-size: 20px;
                    line-height: 30px;
                    height: 150px;
                }
            }
            @media screen and (max-width: 390px){
                .btnKategori{
                    font-size: 15px;
                    line-height: 20px;
                    height: 80px;
                }
            }
        </style>

    </head>
    <body>
        <div class="loading-wrapper">
            <div style="display: block;">
                <img src="assets/text.png" id="loading" class="mx-auto my-auto mb-5"> <br>
                <div class="spinner-border text-dark mb-4" role="status">
                </div>
            </div>
        </div>
        <div class="container p-5">
            <h1 id="title" class="mt-lg-5 mb-5">Pilih kategori soal</h1>
            <div class="row justify-content-center p-5">
                <!-- <div class="col-6 col-sm-4 col-lg-3">
                    <button class="btnKategori btn" style="background-color: pink;">Matematika</button>
                </div> -->
                <?php 
                    while($row = mysqli_fetch_assoc($result_kategori)){
                        $kategori = $row["id_kategori"];
                        echo '<div class="col-12 col-sm-6 col-lg-3 mb-3">' . 
                        '<a href = "set.php?kategori=' . $kategori . '">'. 
                            '<button class="btnKategori btn">' . $row["mapel"] . '</button>' . 
                        '</a></div>';
                        // echo $row["mapel"];
                    }
                ?>
            </div>
        </div>

        
        <script>
            $(window).on("load",function(){
                $('.loading-wrapper').fadeOut();
            });
        </script>
    </body>
</html>