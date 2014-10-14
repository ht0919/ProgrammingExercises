<?php
    $keytbl = array(
        array('.','@','-','_','/',':','~','1'),
        array('a','b','c','A','B','C','2'),
        array('d','e','f','D','E','F','3'),
        array('g','h','i','G','H','I','4'),
        array('j','k','l','J','K','L','5'),
        array('m','n','o','M','N','O','6'),
        array('p','q','r','s','P','Q','R','S','7'),
        array('t','u','v','T','U','V','8'),
        array('w','x','y','z','W','X','Y','Z','9')
    );

    $s = trim(fgets(STDIN));
    $keystr = str_replace(array("\r\n","\r","\n"), '', $s);
    $str = '';

    for ( $i=0; $i<strlen($keystr); ) {
        if ($keystr[$i] == 'E') {
            $i++;
            continue;
        }
        $cnt = 0;
        // 連続文字数のカウント
        for ( $j=$i; $keystr[$i] == $keystr[$j]; $j++ ) {
            $cnt++;
        }
        // キーテーブルの数を超えていたらローテーション(※1周以上にも対応)
        $tblcnt = count($keytbl[$keystr[$i]-1]);
        while ($cnt > $tblcnt) {
            $cnt -= $tblcnt;
        }
        // 文字の連結
        $str = $str . $keytbl[$keystr[$i]-1][$cnt-1];
        $i = $j;
    }
    echo $str . "\n";
?>