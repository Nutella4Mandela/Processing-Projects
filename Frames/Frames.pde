int numFrames = 23;  // The number of animation frames
int frame = 0;  // The frame to display
PImage[] images = new PImage[numFrames];  // Image array

void setup() {
  size(400, 400);
  frameRate(30);  // Maximum 30 frames per second
  images[0]  = loadImage("1st.tif");
  images[1]  = loadImage("2nd.tif"); 
  images[2]  = loadImage("3rd.tif");
  images[3]  = loadImage("4th.tif"); 
  images[4]  = loadImage("5th.tif");
  images[5]  = loadImage("6th.tif"); 
  images[6]  = loadImage("7th.tif");
  images[7]  = loadImage("8th.tif"); 
  images[8]  = loadImage("9th.tif");
  images[9]  = loadImage("10th.tif"); 
  images[10] = loadImage("11th.tif");
  images[11] = loadImage("12th.tif"); 
  images[12]  = loadImage("13th.tif");
  images[13]  = loadImage("14th.tif"); 
  images[14]  = loadImage("15th.tif");
  images[15]  = loadImage("16th.tif"); 
  images[16]  = loadImage("17th.tif");
  images[17]  = loadImage("18th.tif"); 
  images[18]  = loadImage("19th.tif");
  images[19]  = loadImage("20th.tif"); 
  images[20]  = loadImage("21st.tif");
  images[21]  = loadImage("22nd.tif"); 
  images[22] = loadImage("23rd.tif");
} 
 
void draw() { 
  image(images[frame], 0, 0);
  frame++;
  if (frame == numFrames) {
    frame = 0;
  }
}
