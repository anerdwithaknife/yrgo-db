<?php

////////////////////////////////////////////////////////////////////////////////////////
//      DATABASKOPPLING

function connectToDb() {
    $con = mysqli_connect(DBSERVER, DBUSER, DBPASS, DBSCHEMA);

    if (mysqli_connect_errno()) {
        echo mysqli_connect_errno().': '.mysqli_connect_error(); // Felkoden + Meddelandet
        die;
    }
    return $con;
}

////////////////////////////////////////////////////////////////////////////////////////
//      HÄMTA VINNARE

function getWinnersByYear($link, $year) {
    $safe_year = (int)$year;

    $sql = "SELECT * FROM nobel
            JOIN nobel_subjects
            ON nobel.subject_id = nobel_subjects.id
            WHERE yr = {$safe_year}";

    echo '<pre>'.$sql.'</pre>';

    $result = mysqli_query($link, $sql);
    if (mysqli_errno($link)) {
        echo mysqli_errno($link).': '.mysqli_error($link);
        die;
    }

    $resultArray = array(); 
    while ($row = mysqli_fetch_assoc($result)) {
        $resultArray[] = $row;
    }
    mysqli_free_result($result);
    return $resultArray;
}


////////////////////////////////////////////////////////////////////////////////////////
//      LETA VINNARE PÅ NAMN

function getWinnersByName($link, $name) {
    $safe_name = mysqli_real_escape_string($link, $name);

    $sql = "SELECT * FROM nobel
            JOIN nobel_subjects
            ON nobel.subject_id = nobel_subjects.id
            WHERE name LIKE '%{$safe_name}%'";

    echo '<pre>'.$sql.'</pre>';

    $result = mysqli_query($link, $sql);
    if (mysqli_errno($link)) {
        echo mysqli_errno($link).': '.mysqli_error($link);
        die;
    }

    $resultArray = array(); 
    while ($row = mysqli_fetch_assoc($result)) {
        $resultArray[] = $row;
    }
    mysqli_free_result($result);
    return $resultArray;
}

