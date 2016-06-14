#!/usr/bin/env perl
use strict;
use warnings;
use feature 'say';

my @prime = ();
sub is_prime {
  my $n = shift;
  for my $p (@prime) { return 0 if $n % $p == 0; }
  my $start = 2;
  #scalar @prime > 0 ? $start = $prime[$#prime] : $start = 2;
  #scalar @prime > 0 ? $start = $prime[0] : $start = 2;
  for (my $i = $start; $i <= $n/2; $i++){
    return 0 if $n % $i == 0;
  }
  return 1;
}

my $max = 10000;
for my $n (2..$max) {
  if (is_prime($n)) {
    #say "Pizza";
  } else {
    #say $n;
    #push(@prime, $n);
    #unshift(@prime, $n);
  }
}

exit 0;
