<?php
  if ($_GET['email'] <> null)
  {
    $anketa = fopen('data/'.$_GET['email'].'.txt', 'w');
    fwrite($anketa, 'First name: '.$_GET['first_name']."\n");
    fwrite($anketa, 'Last name: '.$_GET['last_name']."\n");
    fwrite($anketa, 'Email: '.$_GET['email']."\n");
    fwrite($anketa, 'Age: '.$_GET['age']."\n");
    fclose($anketa);
    echo 'done!!';
  }
  else
  {
    echo 'no email';
  }
?>
