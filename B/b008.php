<?php
$max = 0;
$incom = array();
$s = trim(fgets(STDIN));
$s = str_replace(array("\r\n","\r","\n"), '', $s);
$s = explode(" ", $s);
$N = intval($s[0]);
$M = intval($s[1]);
if ($M>0 && $N>0) {
    for ($i=0; $i<$M; $i++) {
        $s = trim(fgets(STDIN));
        $s = str_replace(array("\r\n","\r","\n"), '', $s);
        $s = explode(" ", $s);
        $sum = 0;
        foreach ($s as $n) {
            $sum += intval($n);
        }
        array_push($incom,$sum);
    }
    foreach ($incom as $n) {
        if ($n>0) {
            $max += $n;
        }
    }
}
echo $max . "\n";
?>
