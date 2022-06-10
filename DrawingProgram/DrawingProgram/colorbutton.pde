//Global Variables
PImage randomImage;
String colourText = "Colour";
float colourButtonX, colourButtonY, colourButtonWidth, colourButtonHeight;
float redButtonX, redButtonY, redButtonWidth, redButtonHeight;
float orangeButtonX, orangeButtonY, orangeButtonWidth, orangeButtonHeight;
float yellowButtonX, yellowButtonY, yellowButtonWidth, yellowButtonHeight;
float greenButtonX, greenButtonY, greenButtonWidth, greenButtonHeight;
float blueButtonX, blueButtonY, blueButtonWidth, blueButtonHeight;
float purpleButtonX, purpleButtonY, purpleButtonWidth, purpleButtonHeight;
float pinkButtonX, pinkButtonY, pinkButtonWidth, pinkButtonHeight;
float brownButtonX, brownButtonY, brownButtonWidth, brownButtonHeight;
float blackButtonX, blackButtonY, blackButtonWidth, blackButtonHeight;
float greyButtonX, greyButtonY, greyButtonWidth, greyButtonHeight;
float whiteButtonX, whiteButtonY, whiteButtonWidth, whiteButtonHeight;
float randomButtonX, randomButtonY, randomButtonWidth, randomButtonHeight;
float resetColourButtonX, resetColourButtonY, resetColourButtonWidth, resetColourButtonHeight;
color red, orange, yellow, green, blue, purple, pink, brown, black, grey, white;
color sketchColour;
Boolean redButton = false, orangeButton = false, yellowButton = false, greenButton = false, blueButton = false, purpleButton = false, pinkButton = false, brownButton = false, blackButton = false, greyButton = false, whiteButton = false, randomButton = false, resetColourButton = false;
Boolean isRandomStroke = false;

void colourButtonSetup () {
  sketchColour = black;
} //End ColourButtonSetup

void colourButtonDraw() {
  strokeWeight(1);
  stroke(black);
  rect(colourButtonX, colourButtonY, colourButtonWidth, colourButtonHeight);
  colourButtonTextCode(colourText, 75, colourButtonX, colourButtonY, colourButtonWidth, colourButtonHeight);
  if ( redButton == true ) {
    fill(red);
    rect(redButtonX, redButtonY, redButtonWidth, redButtonHeight);
  } //End Button
  if ( orangeButton == true ) {
    fill(orange);
    rect(orangeButtonX, orangeButtonY, orangeButtonWidth, orangeButtonHeight);
  } //End Button
  if ( yellowButton == true ) {
    fill(yellow);
    rect(yellowButtonX, yellowButtonY, yellowButtonWidth, yellowButtonHeight);
  } //End Button
  if ( greenButton == true ) {
    fill(green);
    rect(greenButtonX, greenButtonY, greenButtonWidth, greenButtonHeight);
  } //End Button
  if ( blueButton == true ) {
    fill(blue);
    rect(blueButtonX, blueButtonY, blueButtonWidth, blueButtonHeight);
  } //End Button
  if ( purpleButton == true ) {
    fill(purple);
    rect(purpleButtonX, purpleButtonY, purpleButtonWidth, purpleButtonHeight);
  } //End Button
  if ( pinkButton == true ) {
    fill(pink);
    rect(pinkButtonX, pinkButtonY, pinkButtonWidth, pinkButtonHeight);
  } //End Button
  if ( brownButton == true ) {
    fill(brown);
    rect(brownButtonX, brownButtonY, brownButtonWidth, brownButtonHeight);
  } //End Button
  if ( blackButton == true ) {
    fill(black);
    rect(blackButtonX, blackButtonY, blackButtonWidth, blackButtonHeight);
  } //End Button
  if ( greyButton == true ) {
    fill(grey);
    rect(greyButtonX, greyButtonY, greyButtonWidth, greyButtonHeight);
  } //End Button
  if ( whiteButton == true ) {
    fill(white);
    rect(whiteButtonX, whiteButtonY, whiteButtonWidth, whiteButtonHeight);
  } //End Button
  if ( randomButton == true ) {
    rect(randomButtonX, randomButtonY, randomButtonWidth, randomButtonHeight);
    image(randomImage, randomButtonX, randomButtonY, randomButtonWidth, randomButtonHeight);
  } //End Button
  if ( isRandomStroke == true ) {
    sketchColour = color(random(225), random(225), random(225));
  }
  if ( resetColourButton == true ) {
    noStroke();
    fill(background);
    rect(resetColourButtonX, resetColourButtonY, resetColourButtonWidth, resetColourButtonHeight);
    fill(white);
    stroke(1);
  } //End Button
  stroke(sketchColour);
} //End ColourButtonDraw

void colourButtonMousePressed() {
  if ( mouseX > colourButtonX && mouseY > colourButtonY && mouseX < colourButtonX+colourButtonWidth && mouseY < colourButtonY+colourButtonHeight ) {
    if ( redButton == false && orangeButton == false && yellowButton == false && greenButton == false && blueButton == false && purpleButton == false && pinkButton == false && brownButton == false && blackButton == false && greyButton == false && whiteButton == false && randomButton == false ) {
      redButton = true;
      orangeButton = true;
      yellowButton = true;
      greenButton = true;
      blueButton = true;
      purpleButton = true;
      pinkButton = true;
      brownButton = true;
      blackButton = true;
      greyButton = true;
      whiteButton = true;
      randomButton = true;
      resetColourButton = false;
      } else {
        redButton = false;
        orangeButton = false;
        yellowButton = false;
        greenButton = false;
        blueButton = false;
        purpleButton = false;
        pinkButton = false;
        brownButton = false;
        blackButton = false;
        greyButton = false;
        whiteButton = false;
        randomButton = false;
        resetColourButton = true;
    }
  } //End Colour Button
} //End ColourButtonMousePressed

void redButtonMousePressed() {
  if ( redButton == true && mouseX > redButtonX && mouseY > redButtonY && mouseX < redButtonX+redButtonWidth && mouseY < redButtonY+redButtonHeight ) {
    sketchColour = red;
  } //End Red Button
} //End RedButtonMousePressed

void orangeButtonMousePressed() {
  if ( orangeButton == true && mouseX > orangeButtonX && mouseY > orangeButtonY && mouseX < orangeButtonX+orangeButtonWidth && mouseY < orangeButtonY+orangeButtonHeight ) {
    sketchColour = orange;
  } //End Orange Button
} //End OrangeButtonMousePressed

void yellowButtonMousePressed() {
  if ( yellowButton == true && mouseX > yellowButtonX && mouseY > yellowButtonY && mouseX < yellowButtonX+yellowButtonWidth && mouseY < yellowButtonY+yellowButtonHeight ) {
    sketchColour = yellow;
  } //End Yellow Button
} //End YellowButtonMousePressed

void greenButtonMousePressed() {
  if ( greenButton == true && mouseX > greenButtonX && mouseY > greenButtonY && mouseX < greenButtonX+greenButtonWidth && mouseY < greenButtonY+greenButtonHeight ) {
    sketchColour = green;
  } //End Green Button
} //End GreenButtonMousePressed

void blueButtonMousePressed() {
  if ( blueButton == true && mouseX > blueButtonX && mouseY > blueButtonY && mouseX < blueButtonX+blueButtonWidth && mouseY < blueButtonY+blueButtonHeight ) {
    sketchColour = blue;
  } //End Blue Button
} //End BlueButtonMousePressed

void purpleButtonMousePressed() {
  if ( purpleButton == true && mouseX > purpleButtonX && mouseY > purpleButtonY && mouseX < purpleButtonX+purpleButtonWidth && mouseY < purpleButtonY+purpleButtonHeight ) {
    sketchColour = purple;
  } //End Purple Button
} //End PurpleButtonMousePressed

void pinkButtonMousePressed() {
  if ( pinkButton == true && mouseX > pinkButtonX && mouseY > pinkButtonY && mouseX < pinkButtonX+pinkButtonWidth && mouseY < pinkButtonY+pinkButtonHeight ) {
    sketchColour = pink;
  } //End Pink Button
} //End PinkButtonMousePressed

void brownButtonMousePressed() {
  if ( brownButton == true && mouseX > brownButtonX && mouseY > brownButtonY && mouseX < brownButtonX+brownButtonWidth && mouseY < brownButtonY+brownButtonHeight ) {
    sketchColour = brown;
  } //End Brown Button
} //End BrownButtonMousePressed

void blackButtonMousePressed() {
  if ( blackButton == true && mouseX > blackButtonX && mouseY > blackButtonY && mouseX < blackButtonX+blackButtonWidth && mouseY < blackButtonY+blackButtonHeight ) {
    sketchColour = black;
  } //End Black Button
} //End BlackButtonMousePressed

void greyButtonMousePressed() {
  if ( greyButton == true && mouseX > greyButtonX && mouseY > greyButtonY && mouseX < greyButtonX+greyButtonWidth && mouseY < greyButtonY+greyButtonHeight ) {
    sketchColour = grey;
  } //End Grey Button
} //End GreyButtonMousePressed

void whiteButtonMousePressed() {
  if ( whiteButton == true && mouseX > whiteButtonX && mouseY > whiteButtonY && mouseX < whiteButtonX+whiteButtonWidth && mouseY < whiteButtonY+whiteButtonHeight ) {
    sketchColour = white;
  } //End White Button
} //End WhiteButtonMousePressed

void randomButtonMousePressed() {
  if ( randomButton == true && mouseX > randomButtonX && mouseY > randomButtonY && mouseX < randomButtonX+randomButtonWidth && mouseY < randomButtonY+randomButtonHeight ) {
    sketchColour = color(random(255), random(255), random(255));
  } //End Random Button
} //End RandomButtonMousePressed
