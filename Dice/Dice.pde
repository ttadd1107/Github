//Dice by Taylor Taddei
// refrence https://processing.org/tutorials/text/ 
// the part about Text Align

import java.util.Random;               //imports random number generator
PImage bg;                             // imports image
PFont f;                               // imports font
int[] dicearray;                       // array for dice numbers
void setup() {                         // setup of world
  bg = loadImage("sixdie.png");        // attaches bg to an image
  size(1350, 225);                     // world size
  background(bg);                      // sets back ground to image
  // background(0,0,0);                // prior to file image
  f = createFont("dice", 100, true);   // make a font refrenced
  fill(0, 0, 0);                       // sets text to black
  textFont(f);                         // sets font to f  refrenced
  textAlign(CENTER);                   // centers text refrenced
  Rando();                             // random number generator starts 
}
void draw() {                          // used to constatly ask to see if mosue pressed
  
  if (mousePressed) {                  // checks to see if mosue pressed
    delay(200);                        // delays mouse pressed by 2/5 of a second
    setup();                           // calls setup
    // Rando();                          
  } 
}

public void Rando() {                  // random number gen method

  Random rand = new Random();          // random num gen
  int[] dicearray  = new int[6];       // sets size of array
  int dice;                            
  int i;

  for ( i = 0; i<6; i++) {             // loop to get 6 random numbers

    dice = rand.nextInt(6);            // get number between 0 and 5
    dice = dice + 1;                   // adds 1 so their is no 0 and ther eis a 6
    dicearray[i] = dice;               // sets number to postition of i in array
    System.out.println(dicearray[i]);  // prints numbers in console
  }
  for (int k = 0; k<6; k++) {          // loop prints numbers into world
    text(dicearray[k], 100+ 225*k, 150);
  }
}
