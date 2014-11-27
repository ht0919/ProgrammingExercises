my @XA;
my @XB;

my $s = <STDIN>;
chomp($s);
@s = split(/ /,$s);
$T = $s[0];
$U = $s[1];

my $s = <STDIN>;
chomp($s);
@s = split(/ /,$s);
foreach my $x(@s) { push(@XA,int $x); }

my $s = <STDIN>;
chomp($s);
@s = split(/ /,$s);
foreach my $x(@s) { push(@XB,int $x); }

if ($T eq "A") {
    $pass = $XA[$U-1];
    @XB = sort {$a <=> $b} @XB;
    $b = $XB[9];
    $flg = 0;
    $num = 1;
    foreach my $a(@XA) {
        if ($a>=55 && $a>$b && $a>$pass) {
            print "$num\n";
            $flg = 1;
        }
        $num += 1;
    }
    if ($flg == 0) { print "None\n"; }
} else {
    $pass = $XB[$U-1];
    @XA = sort {$a <=> $b} @XA;
    $a = $XA[1];
    $flg = 0;
    $num = 1;
    foreach my $b(@XB) {
        if ($b<=55 && $b<$a && $b<$pass) {
            print "$num\n";
            $flg = 1;
        }
        $num += 1;
    }
    if ($flg == 0) { print "None\n"; }
}
