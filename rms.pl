#!/usr/bin/perl
use strict;
use List::Util qw(max);
my @files = <corpus2/*png>;
my $count = 0;
`rm -rf out`;
mkdir("out");
my $last = -1;
while(<>) {
	my ($left,$right) = (/{'leftrms':([^,]+), 'rightrms':([^}]+)}/);
	#my $rms = ($left + $right)/2.0;
	my $rms = max($left,$right);
	my $i = int(scalar(@files) * $rms/(2**15));
	if ($i == $last) {
		$i += -1 + int(rand(3));
		$i = max($i,0);
	}
	my $file = $files[$i];
	print "# $file $left $right $rms$/";
	print "ln $file ",sprintf('out/%06d.png',$count++),"$/";
}
