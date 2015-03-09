<?php
/**
 * Exempel för databasanslutning med mysqli.
 * Använder det objektorienterade gränssnittet.
 *
 */

// Ful-simulering av ?yr=1928&name=arnold, gör aldrig så här.
$_GET['yr'] = 1928;
$_GET['name'] = 'arnold';


$link = new mysqli('localhost', 'root', 'root', 'sqlkurs');

$sql = "SELECT name, yr, subject_id FROM nobel WHERE yr = ? OR name LIKE ?";
$stmt = $link->prepare($sql);
if (!$stmt) {
    echo 'Could not prepare the statement.';
    die;
}
$stmt->bind_param('is', $_GET['yr'], $_GET['name']); 

if ($stmt->execute()) {
    $stmt->bind_result($name, $yr, $subject_id);
    while ($stmt->fetch()) {
        echo $name.' '.$yr.' ('.$subject_id.')<br/>';
    }
} else {
    echo 'Could not execute prepared statement.';
    die;
}

$stmt->close();

