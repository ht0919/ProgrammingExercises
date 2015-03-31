<?php
// 必要な技術→配列の宣言と追加、並べ替え(sort関数)
$numbers = array();
// データの個数を取得する
$n = trim(fgets(STDIN));
// データの個数分繰り返す
for ($i=0; $i<$n; $i++) {
  $s = trim(fgets(STDIN));
  $s = str_replace(array("\r\n","\r","\n"), '', $s);
  // 取得したデータを配列の最後に追加する
  $numbers[] = (int)$s;
}
// 配列のデータを並べ替える
sort($numbers,SORT_NUMERIC);
// 配列のデータを一つずつ改行しながら表示する→\n
for ($i=0; $i<$n; $i++) {
  echo $numbers[$i] . "\n";
}
