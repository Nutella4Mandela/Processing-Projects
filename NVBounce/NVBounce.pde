// I made the integer for the position of the circle and the speed.
int circleX = width/2;
int speed = 1;
void setup() {
  size(200,200);
  smooth();
}
void draw() {
  background(255);
  stroke(0);
  fill(175);
  // The speed is what's making the circle move. 
  ellipse(circleX,height/2,50,50);
  circleX = circleX + speed;
  // If the position is at the right edge of the screen, it will go to the left.
  if (circleX > width/1.15) 
  {
    speed = -1;
  }
  // If the position is at the left edge of the screen, it will go to the right.
  if (circleX < width/8) 
  {
    speed = +1;
  }
}
