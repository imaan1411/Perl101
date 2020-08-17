 use GD::Simple;
 use PDF::API2;
 use PDF::Image::JPEG;
 
 my $pdf = PDF::API2->new();
 my $page = $pdf->page();
 $page->mediabox('Letter');
 my $content = $page->gfx();

my $image_object = $pdf->image_jpeg('bild.jpeg');
$content->image($image_object, 100, 200);

$pdf->saveas('olympia.pdf');
