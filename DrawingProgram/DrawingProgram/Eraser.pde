//Global Variables
String eraserText = "Eraser", largeText = "Thick", medText = "Medium", smallText = "Thin";
float eraserButtonX, eraserButtonY, eraserButtonWidth, eraserButtonHeight;
float largeButtonX, largeButtonY, largeButtonWidth, largeButtonHeight;
float medButtonX, medButtonY, medButtonWidth, medButtonHeight;
float smallButtonX, smallButtonY, smallButtonWidth, smallButtonHeight;
float resetEraserButtonX, resetEraserButtonY, resetEraserButtonWidth, resetEraserButtonHeight;
Boolean isLargeButton = false, isMedButton = false, isSmallButton = false, isResetEraserButton = false;

void eraserButtonDraw () {
  stroke(black);
  strokeWeight(1);
  rect(eraserButtonX, eraserButtonY, eraserButtonWidth, eraserButtonHeight);
  eraserButtonTextCode(eraserText, 75, eraserButtonX, eraserButtonY, eraserButtonWidth, eraserButtonHeight);
  //
  if ( isLargeButton == true ) {
    rect(largeButtonX, largeButtonY, largeButtonWidth, largeButtonHeight);
    largeButtonTextCode(largeText, 30, largeButtonX, largeButtonY, largeButtonWidth, largeButtonHeight);
  } //End Button
  if ( isMedButton == true ) {
    rect(medButtonX, medButtonY, medButtonWidth, medButtonHeight);
    medButtonTextCode(medText, 30, medButtonX, medButtonY, medButtonWidth, medButtonHeight);
  } //End Button
  if ( isSmallButton == true ) {
    rect(smallButtonX, smallButtonY, smallButtonWidth, smallButtonHeight);
    smallButtonTextCode(smallText, 30, smallButtonX, smallButtonY, smallButtonWidth, smallButtonHeight);
  } //End Button
  if ( isResetEraserButton == true ) {
    noStroke();
    fill(background);
    rect(resetEraserButtonX, resetEraserButtonY, resetEraserButtonWidth, resetEraserButtonHeight);
    fill(white);
    stroke(1);
  } //End Button
  //
  stroke(sketchColour);
  strokeWeight(strokeSize);
} //End EraserButtonDraw

void eraserButtonMousePressed () {
  if ( mouseX > eraserButtonX && mouseY > eraserButtonY && mouseX < eraserButtonX+eraserButtonWidth && mouseY < eraserButtonY+eraserButtonHeight ) {
    if (isLargeButton == false && isMedButton == false && isMedButton == false) {
      isLargeButton = true;
      isMedButton = true;
      isSmallButton = true;
      isResetEraserButton = false;
      } else {
      isLargeButton = false;
      isMedButton = false;
      isSmallButton = false;
      isResetEraserButton = true;
    }
  } //End Eraser Button
} //End EraserButtonMousePressed

void largeButtonMousePressed () {
  if ( isLargeButton == true && mouseX > largeButtonX && mouseY > largeButtonY && mouseX < largeButtonX+largeButtonWidth && mouseY < largeButtonY+largeButtonHeight ) {
    strokeSize = 20;
    sketchColour = backgroundColour;
  } //End Large Button
} //End LargeButtonMousePressed

void medButtonMousePressed () {
  if ( isMedButton == true && mouseX > medButtonX && mouseY > medButtonY && mouseX < medButtonX+medButtonWidth && mouseY < medButtonY+medButtonHeight ) {
    strokeSize = 10;
    sketchColour = backgroundColour;
  } //End Med Button
} //End MedButtonMousePressed

void smallButtonMousePressed () {
  if ( isSmallButton == true && mouseX > smallButtonX && mouseY > smallButtonY && mouseX < smallButtonX+smallButtonWidth && mouseY < smallButtonY+smallButtonHeight ) {
    strokeSize = 3;
    sketchColour = backgroundColour;
  } //End Small Button
} //End SmallButtonMousePressed
