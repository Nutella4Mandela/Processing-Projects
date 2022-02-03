JitterBug bug; // Declare object
JitterBug bug2;

void setup() {
  size(480, 120);
  // Create object and pass in parameters
  bug = new JitterBug(width/2, height/2, 20);
  bug2 = new JitterBug(width/3, height/2, 40);
}

void draw() {
  bug.move();
  bug.display();
  bug2.move();
  bug2.display();
}
