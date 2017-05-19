String sentence = "F";
float len = 100;
float baseTheta = 2 * PI / 16.0;
float theta;
int gen = 0;

void setup() {
 size(600,400); 
}

void draw() {
  translate(width/2,height-30);
  rotate(-.25 * 2 * PI);
  background(255);
  if (frameCount % 50 == 0 && gen < 4) {
    newGeneration();
    gen++;
  }
  theta = baseTheta + (sin(frameCount/ 100.0 * 2.0 * PI) * .5 + .5) * .15  ;
  drawTree();
}


void drawTree() {
  
  for (int i = 0; i < sentence.length(); i++) {

  // Looking at each character one at a time
  char c = sentence.charAt(i);

    //[full] Performing the correct task for each character.
    // This could also be written with a “case” statement,
    // which might be nicer to look at, but leaving it as an
    // if/else if structure helps readers not familiar with case statements.
    if (c == 'F') {
      line(0,0,len,0);
      translate(len,0);
    } else if (c == 'G') {
     translate(len,0);
    } else if (c == '+') {
      rotate(theta);
    } else if (c == '-') {
      rotate(-theta);
    } else if (c == '[') {
      pushMatrix();
    } else if (c == ']') {
      popMatrix();
    }
    //[end]
  }
  
}

void newGeneration() {
   // A StringBuffer for the “next” sentence
  StringBuffer next = new StringBuffer();
  for (int i = 0; i < sentence.length(); i++) {
    char c = sentence.charAt(i);
    if (c == 'F') {
      // append() instead of +=
      next.append("FF+[+F-F-F]-[-F+F+F]");
    } else {
     next.append(c);
    }
  }
  // StringBuffer can easily be converted
  // back to a String.
 
  sentence = next.toString(); 
  len = len * .5;
}