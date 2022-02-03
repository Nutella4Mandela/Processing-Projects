void setup()
{
  size(900,300);
}
void draw()
{
  // This math basically makes the circle fit no matter what size of the screen.
  int scale = (height+width)/8;
  // I positioned the squares this way so they can be in place no matter what size.
  // I used strokeJoin so I can change the corners of the square to pointy, round, and a mixture of the two.
  background(120);
  strokeWeight(20);
  strokeJoin(MITER);
  rect(width/16,height/4,scale,scale);
  strokeJoin(ROUND);
  rect(width/3.5,height/4,scale,scale);
  strokeJoin(BEVEL);
  rect(width/1.95,height/4,scale,scale);
  strokeJoin(MITER);
  rect(width/1.35,height/4,scale,scale);
}
