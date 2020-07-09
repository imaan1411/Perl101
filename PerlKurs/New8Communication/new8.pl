use strict; 
use warnings;

use Communnication::New8Speak qw(test greet);


sub module {
	#New8Speak::test();
	
	test();
	greet();
	
	# qw writes the commas and "" automaticaly
	#my @dogs= qw(retriever labrador alsatian);
	
}

module();