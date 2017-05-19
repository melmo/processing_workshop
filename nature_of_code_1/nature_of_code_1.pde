/*

There are two important parts of a Processing sketch.

*/

/*

First is the setup() function. It runs only once.

*/

void setup() {
 // Set the size of your Processing sketch
 size(600,400);
}

/*

Second is the draw() function.
It runs repeatedly until you close the sketch.
Usually the draw() function runs 25 times per second.

*/

void draw() {
 background(255); // set the background colour to white
 fill(255,0,255); // set the fill colour to purple (RGB)
 stroke(255,255,0); // set the stroke colour to yellow
 strokeWeight(3); // set the stroke width to 3 pixels
 rect(20,40,20,20); //draw a rectangle with the top left corner at x = 20, y = 40 and a height and width of 20

 // What happens when you try with ellipse() or line()?
 // What about text()?
 // What about different colours?
}