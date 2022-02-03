// I assigned speedX to move left or right respectively.
// I assigned speedY to move up and down respectively.
int speedX = 1;
int speedY = 0;
// I made it so that the object must be at the middle no matter what size.
float y = height*2;
float x = width*2;
void setup()
{
  size(500,500);
}

void draw() 
{
  background(255);
  stroke(0);
  fill(175);
  rect(x,y,50,50);
  // If x is added to speedX, which is 1 right now, then it must move. The same goes for y if I want to move it.
  x = x + speedX;
  y = y + speedY;
  // If x is greater than the right side, meaning that if the object is at the right side, it must move down, 
  // which will make speedY +1 and speedX 0
  if (x > width/1.12)
  {
    speedX = 0;
    speedY = +1;
  }
  // If y is greater than the lower side, meaning that if the object is at the lower side, it must move left, 
  // which will make speedY 0 and speedX -1
  if (y > height/1.12)
    {
      speedX = -1;
      speedY = 0;
    }
  // If x is less than the left side, meaning that if the object is at the left side, it must move up, 
  // which will make speedY -1 and speedX 0
  if (x < width/130)
    {
      speedX = 0;
      speedY = -1;
    }
  // If y is less than the higher side, meaning that if the object is at the lower side, it must move left, 
  // which will make speedY 0 and speedX +1
  if (y < height/130)
    {
      speedX = +1;
      speedY = 0;
    }
   // I had to go with this because the first if statement didn't work for me for some reason
   // so I went and redid it, but if the object is specifically at the corner, it must move down.
   if (x > width/1.12 && y < height/130)
   {
     speedX = 0;
     speedY = +1;
   }
}
