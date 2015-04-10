<?php
$n = trim(fgets(STDIN));
for ( $i = 0; $i < $n; $i++) {
  $s = trim(fgets(STDIN));
  $s = str_replace(array("\r\n","\r","\n"), '', $s);
  $s = explode(" ", $s);
  $recipes[$s[0]] = (int)$s[1];
}

$m = trim(fgets(STDIN));
for ( $i = 0; $i < $m; $i++) {
  $s = trim(fgets(STDIN));
  $s = str_replace(array("\r\n","\r","\n"), '', $s);
  $s = explode(" ", $s);
  $cuisine[$s[0]] = (int)$s[1];
}

$cnt = 0;
$flg = true;
do {
  foreach ($recipes as $key => $value) {
    if (!isset($cuisine[$key]) || $cuisine[$key] < $value) {
      $flg = false;
      break;
    }
    $cuisine[$key] -= $value;
  }
  if ($flg) $cnt++;
} while($flg);

echo $cnt . "\n";
?>
