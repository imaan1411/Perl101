use strict; 
use warnings;
use Data::Dumper;
use Getopt::Std;

sub gettingCommandLineOptionsAndSubRoutines() {
	# is like arg[] in java 
	print Dumper(@ARGV);
	
	my %opts;
	
	# takes the argument and put it in the hash 
	getopts('af:c', \%opts);
	
	my %opts_ref = \%opts;
	
	# use hash directly
	 print %opts{"f"} . "\n";
	 
	 # use reference to hash
	 print %opts_ref->{"f"} . "\n";
	referencesToHash(%opts_ref);
	
	if(!passingArgumentsToSubroutines("hello", 7)) {
		usage();
	}
	
}

sub passingArgumentsToSubroutines() {
	#gets the first arg and deletes ist 
	my $greeting1 = shift;
	# the second arg can also be read by shift
	
	# gets the arguments
	print Dumper(@_);
	
	# saves the arguments into an array;
	my ($greeting, $number) = @_;
	
	print "$greeting number $number\n";
	
	return 1;
}

sub usage {
	# multiline string
	# but it gives me an error message... 
	# Can't find string terminator "USAGE" anywhere before EOF
	#print <<USAGE;
	#	usage: new4.pl <options>
	#	-f <file name> 	specify XML file ma,e to parse
	#	-a 				turn off errror checking
	#	
	#	example usage:
	#	new4.pl -f test.xml -a
	
	#USAGE
	
	exit();
}


sub referencesToHash {
	my $opts_ref = shift;
	
	print %opts_ref->{"f"} . "\n";
	
}

gettingCommandLineOptionsAndSubRoutines();

