void setup() {
   size(600, 600);
}

void draw() {
   background(200);
   fill(47, 64, 84);
   rect(25, 25, 550, 550);
   
   for (int eCount = 0; eCount<11; eCount++) {
      int xValue = 60 + (eCount * 48);
      float myAlpha = map(eCount, 0, 9, 0, 255);
      fill(249, 246, 155, myAlpha);
      ellipse(xValue, height/1.1, 40, 40);
   }
}
