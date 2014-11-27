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

    // ����ip�A�h���X�̎擾
    $str = trim(fgets(STDIN));
    $str = str_replace(array("\r\n","\r","\n"), '', $str);
    $sip = explode(".", $str);  // �t�B�[���h���Ƃɕ���

    // ���O�f�[�^�̎擾
    $inputln = trim(fgets(STDIN));
    for ( $i=0; $i<$inputln; $i++ ) {
        $str = trim(fgets(STDIN));
        $logs[$i] = str_replace(array("\r\n","\r","\n"), '', $str);
    }

    // ���O�f�[�^�����邠�����J��Ԃ�
    foreach ($logs as $log)
    {
        $s  = explode(" ", $log);   // �t�B�[���h���Ƃɕ���
        $ip = $s[0];                // ip�A�h���X�𒊏o
        $date = substr($s[3],1);    // ���t�𒊏o
        $file = $s[6];              // �t�@�C�����𒊏o
        $lip = explode(".", $s[0]);

        // ip�A�h���X��1��2����v�������H
        if ($sip[0] == $lip[0] && $sip[1] == $lip[1]) {
            // ip�A�h���X��3����v�A�܂���*�A�܂��͔͈͓����H
            if ($sip[2] == $lip[2] || $sip[2] == '*' ||
                           range_check($sip[2],$lip[2])) {
                // ip�A�h���X��4����v�A�܂���*�A�܂��͔͈͓����H
                if ($sip[3] == $lip[3] || $sip[3] == '*' ||
                                    range_check($sip[3],$lip[3])) {
                    echo $ip . " " . $date . " " . $file . "\n";
                }
            }
        }
    }
?>
