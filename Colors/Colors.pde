// Colors are 0 by default.
float r = 0;
float g = 0;
float b = 0;
void setup() 
{
  size(640,400);
}
void draw() 
{
  // r  is Red, g is Green, b is Blue
  background(r,g,b);
  stroke(255);
  // I added perpendicular white lines no matter what height or width it might be.
  line(width/2,0,width/2,height);
  line(0,height/2,width,height/2);
  // If mouse is pointed on the top-right side, the screen turns red. I made sure to make the blue fade.
  if(mouseX > width/2 && mouseY < height/2) 
  {
    r = r + 1;
    b = b - 1;
  }
  // If mouse is pointed on the bottom-left side, the screen turns blue. I made sure to make the red fade  
  else if(mouseX < width/2 && mouseY > height/2) 
  {
    b = b + 1;
    r = r - 1;
  }
  // If mouse is pointed on the bottom-right side, the screen turns red and blue at the same time.
  else if(mouseX > width/2 && mouseY > height/2) {
    r = r + 1;
    b = b + 1;
    }
  // Any place besides the ones I mentioned will turn the screen black.
  else 
  {
    r = r - 1;
    b = b - 1;
  }
  // If the left mouse button is being held, the screen turns green. With this, pointing at the specified spots will combine the colors.
  if (mousePressed == true) 
  {
    g = g + 1; 
  }
  // If the left mouse is not being held, the green screen would fade.
  else if (mousePressed == false) {
    g = g - 1;
  }
  // Not sure why this works, but it works. I'm guessing it's to make sure that it will work, but I don't know.
  if (r > 255) {r = 255;} 
  else if (r < 0) {r = 0;}
  if (b > 255) {b = 255;} 
  else if (b < 0) {b = 0;}
  if (g > 255) {g = 255;}
  else if (g < 0) {g = 0;}
}
