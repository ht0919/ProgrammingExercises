<?php
    $tmp = explode(" ", trim(fgets(STDIN)));
    $o_y   = (int)$tmp[0];
    $s     = (int)$tmp[1];
    $theta = (int)$tmp[2];

    $tmp = explode(" ", trim(fgets(STDIN)));
    $x   = (int)$tmp[0];
    $y   = (int)$tmp[1];
    $a   = (int)$tmp[2];

    $rad = deg2rad($theta);
    $yy = $o_y + ($x*tan($rad)) - (9.8*pow($x,2) / (2*pow($s,2)*pow(cos($rad),2)));
    $pos = round(abs($yy - $y),2);

    if ($pos <= ($a / 2)) {
        echo "Hit ";
        echo sprintf("%1.1f",$pos) . "\n";
    } else {
        echo "Miss\n";
    }
?>
