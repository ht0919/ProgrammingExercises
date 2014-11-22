<?php
$s = trim(fgets(STDIN));
$s = str_replace(array("\r\n","\r","\n"), '', $s);
$s = intval($s);

for ($i=1; $i<10; $i++) {
    echo $s*$i;
    if ($i<9) echo " ";
    else      echo "\n";
}
?>
