<?php
/**
 * Exempel för databasanslutning med mysqli.
 * Använder det funktions-baserade gränssnittet.
 *
 */
$link = mysqli_connect('localhost', 'root', 'root', 'sqlkurs');
$result = mysqli_query($link, 'SELECT * FROM nobel');
while ($row = mysqli_fetch_assoc($result)) {
    print_r($row);
}
mysqli_free_result($result);
mysqli_close($link);
