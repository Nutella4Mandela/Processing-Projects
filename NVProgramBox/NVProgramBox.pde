int speedx = -1;
int speedy = 0;
float Y = height/30;
float X = width*4;

int speedX = 1;
int speedY = 0;
float y = height/30;
float x = width/30;

void setup()
{
  size(500,500);
}

void draw() 
{
  background(126);
  stroke(0);
  fill(255,0,0);
  rect(x,y,50,50);
  x = x + speedX;
  y = y + speedY;
  if (x > width/1.12)
  {
    speedX = 0;
    speedY = +1;
  }
  if (y > height/1.12)
    {
      speedX = -1;
      speedY = 0;
    }
  if (x < width/130)
    {
      speedX = 0;
      speedY = -1;
    }
  if (y < height/130)
    {
      speedX = +1;
      speedY = 0;
    }
   if (x > width/1.12 && y < height/130)
   {
     speedX = 0;
     speedY = +1;
   }
   
  fill(0,0,255);
  rect(X,Y,50,50);
  X = X + speedx;
  Y = Y + speedy;
  if (X < width/130)
  {
    speedx = 0;
    speedy = +1;
  }
  if (Y > height/1.12)
  {
    speedx = +1;
    speedy = 0;
  }
  if (X > width/1.12)
  {
    speedx = 0;
    speedy = -1;
  }
  if (Y < height/130)
  {
    speedx = -1;
    speedy = 0;
  }
  if (Y < height/1.12 && X < width/130)
  {
    speedx = 0;
    speedy = +1;
  }
}
