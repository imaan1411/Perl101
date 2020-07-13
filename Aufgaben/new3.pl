use strict;
use warnings;

use PDF::API2;
use lib '../Aufgaben/Module';
use new1 qw(main);


my $pdf = PDF::API2->new();

my $page = $pdf->page();
  
$page->mediabox('Letter');
 
my $font = $pdf->corefont('Helvetica-Bold');
  
my $text = $page->text();
$text->font($font, 20);
$text->translate(200, 700);
$text->text(main());

 
$pdf->saveas('C:\tmp\new.pdf');
