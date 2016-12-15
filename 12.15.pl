#!/uer/bin/perl -w
use strict;
use warnings;
my $DNA = 'AAAAAAAAAA';
my $i;
my $mutant;
srand( time | $$ );
$mutant = mutate($DNA);
print "\nMutate DNA\n\n";
print "\nhere is the original dna:\n\n";
print "$DNA\n";
print "\nhere is the mutant DNA:\n\n";
print "$mutant\n";
print "\nhere are 10 more successive mutations:\n\n";
for ( $i = 0 ;$i < 10 ; ++$i ){
$mutant = mutate($mutant);
print "$mutant\n";
}
sub mutate {
my ($dna) = @_;
my (@nucleotides) = ('A','C','G','T');
my ($position) = randomposition($dna);
my ($newbase) = randomnucleotide(@nucleotides);
substr( $dna,$position,1,$newbase );
return $dna;
}
sub randomelement {
my (@array) = @_;
return $array[ rand @array ];
}
sub randomnucleotide {
my (@nucleotides) = ('A','C','G','T');
return randomelement(@nucleotides);
}
sub randomposition {
my ($string) = @_;
return int rand length $string;
}
