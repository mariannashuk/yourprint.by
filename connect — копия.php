<?php
$DB = @mysqli_connect('localhost', 'ВАШ_USERNAME','ВАШ_ПАРОЛЬ', 'yourprintby') or die('no connect MYSQL');

mysqli_query($DB, "SET NAMES 'utf8'");
mysqli_query($DB, "SET CHARACTER SET 'utf8'");
mysqli_query($DB, "SET SESSION collation_connection = 'utf8_general_ci'");
mysqli_query($DB, 'SET NAMES utf8 COLLATE utf8_general_ci');

$marker = array('{ID}', '{NAME}','{LINK}','{TEXT}','{POSITION}','{VISIBLE}');

$SQL = 'SELECT `menu_id`, `menu_name`, `menu_link`, `menu_text`, `position`, `visible` 
FROM `menu` WHERE `visible` = 1 ORDER BY `position`';
$date = mysqli_query($DB, $SQL);
$count = mysqli_affected_rows($DB);

/*for($i = 0; $i < $count; $i++)
{
    $inf = mysqli_fetch_array($date, MYSQLI_NUM);
    print_r($inf);
    echo "<br>";
}*/

?>
