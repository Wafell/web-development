<?php
if ($_GET['email'] <> null)
{
    if (file_exists('data/'.$_GET['email'].'.txt'))
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
        echo 'no file';
    }
}
else
{
    echo 'no email';
}
?>
