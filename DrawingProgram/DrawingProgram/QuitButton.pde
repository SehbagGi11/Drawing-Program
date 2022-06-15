//Global Variables
String quit= "X";

void quitButton() {
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
    stroke (darkBlue);
    fill (darkBlue);
    rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
    reset();
    //Text
    quitButtonText();
  } else {
    border();
    fill (salmon);
    rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
    reset();
    //Text
    fill(darkBlue);
    quitButtonText();
    reset();
  }
}
