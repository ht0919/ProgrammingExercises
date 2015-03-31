<?php
// 1 1 → 2
$s = trim(fgets(STDIN));
$s = str_replace(array("\r\n","\r","\n"), '', $s);
$s = explode(" ", $s);
$sum = 0;
for ($i=0; $i<count($s); $i++ ) {
  $sum += $s[$i];
}
echo $sum."\n";
?>
