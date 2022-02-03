// I made the integer for the position of the circle and the speed.
int circleX = width/2;
int speed = 1;
float circleY = height/2;
float speedY = 0.58;
float circleX2 = width*6.15;
int speed2 = 1;
void setup() {
  size(640,400);
}
void draw() {
  background(120);
  stroke(0);
  fill(255,0,0);
  // The speed is what's making the circle move. 
  ellipse(circleX,height/2,50,50);
  circleX = circleX + speed;
  fill(0,255,0);
  ellipse(circleX,circleY,50,50);
  circleY = circleY + speedY;
  fill(0,0,255);
  ellipse(width/2,circleY,50,50);
  fill(255,255,0);
  ellipse(circleX2,circleY,50,50);
  circleX2 = circleX2 + speed2;
  if (circleX > width/1.04) 
  {
    speed = -1;
  }
  if (circleX < width/30) 
  {
    speed = +1;
  }
  if (circleY > height/1.06)
  {
    speedY = -0.58;
  }
  if (circleY < height/15)
  {
    speedY = +0.58;
  }
   if (circleX2 < width/30) 
  {
    speed2 = +1;
  }
  if (circleX2 > width/1.04)
  {
    speed2 = -1;
  }
}
