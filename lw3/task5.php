<?php
  if ($_GET['email'] <> null)
  {
    $anketa = fopen('data/'.$_GET['email'].'.txt', 'r');
    echo 'First name: '.substr(fget($anketa), strlen(;
    echo 'Last name: '.fget($anketa);
    echo 'Email: '.fget($anketa);
    echo 'Age: '.fget($anketa);
    fclose($anketa);
    //echo 'done!!';
  }
  else
  {
    echo 'no email';
  }
?>
