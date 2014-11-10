<?php
/**
 * Den här kan med fördel göras om för att återanvända funcs.php som i uppgift 3
 */

$link = mysqli_connect('localhost', 'root', 'root', 'sqlkurs');
$result = mysqli_query($link, 'SELECT DISTINCT yr FROM nobel');
while ($row = mysqli_fetch_assoc($result)) {
    echo '<a href="uppgift3.php?year='.$row['yr'].'">'.$row['yr'].'</a> ';
}
mysqli_free_result($result);
mysqli_close($link);
