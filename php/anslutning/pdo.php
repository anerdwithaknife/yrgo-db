<?php
/**
 * Exempel för databasanslutning med PDO.
 * PDO är ett generellt objektorienterat gränssnitt med stöd för flera olika databaser.
 *
 */

$db = new PDO('mysql:host=localhost;dbname=sqlkurs;charset=utf8', 'root', 'root');
$stmt = $db->query('SELECT * FROM nobel');
while($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    print_r($row);
}
$stmt->closeCursor();
$db = null;
