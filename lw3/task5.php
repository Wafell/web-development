<?php
  if ($_GET['email'] <> null)
  {
    $anketa = fopen('data/'.$_GET['email'].'.txt', 'r');
    $data = fgets($anketa);
    echo substr($data, 0, strlen($data)).'<br/>';
    $data = fgets($anketa);
    echo substr($data, 0, strlen($data)).'<br/>';
    $data = fgets($anketa);
    echo substr($data, 0, strlen($data)).'<br/>';
    $data = fgets($anketa);
    echo substr($data, 0, strlen($data)).'<br/>';
    fclose($anketa);
  }
  else
  {
    echo 'no email';
  }
?>
