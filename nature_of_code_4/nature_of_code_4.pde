float[] blobs = new float[10];

void setup() {
  size(600,400);
  for (int i = 0; i < blobs.length; i++) {
    blobs[i] = i * 20;
  }
}

void draw() {
  background(255);
  fill(255,0,0);
  noStroke();
  for (int i = 0; i < blobs.length; i++) {
    ellipse(blobs[i],i * 30, 10, 10);
  }
}

void keyPressed() {
  for (int i = 0; i < blobs.length; i++) {
    blobs[i] = blobs[i] + random(-10,10);
  }
}
