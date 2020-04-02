<?php
if (!(file_exists('data/')))
{
    mkdir('data/', 0700);
}
$profile = fopen('data/' . $_GET['email'] . '.txt', 'w');
fwrite($profile, 'First name: ' . $_GET['first_name'] . "\n");
fwrite($profile, 'Email: ' . $_GET['email'] . "\n");
fwrite($profile, 'Country: ' . $_GET['where_are'] . "\n");
fwrite($profile, 'Gender: ' . $_GET['gender'] . "\n");
fwrite($profile, 'Message: ' . $_GET['your_message'] . "\n");
fclose($profile);
header( "Location: ../index.html#form" );
?>
