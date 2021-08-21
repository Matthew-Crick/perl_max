use strict;
use Data::Dump qw(dump);
use Test::More tests => 2;
use feature qw (say);

sub max($)
 {my ($a) = @_;
  my $max_val = 0;	
  for my $i (keys @$a)
   {if ($a 	-> 	[$i] > $max_val)
	 {$max_val = $a  -> [$i]
     }
   }
  $max_val
 }

if(1)
  {my $a = [32, 56, 98, 1, 42, 22 ,12];
   say "---\nmax_value is ", max $a;
   is_deeply(max $a, 98, "test_one");
  }
  
if(1)
  {my $a = [123, 43, 654, 234234, 7,867 ,6, 3, 5, 5464];
   say "---\nmax_value is ", max $a;
   is_deeply(max $a, 234234, "test_one");
  }

