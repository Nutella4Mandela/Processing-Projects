// Nelson Villegas
// 10/26/2020
void setup() 
{
  // This makes the cursor disappear in the screen and replaces a white circle.
  size(600,600);
  strokeWeight(2);
}
void draw()
{
  background(0,0,100);

  eyes();
}
// When the mouse goes to the circle, it forms 2 eyes
// If the mouse goes out of the circle, it forms 2 lines.
void eyes()
{
  stroke(255);  
  if ((mouseX > 150) && (mouseX < 450) && 
      (mouseY > 150) && (mouseY < 450)) 
  {
    fill(255,0,0);
    circle(300,300,300);
  }
  else {
    fill(0,255,0);
    circle(300,300,300);
  }
  
}
