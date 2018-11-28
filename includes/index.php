<?php
require 'functions.php';

//single movie route
if (isset($_GET['movie'])) {

    // pass the connection and the movie id to a function
  $data = get_single_video($conn, $_GET['movie']);
  echo json_encode($data);
} else {
    // get all movies 
  $data = get_all_videos($conn);
  echo json_encode($data);
}


?>
