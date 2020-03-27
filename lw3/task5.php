<?php
if ($_GET['email'] <> null)
{
    if (file_exists('data/' . $_GET['email'] . '.txt'))
    {
        $profile = fopen('data/' . $_GET['email'] . '.txt', 'r');
        $data = fgets($profile);
        echo substr($data, 0, strlen($data)) . '<br/>';
        $data = fgets($profile);
        echo substr($data, 0, strlen($data)) . '<br/>';
        $data = fgets($profile);
        echo substr($data, 0, strlen($data)) . '<br/>';
        $data = fgets($profile);
        echo substr($data, 0, strlen($data)) . '<br/>';
        fclose($profile);
    }
    else
    {
        echo 'no file';
    }
}
else
{
    echo 'no email';
}
?>
