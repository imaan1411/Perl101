#what does this
#Always do that :) 
use strict; 
use warnings;


#entry point or a method

sub main {
	print ("hello world");
	
	#gets the html source 
	print get("https://www.google.com");
	
	# downloads the html and save it in a new file "home.html" in the current directory 
	#needs the LWP::Simple import
	getstore("https://www.google.com", "home.html");
	
	#variable (my $name)
	my $code = "code";
	
}

sub checkIfFileExist() {

	# singlequotes refer to a simple string without anything to be interpreted like for example \n
	my $path = 'C:\test\perl\logo.png'; #does not exist


	# -f determines if file exist
	if(-f $path) {
		print "Found";
	} else {
		print "File " . $path . " not Found \n";
		print "File $path not Found\n";
	}

}

sub arrayTest() {
	#@ for array declaration
	my @files = (
		'C:\test\perl\logo.png', 
		'bestätigung Steuererklärung19.pdf', 
		'C:\tmp\hallo.txt',
		);
		
	
	#set each file in files in the variable $file 
	foreach my $file(@files) {
		if(-f $file) {
			print "Found";
		} else {
			print "File $file not Found\n";
		}
	} 
}

sub readingFilesWithRegex() {
	my $file = 'C:\tmp\hallo.txt';
	
	# The first argument is a way of refering to the file
	# INPUT ist lika a file handler 
	# or is kinda like an if else 
	open(INPUT, $file) or die "Input $file not Found";
	
	#<INPUT> reads one line from the file and return it to the variable line
	while(my $line = <INPUT>) {
	# REGEX only print line where "iman" is in
		if($line =~ /iman/) {
			print $line;
		}
	}
	# stops the code
	#die;
	
	close INPUT;
}

sub creatingAFileAndReplacingText() {
	my $input = 'C:\tmp\hallo.txt';
	open(INPUT, $input) or die "Input $input not Found";

	# the > tells perl to create this file
	my $output = '>output.txt';
	# or i can concat the string (OUTPUT, '>'.$output)
	open(OUTPUT, $output) or die "Can't create $output \n";
	
	while(my $line = <INPUT>) {
		
	
		# REGEX only print line where "iman" is in
		# \b -> boundary (ignors whitespaces, commas, fuel stops usw. )
		if($line =~ /\biman\b/) {
			# s for saying perl to repace /you/ the word to replace /ME/ the value 
			# s/you/ME/ig -> i is case insensitive, g is global (replace all occurences)
			$line =~ s/you/ME/g;
			print OUTPUT $line;
		}	
	}	
	
	# prints in the file 
	#like print to OUTPUT
	#print OUTPUT "Hello\n";
	
	close(INPUT);
	close(OUTPUT);
	
}

sub wildcardCharacterinRegex() {
	my $input = 'C:\tmp\hallo.txt';
	open(INPUT, $input) or die "Input $input not Found";

	while(my $line = <INPUT>) {
		# . is any character
		if($line =~ /y./) {
			print $line;
		}
	}
	close(INPUT);
}

sub groupsFindingOutWhatMatches() {
	my $input = 'C:\tmp\hallo.txt';
	open(INPUT, $input) or die "Input $input not Found";

	while(my $line = <INPUT>) {
		if($line =~ /(y.)(...)/) {
		#$1 refers to the first brackets in the regex and $2 to the second (and so on..)
			print "$1$2\n";
		}
	}
	close(INPUT);
}

sub quantifiersGreedyAndNonGreedy() {
	my $input = 'C:\tmp\hallo.txt';
	open(INPUT, $input) or die "Input $input not Found";

	while(my $line = <INPUT>) {
		#+ means one or more 
		#* means 0 or more (so*n) son, soon, sn 
		# (s.*n) matches s sdkjnfhskjf n (as many as possible)
		# (s.*?n) matches s sdkjn (non greedy, as little as possible)
		if($line =~ /(so*n)/) {
			print "$1\n";
		}
	}
	close(INPUT);
}

sub escapeSequences() {
	# \d digit (zahl)
	# \s space (tab, two spaces usw.)
	# \S non space
	# \w alphanumeric z.B. _
	
	my $text = 'I am 117 years old tomorrow.';
	
	if($text =~ /(am\s\d+)/) {
		print "Matched: $1 \n";
	}
	if($text =~ /(y\S*)/) {
		print "Matched: $1 \n";
	}
	
	my $text2 = 'Iam117yearsoldtomorrow.';
	if($text2 =~ /(\w*)/) {
		print "Matched: $1 \n";
	}
}

sub numericQuantifiers() {
	my $text = 'DE54832';
	# {5} five of the preceding
	# {3,6} st least 3, at most 6
	# {3,} st least 3
	
	if($text =~ /(DE\d{5})/) {
		print "Matched: $1 \n";
	}
}

sub validateEmailAddr() {
	my $text = 'iman@iman.ch';
	# {5} five of the preceding
	# {3,6} st least 3, at most 6
	# {3,} st least 3
	
	if($text =~ /\w+\@\w+\.\w+/) {
		print "Matched: $text \n";
	}
}

sub pickOutTheMachineCode {
	my $text = "The code for this device is GP8456.";
	
	#or \w\w instead of ..
	if ($text =~ /(..\d{4})/) {
		print "$1\n";
	} else {
		print 'nononono \n';
	}
	
	if ($text =~ /( is\s.+\.)/) {
		print $1;
	} else {
		print 'nononono';
	}
}


# run the methods
#main();
#checkIfFileExist();
#arrayTest();
#readingFilesWithRegex();
#creatingAFileAndReplacingText();
#wildcardCharacterinRegex();
#groupsFindingOutWhatMatches();
#quantifiersGreedyAndNonGreedy();
#escapeSequences();
#numericQuantifiers();
#validateEmailAddr();
pickOutTheMachineCode();




