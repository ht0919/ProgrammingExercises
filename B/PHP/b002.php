<?php
    $input = trim(fgets(STDIN));
    for ( $i=0; $i<$input; $i++ ) {
        $s = trim(fgets(STDIN));
        $s = str_replace(array("\r\n","\r","\n"), '', $s);
        $s = explode(" ", $s);
        $resist[$s[0]]  = (int)$s[1];
    }

    $input = trim(fgets(STDIN));
    $input = str_replace(array("\r\n","\r","\n"), '', $input);
    $input = explode(" ", $input);

    $sum = 0;
    foreach ( $input as $r ) {
        if (strlen($r) == 1) {
            $sum += $resist[$r];
        } else {
            $tmp = 0;
            for ( $i=0; $i<strlen($r); $i++ ) {
                $tmp += 1 / $resist[$r[$i]];
            }
            $sum += 1 / $tmp;
        }
    }
    echo floor($sum) . "\n";
?>
