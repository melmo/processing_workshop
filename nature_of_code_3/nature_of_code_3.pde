/*
 Processing creates some default variables.
 These include width, height (size of the sketch).
 Also mousePressed records if the mouse button is down
 mouseX and mouseY store the current mouse position on the sketch
 
*/

void setup() {
  size(600,400);
  background(255);
}

void draw() {
  fill(255,127); // white with half transparency, try changing the second value
  rect(0,0,width,height); // the whole drawing suface
  
  if (mousePressed) {
    noStroke();
    fill(255,255,0);
    ellipse(mouseX, mouseY, 10, 10);
  } else {
    noStroke();
    fill(0,255,0);
    ellipse(mouseX, mouseY, 10, 10);
  }
}