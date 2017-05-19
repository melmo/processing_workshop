/*

Processing stores information in variables.

*/

/*

Variables can be numbers.

*/

int wholeNumber = 3;
float decimalNumber = 5.7;

/*

Variables can be true or false.

*/

boolean toggle = true;

/*

Variables can be text.

*/

char oneLetter = 'a';
String someWords = "A long text";

void setup() {
  size(600,400);
}

void draw() {
  background(255);
  fill(0);
  text(someWords,wholeNumber,27);
}