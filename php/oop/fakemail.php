<?php

function _mail ($to , $subject, $message, $headers='') {
    echo "<p>SENDING MAIL TO $to WITH SUBJECT $subject AND HEADERS $headers<br><pre>$message</pre></p>";
    return true;
}
