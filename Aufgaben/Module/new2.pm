package new2;

use strict;
use warnings;

use Exporter qw(import);

our @EXPORT_OK = qw(main);


sub main() {
	my @months = qw[Januar Februar Maerz April Mai Juni Juli August September Oktober November Dezember];
	my @amountOfDaysInMonth = (31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
	my @days = qw[Mo Di Mi Do Fr Sa So];
	my $counter = 0;
	my $lastDayCounter = 1;
	my $valueOftheLastDay = 2;
	my $alp = "";
	
		foreach my $month (@months) {
			$alp = $alp . $month . "\n";
			$alp = $alp . "---------------------------\n";
			
			foreach my $day(@days) {
			$alp = $alp . $day . "  ";
		}	
		$alp = $alp . "\n";
		
		if($valueOftheLastDay != 0) {
			foreach my $i(1..$valueOftheLastDay) {
				$alp = $alp . "00, ";
			}
		}
		
		my $count = $valueOftheLastDay;
		
		foreach my $arr((1)..($amountOfDaysInMonth[$counter])) {
			$count++;
			
			if(length $arr == 1) {
				$alp = $alp . "0" . $arr . ", "; 
			} else {
				$alp = $alp . "$arr, ";
			}

			if (($count) % 7 == 0) {
				$alp = $alp . "\n";				
				
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
			
		$alp = $alp . "\n\n";
		$counter++;
	}
	
	return $alp;
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

1;