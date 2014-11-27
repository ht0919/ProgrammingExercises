<?php
    function range_check($sip, $lip)
    {
        if (strstr($sip, "[")) {
            $tmp = explode("-", $sip);
            $tp1 = (int)$tmp[0];    // from
            $tp2 = (int)$tmp[1];    // to
            if ($lip >= $tp1 && $lip <= $tp2) {
                return TRUE;
            }
        }
        return FALSE;
    }

    // 検索ipアドレスの取得
    $str = trim(fgets(STDIN));
    $str = str_replace(array("\r\n","\r","\n"), '', $str);
    $sip = explode(".", $str);  // フィールドごとに分解

    // ログデータの取得
    $inputln = trim(fgets(STDIN));
    for ( $i=0; $i<$inputln; $i++ ) {
        $str = trim(fgets(STDIN));
        $logs[$i] = str_replace(array("\r\n","\r","\n"), '', $str);
    }

    // ログデータがあるあいだ繰り返し
    foreach ($logs as $log)
    {
        $s  = explode(" ", $log);   // フィールドごとに分解
        $ip = $s[0];                // ipアドレスを抽出
        $date = substr($s[3],1);    // 日付を抽出
        $file = $s[6];              // ファイル名を抽出
        $lip = explode(".", $s[0]);

        // ipアドレスの1と2が一致したか？
        if ($sip[0] == $lip[0] && $sip[1] == $lip[1]) {
            // ipアドレスの3が一致、または*、または範囲内か？
            if ($sip[2] == $lip[2] || $sip[2] == '*' ||
                           range_check($sip[2],$lip[2])) {
                // ipアドレスの4が一致、または*、または範囲内か？
                if ($sip[3] == $lip[3] || $sip[3] == '*' ||
                                    range_check($sip[3],$lip[3])) {
                    echo $ip . " " . $date . " " . $file . "\n";
                }
            }
        }
    }
?>
