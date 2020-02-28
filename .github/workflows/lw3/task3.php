<?php
  header("Content-Type: text/plain");
  $password = $_GET['password'];
  echo $pasword;
  echo "\n";
  $passwordStrength = 0;
  $passwordStrength = strlen($password) * 4;
  $passwordStrength = $passwordStrength + 4 * (substr_count($password, "/^[\d]*$"));
  $passwordStrength = $passwordStrength + 2 * (strlen($password) - substr_count($password, "/^[A-Z]*$/"));
  $passwordStrength = $passwordStrength + 2 * (strlen($password) - substr_count($password, "/^[a-z]*$/"));
  if (strlen($password) === substr_count($password, "/^[a-z]*$/i"))
  {
    $passwordStrength = $passwordStrength - strlen($password);
  }
  if (strlen($password) === substr_count($password, "/^[\d]*$/i"))
  {
    $passwordStrength = $passwordStrength - strlen($password);
  } 
  foreach (count_chars($password, 1) as $i => $val) 
  {
    if ($val > 1)
    {
      $passwordStrength = $passwordStrength - $val;
      echo $val."\n";
    }
  }
  //echo $val."\n";
  echo $passwordStrength;
?>