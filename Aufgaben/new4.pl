use strict;
use warnings;

use PDF::API2;
use PDF::TextBlock;
use lib '../Aufgaben/Module';
use new2 qw(main);

my @main = @{main()};

my $pdf = PDF::API2->new( -file => "Aufgabe4.pdf" );
my $page = $pdf->page();

my $header  = $page->text;
        $header->textlabel(240, 750, $pdf->corefont('Helvetica Bold'), 20, 'Kalender 2020');

my $tb  = PDF::TextBlock->new({
   page => $page,
   pdf       => $pdf,
});
$tb->text($main[0]);

my $tb2  = PDF::TextBlock->new({
   page => $page,
   pdf       => $pdf,
   x => 240,
});
$tb2->text($main[1]);

my $tb3  = PDF::TextBlock->new({
   page => $page,
   pdf       => $pdf,
   x => 420,
});
$tb3->text($main[2]);

my $footer  = $page->text;
        $footer->textlabel(180, 20, $pdf->corefont('Helvetica'), 11, 'Designed and developed by Iman Maryam Luensmann');


$tb->apply;
$tb2->apply;
$tb3->apply;

$pdf->save;
$pdf->end;