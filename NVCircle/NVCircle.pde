float circleX = (width/0.5-60);
float circleY = (height/0.5-60);
float circleOY = (height/0.5+30);
float circleUY = (height/0.5-150);
float circleLX = (width/0.5-150);
float circleDY = (height*0.5+300);
float circleRX = (width*0.5+300);
float circleR = (width/0.5+70);
void setup() {
  size(400,400);
  smooth();
}
  void draw() {
  background(150);
  stroke(0);
  fill(175,0,0);
  ellipse(width*0.5,circleY,50,50);
  circleY = circleY+2;
  if(circleY>height*0.5+30){
    circleY = height*0.5+30;
  }
  fill(0,167,0);
  ellipse(circleX,height*0.5-15,50,50);
  circleX = circleX+2;
  if(circleX>width*0.5+60) {
    circleX = width*0.5+60;
  }
  fill(0,0,175);
  ellipse(width*0.5,circleOY,50,50);
  circleOY = circleOY-2;
  if(circleOY<height*0.5-60) {
    circleOY = height*0.5-60;
  }
  fill(200,178,60);
  ellipse(circleRX,circleDY,50,50);
  circleDY= circleDY-2;
  circleRX= circleRX-2;
  if(circleDY<height*0.5-150) {
    circleDY = height*0.5-150;
  }
  if(circleRX<width*0.5-150) {
    circleRX = width*0.5-150;
  }
  fill(60,178,200);
  ellipse(circleLX,circleUY,50,50);
  circleUY= circleUY+2;
  circleLX= circleLX+2;
  if(circleUY>height*0.5+150) {
    circleUY = height*0.5+150;
  }
  if(circleLX>width*0.5+150) {
    circleLX = width*0.5+150;
  }
  fill(150,0,150);
  ellipse(circleLX,circleDY,50,50);
  fill(255,150,0);
  ellipse(circleRX,circleUY,50,50);
  fill(255,255,0);
  ellipse(circleR,height*0.5-15,50,50);
  circleR = circleR-2;
  if(circleR<width*0.5-60) {
    circleR = width*0.5-60;
  }
  
}
