 use GD::Simple;
 
 $img = GD::Simple->new(600,300);

 $img->bgcolor(undef);
 $img->fgcolor('blue');
 
 $img->moveTo(50,192);
 $img->lineTo(50,273); 
 
 $img->moveTo(50,273);
 $img->lineTo(119,280); 

 $img->moveTo(119,280);
 $img->lineTo(119,199); 


 my $poly = new GD::Polygon;
 $poly->addPt(84.5,130);
 $poly->addPt(119,199);
 $poly->addPt(50,192);
 $img->bgcolor('cyan');
 $img->fgcolor('blue');
 $img->penSize(1,1);
 $img->polygon($poly);

 $img->moveTo(84.5,130);
 $img->lineTo(250,130);
 
 $img->moveTo(119,199);
 $img->lineTo(299,199);
 
 $img->moveTo(250,130);
 $img->lineTo(299,199);

 $img->moveTo(299,199);
 $img->lineTo(299,280);

 $img->moveTo(299,280);
 $img->lineTo(119,280);

 $img->moveTo(400,50);
 $img->bgcolor('orange');
 $img->fgcolor('orange');
 $img->ellipse(60,60);
 
  $img->fgcolor('orange');

 
 $img->moveTo(400,50);
 $img->lineTo(430,130);
 $img->moveTo(400,50);
 $img->lineTo(380,130);
 $img->moveTo(400,50);
 $img->lineTo(330,120);
 
 $img->moveTo(380,50);
 $img->lineTo(330,60);
 $img->moveTo(400,40);
 $img->lineTo(300,15);

 $img->fgcolor('blue');

 $img->moveTo(400, 57);
 $img->bgcolor('darkviolet');
 $img->fgcolor('darkviolet');
 $img->arc(45, 30, 0, 180, gdEdged);
 
 $img->moveTo(390,40);
 $img->bgcolor('darkviolet');
 $img->fgcolor('darkviolet');
 $img->ellipse(10,10);
 
 $img->moveTo(410,40);
 $img->bgcolor('darkviolet');
 $img->fgcolor('darkviolet');
 $img->ellipse(10,10);
 
 $img->moveTo(70,250);
 $img->lineTo(70,275); 
 
 $img->moveTo(90,252.5);
 $img->lineTo(90,277); 

 $img->moveTo(70,250);
 $img->lineTo(90,252.5); 


 $img->moveTo(57,210);
 $img->lineTo(57,228); 
 
 $img->moveTo(75,212.5);
 $img->lineTo(75,230); 

 $img->moveTo(57,210);
 $img->lineTo(75,212.5); 

 $img->moveTo(57,228);
 $img->lineTo(75,230); 


 $img->moveTo(90,214);
 $img->lineTo(90,231); 
 
 $img->moveTo(110,216);
 $img->lineTo(110,233); 

 $img->moveTo(90,214);
 $img->lineTo(110,216); 

 $img->moveTo(90,231);
 $img->lineTo(110,233); 


 $img->bgcolor('darkblue');
 $img->fgcolor('blue');
 $img->rectangle(140,210,160,230);
 
 $img->bgcolor('aquamarine');
 $img->fgcolor('blue');
 $img->rectangle(190,210,210,230);
 
 $img->bgcolor('crimson');
 $img->fgcolor('blue');
 $img->rectangle(230,210,280,230);
 
 $img->bgcolor('deeppink');
 $img->fgcolor('blue');
 $img->rectangle(230,240,280,260);


 $img->bgcolor('magenta');
 $img->fgcolor('blue');
 $img->rectangle(160,240,180,260);
 
 $img->bgcolor('olive');
 $img->fgcolor('blue');
 $img->rectangle(200,240,220,260);

 $img->moveTo(370,150);
 $img->font('Arial');
 $img->string('Je suis un snowboard');

 my $berg = new GD::Polygon;
 $berg->addPt(400,170);
 $berg->addPt(380,200);
 $berg->addPt(420,200);
 $img->bgcolor('azure');
 $img->fgcolor('blue');
 $img->penSize(1,1);
 $img->polygon($berg);
 
 my $berg2 = new GD::Polygon;
 $berg2->addPt(380,200);
 $berg2->addPt(420,200);
 $berg2->addPt(465,270);
 $berg2->addPt(335,270);
 $img->bgcolor('gainsboro');
 $img->fgcolor('blue');
 $img->penSize(1,1);
 $img->polygon($berg2);

 
 $img->_file('haus.png');