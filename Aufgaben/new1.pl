use strict;
use warnings;


sub main() {
	my $alphabet = 'abcdefghijklmnopqrstuvwxyz';
	my $alp = '';
	
	my $counter = 0;
	
	foreach my $char (split('', $alphabet)) {
		$counter++;
		if ($counter % 3 == 0) {
			print uc($char);
			$alp = $alp . uc($char);
		} else {
			print $char;
			$alp = $alp . $char;
		}			
	}

return $alp;	
}

sub realmain() {
	
	my $alp = main();
	
	print $alp;
}

realmain();
