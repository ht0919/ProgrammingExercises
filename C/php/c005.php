<?php
    $input_lines = trim(fgets(STDIN));
    for ( $i = 0; $i < $input_lines; $i++) {
        $s = trim(fgets(STDIN));
        $ip = explode(".",$s);
        if (count($ip) != 4) {
           echo "False" . "\n";
           continue;
        }
        $ans = "True";
        for ( $j = 0; $j < 4; $j++) {
            if (!is_numeric($ip[$j]) || $ip[$j] < 0 || $ip[$j] > 255) {
                $ans = "False";
                break;
            }
        }
        echo $ans . "\n";
    }
?>
