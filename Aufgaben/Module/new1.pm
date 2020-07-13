package new1;

use strict;
use warnings;
use Exporter qw(import);

our @EXPORT_OK = qw(main);

sub main() {
	my $alphabet = 'abcdefghijklmnopqrstuvwxyz';
	my $alp = '';
	
	my $counter = 0;
	
	foreach my $char (split('', $alphabet)) {
		$counter++;
		if ($counter % 3 == 0) {
			$alp = $alp . uc($char);
		} else {
			$alp = $alp . $char;
		}			
	}

return $alp;	
}

1;