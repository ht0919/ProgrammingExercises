<?php
  $s = trim(fgets(STDIN));
  $s = str_replace(array("\r\n","\r","\n"), '', $s);
  $s = explode(" ", $s);
  echo (int)($s[0] / $s[1]) . " ";
  echo ($s[0] % $s[1]) . "\n";
?>
