int x1 = 100;
int y1 = 100;
int w = 50;
int h = 75;

void setup()
{
  size(200,200);
}
void draw()
{
  noCursor();
  background(255);
  line(width/2,0,width/2,height);
  line(0,height/2,width,height/2);
  noStroke();
  fill(0);
  if(mouseX < width/2 && mouseY < height/2) 
  {
    fill(0);
    rect(0,0,100,100);
  }
  else if(mouseX > width/2 && mouseY < height/2)
  {
    fill(0);
    rect(100,0,100,100);
  }
  else if(mouseX < width/2 && mouseY > height/2)
  {
    fill(0);
    rect(0,100,100,100);
  }
  else if(mouseX > width/2 && mouseY > height/2)
  {
    fill(0);
    rect(100,100,100,100);
  }
}
