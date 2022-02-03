float w;
void setup()
{
  size(200,200);
  w = 250;
}
void draw() 
{
  noStroke();
  while(w > 0)
  {
    fill(250 - w, 250 - w, 250 - w);
    ellipse(width/2,height/2,w, w);
    w -= 20;
  }
}
