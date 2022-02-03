class Gravity {
  float x;   // x location of square
  float y;     // y location of square
  
  float speed;   // speed of square
  float gravity;
  
  Gravity() {
    x = 100;
    y = 0;
    speed = 0;
    gravity = 0.1;
  }
  void show() {
    fill(175);
    stroke(0);
    rectMode(CENTER);
    rect(x,y,10,10);
    // Add speed to location.
    y = y + speed;
  
  // Add gravity to speed.
  speed = speed + gravity;
  
  // If square reaches the bottom
  // Reverse speed
  if (y > height) {
    // This is known as a "dampening" effect.
    speed = speed * -0.95;  
  }
}
}
