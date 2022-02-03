// Nelson Villegas
// 11/9/2020
void setup() {
  size(400,400);
}
void draw() {
  
noFill();
translate(10,10);
for (int size = 0; size < 12; size ++) {
  scale(1.2);
  rect(0,0,50,50);
}
}
