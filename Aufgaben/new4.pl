use strict;
use warnings;

use PDF::API2;
use PDF::TextBlock;
use lib '../Aufgaben/Module';
use new2 qw(main);


my $pdf = PDF::API2->new( -file => "Aufgabe4.pdf" );
my $page = $pdf->page();

my $tb  = PDF::TextBlock->new({
	page => $page,
   pdf       => $pdf,
   fonts     => {
      b => PDF::TextBlock::Font->new({
         pdf  => $pdf,
         font => $pdf->corefont( 'Helvetica-Bold', -encoding => 'latin1' ),
      }),
   },
});
$tb->text(main());

$tb->apply;


$pdf->save;
$pdf->end;