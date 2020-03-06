<?php
  header("Content-Type: text/plain");
  $text = $_GET['text'];
  //echo trim($text, ' ').'/';
  echo preg_replace('/^ +| +$|( ) +/m', '$1', $text);
  //echo preg_replace(' ', '$1', $text); 
?>
