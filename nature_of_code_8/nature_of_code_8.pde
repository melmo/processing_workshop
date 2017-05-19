float radius;
PImage petal;
float theta;

void setup() {
  petal = loadImage("petal.png");
  size(600,400);  
}

void draw() {
  background(255);
  translate(width/2 ,height/2); // move the coordinates to the center, less half the size of the image
  // 200.0 = number of frames for a full cycle
  theta = sin((frameCount / 400.0) * 2 * PI);
  strokeWeight(3);
  image(petal, -35/2,-99);
  for (int i = 0; i < 3; i++) {
    pushMatrix(); // save the current coordinate system
    rotate(theta * i * 0.2);
    image(petal, -35/2,-99);
    popMatrix(); // restore the coordinate system
    
    // draw the other side
    pushMatrix(); // save the current coordinate system
    rotate(theta * i * -0.2);
    image(petal, -35/2,-99);
    popMatrix(); // restore the coordinate system
   
  }
}