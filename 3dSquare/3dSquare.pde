// Nelson Villegas
// 11/12/2020
float okman = 0;

void setup() {
  size(400,400, P3D);
}

void draw() {
  background(100);
  translate(width/2, height/2);
  rotateY(okman);
  rotateX(okman);
  rotateZ(okman);
  rectMode(CENTER);
  square(0,0,100);
  okman += 0.02;
}
