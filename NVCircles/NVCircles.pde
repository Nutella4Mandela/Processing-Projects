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
  strokeWeight(3);
  circle(width/8,height/2,scale);
  strokeWeight(6);
  circle(width/2.8,height/2,scale);
  strokeWeight(8);
  circle(width/1.65,height/2,scale);
  strokeWeight(30);
  circle(width/1.15,height/2,scale);
}
