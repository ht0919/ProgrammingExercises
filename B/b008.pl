my $max = 0;
my @incom;
my $s = <STDIN>;
chomp($s);
@s = split(/ /,$s);
$N = $s[0];
$M = $s[1];
if ($M>0 && $N>0) {
    for ($i=0; $i<$M; $i++) {
        my $s = <STDIN>;
        chomp($s);
        @s = split(/ /,$s);
        $sum = 0;
        foreach my $n(@s) {
            $sum += $n;
        }
        push(@incom,$sum);
    }
    foreach my $n(@incom) {
        if ($n>0) {
            $max += $n;
        }
    }
}
print "$max\n";
