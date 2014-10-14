<?php
    $tmp = explode(" ", trim(fgets(STDIN)));
    $num1 = (int)$tmp[0];
    $num2 = (int)$tmp[1];

    for ( $i=0; $i<$num1; $i++ ) {
        $user[$i] = (int)trim(fgets(STDIN));
    }

    for ( $i=0; $i<$num2; $i++ ) {
        $tmp = explode(" ", trim(fgets(STDIN)));
        $s[$i] = (int)$tmp[0];
        $t[$i] = (int)$tmp[1];
    }

    for ( $i=0; $i<$num2; $i++ ) {
        echo array_sum(array_slice($user,$s[$i]-1,$t[$i]-$s[$i]+1)) . "\n";
    }
?>
