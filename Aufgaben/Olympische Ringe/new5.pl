 use GD::Simple;
  
 $img = GD::Simple->new(400,250);
 
 $img->penSize(3);
 $img->bgcolor('white');

 $img->moveTo(100, 50);
 $img->fgcolor('blue');
 $img->arc(60, 60, 0, 360, gdEdged);
 
 $img->moveTo(170, 50);
 $img->fgcolor('black');
 $img->arc(60, 60, 0, 360, gdEdged);
 
 $img->moveTo(240, 50);
 $img->fgcolor('red');
 $img->arc(60, 60, 0, 360, gdEdged);

 $img->moveTo(135, 80);
 $img->fgcolor('yellow');
 $img->arc(60, 60, 0, 360, gdEdged);
 
 $img->moveTo(205, 80);
 $img->fgcolor('green');
 $img->arc(60, 60, 0, 360, gdEdged);

 $img->_file('bild.jpeg');


