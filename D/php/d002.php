<?php
  $s = trim(fgets(STDIN));
  $s = str_replace(array("\r\n","\r","\n"), '', $s);
  $s = explode(" ", $s);
  if ($s[0] > $s[1]) {
    echo $s[0]."\n";
  } else if ($s[0] < $s[1]) {
    echo $s[1]."\n";
  } else {
    echo "eq\n";
  }
?>
