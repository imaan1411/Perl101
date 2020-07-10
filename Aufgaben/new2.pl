use strict;
use warnings;

use Data::Dumper;

sub main() {
	my @months = qw[Januar Februar Maerz April Mai Juni Juli August September Oktober November Dezember];
	my @amountOfDaysInMonth = (31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
	my @days = qw[Mo Di Mi Do Fr Sa So];
	my $counter = 0;
	my $lastDayCounter = 1;
	my $valueOftheLastDay = 2;
	
		foreach my $month (@months) {
			
			print $month . "\n";
			print "---------------------------\n";
			
			foreach my $day(@days) {
			print $day . "  ";
		}	
		print "\n";
		
		if($valueOftheLastDay != 0) {
			foreach my $i(1..$valueOftheLastDay) {
				print "00, ";
			}
			
		}
		
		my $count = $valueOftheLastDay;
		
		foreach my $arr((1)..($amountOfDaysInMonth[$counter])) {
			$count++;
			
			if(length $arr == 1) {
				print "0" . $arr . ", "; 
			} else {
				print "$arr, ";
			}
			

			if (($count) % 7 == 0) {
				print "\n";				
				
				if ($lastDayCounter == 4) {
					
					$valueOftheLastDay = $amountOfDaysInMonth[$counter] - $arr;
 					$lastDayCounter = 0;
					if ($valueOftheLastDay != 0) {
						$valueOftheLastDay = checkIfSeven($valueOftheLastDay);				
					}
				}
				$lastDayCounter++;
			}
		}
			
		print "\n\n";
		$counter++;
	}
	
	
}

sub checkIfSeven {
	if($_[0] >= 7) {
		$_[0]-=7; 
	}

	if ($_[0] >= 7) {
		
		checkIfSeven($_[0]);
	}

return $_[0];

}

main();