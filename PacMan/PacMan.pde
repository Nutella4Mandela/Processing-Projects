void setup() {
  size(200,200);
  background(0,0,0);
  noLoop();
}
void draw() {
  fill(255,255,0);
  arc(100,90,75,75, radians(40), radians(320));
  fill(255,255,155);
  ellipse(130,90,20,20);
  ellipse(160,90,20,20);
  ellipse(160,50,20,20);
  ellipse(160,15,20,20);
  ellipse(40,15,20,20);
  ellipse(190,90,20,20);
  stroke(0,0,255);
  strokeWeight(5);
  line(0,140,255,140);
  line(0,160,255,160);
  stroke(0,0,255);
  strokeWeight(5);
  noFill();
  ellipse(100,-10,54,110);
  ellipse(-30,10,100,54);
  ellipse(230,10,100,54);
}
