//Global Variables
String menuText = "Menu", resetText = "Reset", saveText = "Save", exitText = "Exit";
float menuButtonX, menuButtonY, menuButtonWidth, menuButtonHeight;
float resetButtonX, resetButtonY, resetButtonWidth, resetButtonHeight;
float saveButtonX, saveButtonY, saveButtonWidth, saveButtonHeight;
float exitButtonX, exitButtonY, exitButtonWidth, exitButtonHeight;
float resetMenuButtonX, resetMenuButtonY, resetMenuButtonWidth, resetMenuButtonHeight;
color exitButtonColour;
Boolean resetButton = false, saveButton = false, exitButton = false, resetMenuButton = false;

void menuButtonDraw() {
  stroke(black);
  strokeWeight(1);
  rect(menuButtonX, menuButtonY, menuButtonWidth, menuButtonHeight);
  menuButtonTextCode(menuText, 75, menuButtonX, menuButtonY, menuButtonWidth, menuButtonHeight);
  if ( resetButton == true ) {
    rect(resetButtonX, resetButtonY, resetButtonWidth, resetButtonHeight);
    resetButtonTextCode(resetText, 30, resetButtonX, resetButtonY, resetButtonWidth, resetButtonHeight);
  } //End ResetButton
  if ( saveButton == true ) {
    rect(saveButtonX, saveButtonY, saveButtonWidth, saveButtonHeight);
    saveButtonTextCode(saveText, 30, saveButtonX, saveButtonY, saveButtonWidth, saveButtonHeight);
  } //End SaveButton
  //
  if ( exitButton == true && mouseX > exitButtonX && mouseY > exitButtonY && mouseX < exitButtonX+exitButtonWidth && mouseY < exitButtonY+exitButtonHeight ) {
    exitButtonColour = red;
  } else {
    exitButtonColour = white;
  }
  //
  if ( exitButton == true ) {
    fill(exitButtonColour);
    rect(exitButtonX, exitButtonY, exitButtonWidth, exitButtonHeight);
    exitButtonTextCode(exitText, 30, exitButtonX, exitButtonY, exitButtonWidth, exitButtonHeight);
  } //End ExitButton
  if ( resetMenuButton == true ) {
    noStroke();
    fill(background);
    rect(resetMenuButtonX, resetMenuButtonY, resetMenuButtonWidth, resetMenuButtonHeight);
    fill(white);
    stroke(1);
  } //End ResetMenuButton
  strokeWeight(strokeSize);
  stroke(sketchColour);
} // End MenuButton()

void menuButtonMousePressed() {
  if ( mouseX > menuButtonX && mouseY > menuButtonY && mouseX < menuButtonX+menuButtonWidth && mouseY < menuButtonY+menuButtonHeight ) {
    if (resetButton == false && saveButton == false && exitButton == false) {
      resetButton = true;
      saveButton = true;
      exitButton = true;
      resetMenuButton = false;
      } else {
      resetButton = false;
      saveButton = false;
      exitButton = false;
      resetMenuButton = true;
    }
  } //End Menu Button
} //End MenuButtonMousePressed()

void resetButtonMousePressed () {
  if ( resetButton == true && mouseX > resetButtonX && mouseY > resetButtonY && mouseX < resetButtonX+resetButtonWidth && mouseY < resetButtonY+resetButtonHeight ) {
    backgroundColour = white;
    fill(backgroundColour);
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  }
} //End ResetButtonMousePressed()

void saveButtonMousePressed () {
  if ( saveButton == true && mouseX > saveButtonX && mouseY > saveButtonY && mouseX < saveButtonX+saveButtonWidth && mouseY < saveButtonY+saveButtonHeight ) {
    saveFrame("sketch.png");
  }
} //End SaveButtonMousePressed

void exitButtonMousePressed () {
  if ( exitButton == true && mouseX > exitButtonX && mouseY > exitButtonY && mouseX < exitButtonX+exitButtonWidth && mouseY < exitButtonY+exitButtonHeight ) {
    exit();
  }//End Exit Button
} //End ExitButtonMousePressed()
