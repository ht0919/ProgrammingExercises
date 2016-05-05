# D001.pl

$s = <STDIN>;
chomp($s);
@s = split(/ /,$s);
$N = $s[0];
$M = $s[1];
$K = $s[2];

@C;
$s = <STDIN>;
chomp($s);
@s = split(/ /,$s);
for ($i=0; $i<$N; $i++) {
    $C[$i] = $s[$i];
}

@SCORE;
for ($i=0; $i<$M; $i++) {
    $s = <STDIN>;
    chomp($s);
    @s = split(/ /,$s);
    for ($j=0; $j<$N; $j++) {
        $X[$j] = $s[$j];
        $SCORE[$i] += $C[$j] * $X[$j];
    }
}

@LANK = sort {$b <=> $a} @SCORE;
for ($i=0; $i<$K; $i++) {
    print int($LANK[$i]+0.5) . "\n";
}
