use strict; 
use warnings;

use Data::Dumper;

# turn of output buffering in console 
$|=1

sub splitAndReadingCSVFiles {
	my $input = "test.csv";
	
	# unless executes only when the conditon is false
	unless(open(INPUT, $input)) {
		die "\nCannot open $input\n"
	}
	
	# takes out the header from the csv data
	<INPUT>
	
	while (my $line = <INPUT>) {
		my @values = split(",", $line);
		
		print $values[0] . "\n";
	}
	close INPUT;
}

sub joinAndviewingDataUnsingDumper() {
	# join is kind of the opposite of split
	
	# join the elements into a array, and seperate it with | 
	join '|', @values;
	
	# returs a String and Acceps any arbitrary data structure
	# we can see, what is in the arrray 
	print Dumper(@values)
}

sub chompAndRemovingSpacesInSplits() {
	# in our csv is a invisible new line character that we have to remove
	
	# removes trailing record seperators (removes the new line at the end)
	chomp $line;
	
	#trim the data
	while (my $line = <INPUT>) {
		# zero or more space characters, followed by a comma
		my @values = split(/\s*,\s*/, $line);
		
		print $values[0] . "\n";
	}
}

sub pushingIntoAnArray() {
	my @lines;
	
	# pushes the value of line into the array lines 
	push @lines, $line
}

sub arrayOfArrays() {
	# two dimensional Arrays
	
	my @animals = ('dog', 'cat', 'rabbit');
	my @fruits = ('banana', 'apple', 'orange');
	
	my @values; 
	
	# the \ takes a reference to the array 
	push @values, \@animals;
	push @values, \@fruits;
	
	# gets the value 0 from array 1 (fruits)
	print $values[1][0]; 
	
	# pushes just the values to the new array 
	push @values, @fruits;
	
	print Dumper(@values);
}

sub hashesLookupTables() {
	
	# % for initialising a hash -> key - value pairs
	# hashes dont have any order
	my %months = (
		"Jan" => 1,
		"Dec" => 12,
		"Mar" => 3,
		"Apr" => 4,
		"Jun" => 6,
	); 
	
	# prints the value from the hash 
	print $months{"Jan"} . "\n"; 
	print $months{"Dec"} . "\n"; 
	
	my %days = (
		1 => "Monday",
		2 => "Tuesday",
		3 => "Wednesday",
	);
	
	my @months = keys %months;
	
	# iterating over the hash
	# or i can use foreach instead of for = its the same..
	for my $month(@months) {
		my $value = $months{$month};
		
		print $value ."\n";
	}
	
	# each returns an array
	while(my ($key,$value) = each %days) {
		print "$key: $value\n";
	}
}

sub iteratingOverHashes() {
	my %foods =(
		"cats" => "milk",
		"dogs" => "meat",
		"birds" => "seeds",
	);
	
	# creating a array with two values
	while(my ($key,$value) = each %foods) {
		print "$key: $value\n";
	}
	
	# gets all the keys from food
	# sorts alphabeticaly (not efficient)
	my @animals = sort keys %foods;
	
	foreach my $key(@animals) {
		my $value = $foods{$key}
		print "$key = $value \n";
	}	
}

sub arraysOfHashes() {
	my %hash1 = (
		"cats" => "milk",
		"dogs" => "meat",
		"birds" => "seeds",
	);
	
	my @test;
	
	#pushes the reference of the hash into the array
	push @test, \%hash1;
	
	#get the value out
	print $test[0]{"birds"} . "\n";
	
}


#splitAndReadingCSVFiles();
#joinAndviewingDataUnsingDumper();
#chompAndRemovingSpacesInSplits();
#pushingIntoAnArray();
arrayOfArrays();