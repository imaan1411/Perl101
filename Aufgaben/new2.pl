use strict;
use warnings;

use Data::Dumper;

sub main() {
	my @months = qw[Januar Februar Maerz April Mail Juni Juli August September Oktober November Dezember];
	my @amountOfDaysInMonth = (31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
	my @days = qw[Mo Di Mi Do Fr Sa So];
	my $counter = 0;
	my $lastDayCounter = 0;
	my $valueOftheLastDay = 0;
	
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
		#$amountOfDaysInMonth[$counter] += $valueOftheLastDay;


		foreach my $arr(1..$amountOfDaysInMonth[$counter] ) {
			
			if(length $arr == 1) {
				print "0" . $arr . ", "; 
			} else {
				print "$arr, ";
			}
			
			
			
			if ($arr % 7 == 0) {
				print "\n";
				$lastDayCounter++;

				if ($lastDayCounter == 4) {
					$lastDayCounter = 0;
					$valueOftheLastDay = $amountOfDaysInMonth[$counter] - $arr;
					#print $amountOfDaysInMonth[$counter] + $valueOftheLastDay ."efwef" ; 

				}
			}
		}
		print "\n\n";
		$counter++;
	}

	
}

main();