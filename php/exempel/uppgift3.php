<?php
/**
 * Exempel på användning av funktioner och includes för att städa upp koden
 * 
 */
require_once 'hemligt.php';
require_once 'funcs.php';

$db = connectToDb();

if (!isset($_GET['year'])) {
    echo 'Get parameter year is missing.';
    die;
}

$year = (int)$_GET['year'];
$winners = getWinnersByYear($db, $year);

echo '<pre>';
var_dump($winners);

mysqli_close($db);

















