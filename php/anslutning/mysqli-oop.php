<?php
/**
 * Exempel för databasanslutning med mysqli.
 * Använder det objektorienterade gränssnittet.
 *
 */

$link = new mysqli('localhost', 'root', 'root', 'sqlkurs');
$result = $link->query('SELECT * FROM nobel');
while ($row = $result->fetch_assoc()) {
    print_r($row);
}
$result->free();
$link->close();
