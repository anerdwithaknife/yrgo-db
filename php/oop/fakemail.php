<?php

function _mail ($to , $subject, $message, $headers='') {
    echo "<p>SENDING MAIL TO $to WITH SUBJECT $subject AND HEADERS $headers</p>";
    return true;
}
