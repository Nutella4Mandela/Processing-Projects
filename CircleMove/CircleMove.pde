int r = 0;
int g = 0;
int b = 0;
void setup() 
{
  size(600,600);
}
void draw() 
{
  background(100,100,100);
  stroke(255);
  line(width/2,0,width/2,height);
  move();
}
void move() 
{
  noStroke(); 
  fill(r,g,b,200);
  int d = mouseY/2+10; //diameter
  int Y = height-mouseY;  // Inverse Y
  int iD = (Y/2)+10; // Inverted diameter
  ellipse(width/4, mouseY, d,iD);
  fill(b,g,r,204);  
  ellipse(width/1.3, Y, iD,d);
  if(mouseY < height/2) 
  {
    r = r + 10;
    b = b - 10;
  }
  // If mouse is pointed on the bottom-left side, the screen turns blue. I made sure to make the red fade  
  else if(mouseY > height/2) 
  {
    b = b + 10;
    r = r - 10;
  }
  // Any place besides the ones I mentioned will turn the screen black.
  else 
  {
    r = r - 10;
    b = b - 10;
  }
  // If the left mouse button is being held, the screen turns green. With this, pointing at the specified spots will combine the colors.
  if (mousePressed == true) 
  {
    g = g + 10; 
  }
  // If the left mouse is not being held, the green screen would fade.
  else if (mousePressed == false) {
    g = g - 10;
  }
  // Not sure why this works, but it works. I'm guessing it's to make sure that it will work, but I don't know.
  if (r > 255) {r = 255;} 
  else if (r < 0) {r = 0;}
  if (b > 255) {b = 255;} 
  else if (b < 0) {b = 0;}
  if (g > 255) {g = 255;}
  else if (g < 0) {g = 0;}
}
