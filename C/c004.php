<?php
    $s = trim(fgets(STDIN));
    $s = str_replace(array("\r\n","\r","\n"), '', $s);
    $words = explode(" ", $s);
    foreach ($words as $word) {
        $count[$word]++;
    }
    foreach ($count as $key => $value) {
        echo $key . " " . $value . "\n";
    }
?>
