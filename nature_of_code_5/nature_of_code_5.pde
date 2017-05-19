/*

Particles and Vectors
https://processing.org/examples/simpleparticlesystem.html

*/

Particle p;


void setup() {
  size(600,400);
  p = new Particle(new PVector(width/2,50)); // a new particle start with a location (x,y)
  
}

void draw() {
  background(0);
  p.update(); // update the position of the particle
  p.display(); // draw the particle
}

void mousePressed() { // when the mouse is pressed
 p = new Particle(new PVector(width/2,50));  // reset the particle position
}



// A simple Particle class

class Particle {
  PVector location;
  PVector velocity; // current speed and direction
  PVector acceleration; // how much the velocity should change each frame
  float lifespan; // lifetime of the particle

  Particle(PVector l) { // create a new particle
    acceleration = new PVector(0,0.05); // set the effect of gravity
    velocity = new PVector(random(-1,1),random(-2,0)); // set a random starting velocity
    location = l.copy();
    lifespan = 255;
  }


  // Method to update location
  void update() {
    velocity.add(acceleration); // update the velocity
    location.add(velocity); // update the location
    lifespan -= 1.0; // get one step closer to death
  }

  // Method to display
  void display() {
    stroke(255,lifespan); // the older the particle, the more transparent
    fill(255,lifespan);
    ellipse(location.x,location.y,8,8); // draw the particle
  }

}