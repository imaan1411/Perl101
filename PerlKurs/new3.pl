use strict; 
use warnings;

use LWP::Simple;

sub basicWebScraping() {
	my $content = get("http://www.caveofprogramming.com");
	unless(defined($content)) {
		die "unreachable url\n";
	}
	
	if($content =~ m'<a class"mainlink" href=".+?">(.+?)</a>'i) {
		my $title = $1;
		
		print "title: $title\n";
	} else {
		print "Title not found\n";
	}
}

sub characterClasses() {
	my $content = "The 39 steps - a GREAT book- colours_15 ==%==";
	
	# Ranges, only one digit 
	# [0-9] any number
	# [A-Z] any uppercase letter
	# /(C[A-Za-z_0-9]){2,}/) specify alternatives just by listing them
	# [\=\%] list alternatices Backslash any character that might have a special meaning in regex
	# ^ dont matches, we dont want them 
	if ($content =~ /([^+0-9]){2,}/) {
		print "matched '$1' \n";
	} else {
		print "no match \n"
	}
}


sub collectingRepeatedMatchesAllAtOnce() {
	# disadvantage is, that it stores in memory (it will be slow when there is a lot of data)
	my $content = get("http://www.caveofprogramming.com");
	unless(defined($content)) {
		die "unreachable url\n";
	}
	
	# =~ equals-matches 
	# m = matches |regex| i = case insensitive g = globally
	my @classes = $content =~ m|class="([^"']*?)"|ig;
	
	if(@classes == 0) {
		print("No matches\n");
	} else {
		foreach my $class(@classes) {
			print "$class\n"
		}
	}
}

#basicWebScraping();
#characterClasses();
collectingRepeatedMatchesAllAtOnce();