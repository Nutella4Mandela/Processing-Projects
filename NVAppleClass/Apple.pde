class Apple {
  float x;   
  float y;     
  
  float speed; 
  float speed2;
  float weight2;
  float weight;
  float gravity;
  float y2;
  
  Apple() {
    x = 100;
    y = 0;
    y2 = 0;
    speed = 0;
    weight = 6.2;
    gravity = 0.1;
    weight2 = 8.4;
    speed2 = 0;
  }
  void fall() {
    fill(255,0,0);
    stroke(0);
    circle(x,y,20);
    fill(255,255,0);
    translate(100,0);
    circle(x,y2,20);
    y = y + speed;
    y2 = y2 + speed2;
    speed = speed + gravity*weight;
    speed2 = speed2 + gravity*weight2;
    
    if (y > 380) {
    speed = 0;
  }
  if (y2 > 380) {
    speed2 = 0;
  }
}
}
