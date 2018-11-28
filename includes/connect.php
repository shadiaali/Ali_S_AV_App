<?php
    $user = "root";
    $pw = "root"; //blank for windows

    try {
        $conn = new PDO('mysql:host=localhost;dbname=db_video_player', $user, $pw);
        //var_dump($conn);
    } catch(PDOException $exception) {
        echo 'error with connection!' . $exception->getMessage();
    }
?>
