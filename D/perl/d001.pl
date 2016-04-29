my $s = <STDIN>;
chomp($s);
@s = split(/ /,$s);
if ($s[0] eq $s[1]) {
    printf("True\n");
} else {
    printf("False\n");
}
