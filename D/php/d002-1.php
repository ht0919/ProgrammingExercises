<?php
$s = trim(fgets(STDIN));
$s = str_replace(array("\r\n","\r","\n"), '', $s);
$s = explode(" ", $s);
$a = intval($s[0]);
$b = intval($s[1]);

if ($a == $b) {
    echo "eq";
} else {
    if ($a > $b) {
        echo $a;
    } else {
        echo $b;
    }
}
echo "\n";
?>
