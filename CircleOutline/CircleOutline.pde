void setup() 
{
  // This makes the cursor disappear in the screen and replaces a white circle.
  size(600,600);
  strokeWeight(2);
  noCursor();
}
void draw()
{
  background(0,0,100);
  noFill();
  stroke(255);
  circle(width/2,height/2,width/2.5);

  eyes();
}
// When the mouse goes to the circle, it forms 2 eyes
// If the mouse goes out of the circle, it forms 2 lines.
void eyes()
{
  stroke(255);  
  if (dist(mouseX, mouseY,width/2,height/2) < width/5) 
  {
    noStroke();
    fill(255,255,0);
    ellipse(mouseX, mouseY, 30, 30);
  }
  else {
    noStroke();
    fill(255,0,0);
    ellipse(mouseX, mouseY, 30, 30);
  }
  
}
