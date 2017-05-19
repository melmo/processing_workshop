float radius;

void setup() {
  size(600,400);  
}

void draw() {
  background(255);
  translate(width/2,height/2); // move the coordinates to the center
  // 200.0 = number of frames for a full cycle
  // 30.0 = amount the radius should change (between 0 and 30)
  radius = sin((frameCount / 200.0) * 2 * PI) * 30.0 + 30.0;
  ellipse(0,0,radius,radius);
}