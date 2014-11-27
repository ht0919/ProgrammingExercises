<?php
$XA = array();
$XB = array();

$tmp = trim(fgets(STDIN));
$tmp = str_replace(array("\r\n","\r","\n"), '', $tmp);
$tmp = explode(" ", $tmp);
$T = $tmp[0];
$U = intval($tmp[1]);

$tmp = trim(fgets(STDIN));
$tmp = str_replace(array("\r\n","\r","\n"), '', $tmp);
$tmp = explode(" ", $tmp);
foreach ($tmp as $x) { array_push($XA,intval($x)); }

$tmp = trim(fgets(STDIN));
$tmp = str_replace(array("\r\n","\r","\n"), '', $tmp);
$tmp = explode(" ", $tmp);
foreach ($tmp as $x) { array_push($XB,intval($x)); }

if ($T == "A") {
    $pass = $XA[$U-1];
    sort($XB);
    $b = $XB[9];
    $flg = false;
    $num = 1;
    foreach ($XA as $a) {
        if ($a>=55 && $a>$b && $a>$pass) {
            echo $num . "\n";
            $flg = true;
        }
        $num += 1;
    }
    if ($flg == false) { echo "None\n"; }
} else {
    $pass = $XB[$U-1];
    sort($XA);
    $a = $XA[1];
    $flg = false;
    $num = 1;
    foreach ($XB as $b) {
        if ($b<=55 && $b<$a && $b<$pass) {
            echo $num . "\n";
            $flg = true;
        }
        $num += 1;
    }
    if ($flg == false) { echo "None\n"; }
}
?>
