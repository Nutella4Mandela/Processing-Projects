// Nelson Villegas
// 10/28/2020
float sBallX = 2; // Small ball x coordinates
float sBallY = 2; // Small ball y coordinates
float sSpeedX = 3; // Small ball speed(left or right)
float sSpeedY = 3; // Small ball speed(up or down)
float bBallY = height/2; // Big ball y coordinates
float bSpeedY = 1; // Big ball speed(up or down)
float bBallX = width*3; // Big ball x coordinates
float SBSize = 20; // Small ball size
float BBSize = 100; // Big ball size
float r = 100; // The colors for the small ball
float g = 100;
float b = 100;
void setup()
{
  size(600,600);
}
void draw()
{
  background(34,100,178);
  noStroke();
  fill(r,g,b); 
  circle(sBallX, sBallY, SBSize);
  fill(100,100,100);
  circle(bBallX, bBallY, BBSize);
  bBallY = bBallY + bSpeedY; // This is to make the small ball and the big ball move 
  sBallY = sSpeedX + sBallY;
  sBallX = sSpeedY + sBallX;
  Collision();
  Bounce();
}
// Bounce function is interaction on the edge of the screen
void Bounce()
{
  if (bBallY> height*0.9) // If the big ball is in the bottom, it goes up
  {
    bSpeedY = -1;
  }
  if (bBallY < height*0.1) // If the big ball is in the top, it goes down
  {
    bSpeedY = +1;
  }
  if (sBallY > height*0.98 && sBallX > width*0.98) // If the small ball is on the bottom right, then it reverses
  {
    sSpeedY = -3;
    sSpeedX = -3;
  }
  if (sBallY < height*0.02 && sBallX < width*0.02) // If the small ball is on the top left, then it reverses
  {
    sSpeedY = +3;
    sSpeedX = +3;
  }
}
// Collision is if the interaction between the 2 objects
void Collision()
{
  // If they both collide from the top side, then the small ball will reverse its direction and change color
  if (dist(bBallX, bBallY,sBallX, sBallY) < SBSize/RADIUS+BBSize/RADIUS && dist(bBallX, bBallY,sBallX, sBallY) < height/2) {
    sSpeedX = -3;
    sSpeedY = -3;
    r = random(255);
    g = random(255);
    b = random(255);
  }
  // If they both collide from the bottom side, then the small ball will reverse its direction and change color
  if (dist(bBallX, bBallY,sBallX, sBallY) < SBSize/RADIUS+BBSize/RADIUS && sBallX > width/2 && sBallY > height/2) {
    sSpeedX = +3;
    sSpeedY = +3;
    r = random(255);
    g = random(255);
    b = random(255);
  }
}
