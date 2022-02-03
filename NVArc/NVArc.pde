void setup()
{
  size(900,300);
}
void draw()
{
  // This math basically makes the circle fit no matter what size of the screen.
  int scale = (height+width)/8;
  // I positioned the circles this way so they can be in place no matter what size.
  background(120);
  arc(width/8,height/2,scale,scale,0,PI/2);
  arc(width/2.8,height/2,scale,scale,0,PI*1.5);
  arc(width/1.65,height/2,scale,scale,-PI,PI/2);
  arc(width/1.15,height/2,scale,scale,0.95,PI*1.3);
}
