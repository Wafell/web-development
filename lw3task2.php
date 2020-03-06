<?php
  header("Content-Type: text/plain");
  $identifier = $_GET['identifier'];
  echo $identifier;
  echo "\n";
  if ((ord(substr($identifier, 0, 1)) > 47) && (ord(substr($identifier, 0, 1)) < 58)) 
  {
    echo 'identifier starts with a digit';
  }
  else
  {
    if (preg_match("/^[a-z\d]*$/i", $identifier))   
    {
      echo 'identifier is okey';
    }
    else
    {
      echo 'identifier contains unacceptamble symbols';
    }
  }
?>
