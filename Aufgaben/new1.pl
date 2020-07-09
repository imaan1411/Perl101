use strict;
use warnings;

sub main() {
	my $alphabet = 'abcdefghijklmnopqrstuvwxyz';
	
	my $counter = 0;
	
	foreach my $char (split('', $alphabet)) {
		$counter++;
		if ($counter % 3 == 0) {
			print uc($char);
		} else {
			print $char;
		}			
	}	
}
main();