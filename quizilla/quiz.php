<?php
    header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
    header("Cache-Control: post-check=0, pre-check=0", false);
    header("Pragma: no-cache");
    ini_set('display_errors', 'On');
    mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT | MYSQLI_REPORT_ALL);
    // ini_set('display_errors', 'Off');
    // mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
    require 'connect.php';
    $id_set_pertanyaan = isset($_GET["set"]) ? $_GET["set"] : header('Location: index.php');
    // $id_set_pertanyaan = 1;
    $_SESSION["id_set_pertanyaan"] = $id_set_pertanyaan;
    $_SESSION["id_pertanyaan"] = 0;

    try {
        $pstmt = $con->prepare("SELECT id_kategori, set_pertanyaan FROM set_pertanyaan WHERE id_set_pertanyaan = ?");
        $pstmt->bind_param("i", $id_set_pertanyaan);
        $pstmt->execute();
        $rs = $pstmt->get_result();
        $row = $rs->fetch_assoc();
        $id_kategori = $row["id_kategori"];
        $set_pertanyaan = $row["set_pertanyaan"];

        $pstmt = $con->prepare("SELECT mapel FROM kategori WHERE id_kategori = ?");
        $pstmt->bind_param("i", $id_kategori);
        $pstmt->execute();
        $rs = $pstmt->get_result();
        $row = $rs->fetch_assoc();
        $kategori = $row["mapel"];
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
    <form method="POST" action="quiz2.php">
        <div class = "container rounded position-absolute top-50 start-50 translate-middle">
            <br/><br/>
            <h3><?php echo $kategori; ?></h3>
            <h4><?php echo $set_pertanyaan; ?></h4>
            <br/><br/>
            <div class="row justify-content-center">
                <label for="input_name" class="form-label">Masukkan nama anda</label>
                <input type="text" class="form-control" id="input_name" name="input_name" maxlength="45" value="User00" placeholder="Mohon masukkan nama anda" required>
            </div>
            <br/><br/>
            <div class="row justify-content-center">
                <button type="submit" class="btn btn-outline">Start Quiz</button>
            </div>
            <br/><br/>
        </div>
    </form>
</body>
</html>