<?php
    header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
    header("Cache-Control: post-check=0, pre-check=0", false);
    header("Pragma: no-cache");
    ini_set('display_errors', 'On');
    mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT | MYSQLI_REPORT_ALL);
    // ini_set('display_errors', 'Off');
    // mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
    require 'connect.php';
    $id_set_pertanyaan = $_SESSION["id_set_pertanyaan"];
    $id_pertanyaan = $_SESSION["id_pertanyaan"];
    $soal = "";
    $score = isset($_SESSION["score"]) ? $_SESSION["score"] : 0;
    $jawaban = isset($_POST["jawaban"]) ? $_POST["jawaban"] : "";
    if($jawaban != "") {
        // echo $jawaban;
        if($jawaban == $_SESSION["kunci_jawaban"]) {
            $score += 100;
            $_SESSION["score"] = $score;
        }
    }
    else{
        $score = 0;
        $_SESSION["score"] = $score;
        $nama = isset($_POST["input_name"]) ? $_POST["input_name"] : header('Location: index.php');
        $_SESSION["nama"] = $nama;
    }


    try {
        $pstmt = $con->prepare("SELECT id_pertanyaan, pertanyaan, duration, jawaban FROM pertanyaan WHERE id_set_pertanyaan = ? AND id_pertanyaan > ? ORDER BY id_pertanyaan LIMIT 1");
        $pstmt->bind_param("ii", $id_set_pertanyaan, $id_pertanyaan);
        $pstmt->execute();
        $rs = $pstmt->get_result();
        if($row = $rs->fetch_assoc()) {
            $_SESSION["id_pertanyaan"] = $row["id_pertanyaan"];
            $soal = $row["pertanyaan"];
            $duration = $row["duration"];
            $kunci_jawaban = $row["jawaban"];
            $_SESSION["kunci_jawaban"] = $kunci_jawaban;
        }
        else {
            $_SESSION["id_pertanyaan"] = 0;
            $_SESSION["score"] = $score;
            // echo "habis";
            
            $pstmt = $con->prepare("INSERT INTO player(nama, score, id_set_pertanyaan) VALUES(?,?,?)");
            $pstmt->bind_param("sii", $_SESSION["nama"], $score, $id_set_pertanyaan);
            $pstmt->execute();
            header('Location: yourScore.php');
        }
    }
    catch(Exception $e) {
        echo $e;
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Quiz</title>
    <link rel="icon" type="image/png" href="./assets/icon.png" sizes="20">
    
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <?php require "links.php"; ?>

    <link rel="stylesheet" type="text/css" href="./quiz.css">
    <link rel="stylesheet" type="text/css" href="./fonts/fonts.css">
</head>
<body>
    <form method="POST">
        <div class = "container rounded position-absolute top-50 start-50 translate-middle">
            <br/>
            <div class="d-flex justify-content-end">
                <label class="timer" id="countdown"></label>
                <script>
                    var time = <?php echo $duration; ?>;
                    var my_timer = null;

                    const countdownElement = document.getElementById('countdown');

                    document.getElementById('countdown').value = time;

                    if (time > 0) {
                        my_timer = setInterval(updateCountdown, 1000); //ms 1 detik
                    }

                    function updateCountdown() {
                        const minutes = Math.floor(time / 60);
                        let seconds = time % 60;

                        seconds = seconds < 10 ? '0' + seconds : seconds;

                        countdownElement.innerHTML = `${minutes}:${seconds}`;
                        time--;

                        if (time < 0) {
                            clearInterval(my_timer);
                            alert("WAKTU HABIS!");
                            window.location = "index.php";
                        }
                    } // end of func updateCountdown()
                </script>
            </div>
            <br/>
            <div class="row justify-content-center">
                <p class="questions"><?php echo "Q. ".$soal; ?></p>
            </div>
            <br/>
            <!-- <div class="btn-group-vertical" role="group" aria-label="Basic radio toggle button group"> -->
                <?php
                    $pstmt = $con->prepare("SELECT id_pilihan, pilihan FROM pilihan WHERE id_pertanyaan = ? ORDER BY id_pilihan");
                    $pstmt->bind_param("i", $_SESSION["id_pertanyaan"]);
                    $pstmt->execute();
                    $rs = $pstmt->get_result();
                    while($row = $rs->fetch_assoc()) {
                        echo '<input type="radio" class="btn-check" name="jawaban" id="jawaban'.$row["id_pilihan"].'" autocomplete="off" value="'.$row["id_pilihan"].'" required><label class="btn btn-outline-success" for="jawaban'.$row["id_pilihan"].'">'.$row["pilihan"].'</label><br/><br/>';
                    }
                ?>
            <!-- </div> -->
                <?php
                    // $pstmt = $con->prepare("SELECT id_pilihan, pilihan FROM pilihan WHERE id_pertanyaan = ? ORDER BY id_pilihan");
                    // $pstmt->bind_param("i", $_SESSION["id_pertanyaan"]);
                    // $pstmt->execute();
                    // $rs = $pstmt->get_result();
                    // while($row = $rs->fetch_assoc()) {
                    //     echo '<input type="radio" name="jawaban" id="jawaban" value="'.$row["id_pilihan"].'" required><label class="jawaban" for="jawaban">&nbsp;&nbsp;'.$row["pilihan"].'</label><br/>';
                    // }
                ?>
            <br/>
            <div class="row justify-content-center">
                <button type="submit" class="btn btn-outline">NEXT</button>
            </div>
            <br/>
        </div>
    </form>
</body>
</html>