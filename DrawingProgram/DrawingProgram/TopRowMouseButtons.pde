//Top Row Buttons
void topRowMousePressed() {
  if (mouseX>lineArtX && mouseX<lineArtX+topRowWidth && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    click.play();
    click.rewind();
    lineArt1 = true;
    lineArt2 = false;
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
  }
  if (mouseX>lineArt2X && mouseX<lineArt2X+topRowWidth && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    click.play();
    click.rewind();
    lineArt1 = false;
    lineArt2 = true;
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
  }
  if (mouseX>eraserButtonX && mouseX<eraserButtonX+topRowWidth && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    click.play();
    click.rewind();
    eraserOn = true;
    drawOn = false;
    draw = false;
    sprayPaint = false;
    sprayPaintOn = false;
    circleOn = false;
    circle = false;
    squareOn = false;
    square = false;
    triangleOn = false;
    triangle = false;
  }
  if (mouseX>drawingToolsX && mouseX<drawingToolsX+topRowWidth && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    click.play();
    click.rewind();
    dropdown2 = true;
  } else if (dropdown2 == true && mouseX>drawingToolsX && mouseX<drawingToolsX+topRowWidth && mouseY>topRowY+topRowHeight && mouseY<topRowY+topRowHeight+topRowHeight) {
    click.play();
    click.rewind();
    drawOn = true;
    sprayPaint = false;
    sprayPaintOn = false;
    eraserOn = false;
    eraser = false;
    circleOn = false;
    circle = false;
    squareOn = false;
    square = false;
    triangleOn = false;
    triangle = false;
  } else if (dropdown2 == true && mouseX>drawingToolsX && mouseX<drawingToolsX+topRowWidth && mouseY>topRowY+topRowHeight*2 && mouseY<(topRowY+topRowHeight*2)+topRowHeight) {
    click.play();
    click.rewind();
    draw = false;
    drawOn = false;
    sprayPaintOn = true;
    eraserOn = false;
    eraser = false;
    circleOn = false;
    circle = false;
    squareOn = false;
    square = false;
    triangleOn = false;
    triangle = false;
  } else {
    dropdown2 = false;
  }
}
//Canvas Colour Selection
void canvasColourPressed() {
  if (mouseX<backgroundColourX+topRowWidth  && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    click.play();
    click.rewind();
    dropdown1 = true;
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX && mouseX<canvasColourDropdownX+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY && mouseY<canvasColourDropdownY+canvasColourDropdownHeight/3) {
    click.play();
    click.rewind();
    canvasWhite = true;
    if (ink == white) ink=black;
    println("Canvas is now white");
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX2 && mouseX<canvasColourDropdownX2+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY && mouseY<canvasColourDropdownY+canvasColourDropdownHeight/3) {
    click.play();
    click.rewind();
    canvasBlack = true;
    if (ink == black) ink=white;
    println("Canvas is now black"); //this was used for troubleshooting
  } else if (dropdown1 == true && mouseX<canvasColourDropdownX3+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY && mouseY<canvasColourDropdownY+canvasColourDropdownHeight/3) {
    click.play();
    click.rewind();
    canvasGray = true;
    if (ink == gray) ink=black;
    println("Canvas is now gray");
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX4 && mouseX<canvasColourDropdownX4+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY && mouseY<canvasColourDropdownY+canvasColourDropdownHeight/3) {
    click.play();
    click.rewind();
    canvasRed = true;
    if (ink == red) ink=black;
    println("Canvas is now red");
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX && mouseX<canvasColourDropdownX+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY2 && mouseY<canvasColourDropdownY2+canvasColourDropdownHeight/3) {
    click.play();
    click.rewind();
    canvasBlue = true;
    if (ink == blue2) ink=black;
    println("Canvas is now blue");
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX2 && mouseX<canvasColourDropdownX2+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY2 && mouseY<canvasColourDropdownY2+canvasColourDropdownHeight/3) {
    click.play();
    click.rewind();
    canvasPurple = true;
    if (ink == purple) ink=black;
    println("Canvas is now purple");
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX3 && mouseX<canvasColourDropdownX3+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY2 && mouseY<canvasColourDropdownY2+canvasColourDropdownHeight/3) {
    click.play();
    click.rewind();
    canvasPink = true;
    if (ink == pink) ink=black;
    println("Canvas is now pink");
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX4 && mouseX<canvasColourDropdownX4+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY2 && mouseY<canvasColourDropdownY2+canvasColourDropdownHeight/3) {
    click.play();
    click.rewind();
    canvasOrange = true;
    if (ink == orange) ink=black;
    println("Canvas is now orange");
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX && mouseX<canvasColourDropdownX+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY3 && mouseY<canvasColourDropdownY3+canvasColourDropdownHeight/3) {
    click.play();
    click.rewind();
    canvasGreen = true;
    if (ink == green) ink=black;
    println("Canvas is now green");
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX2 && mouseX<canvasColourDropdownX2+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY3 && mouseY<canvasColourDropdownY3+canvasColourDropdownHeight/3) {
    click.play();
    click.rewind();
    canvasTeal = true;
    if (ink == teal) ink=black;
    println("Canvas is now teal");
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX3 && mouseX<canvasColourDropdownX3+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY3 && mouseY<canvasColourDropdownY3+canvasColourDropdownHeight/3) {
    click.play();
    click.rewind();
    canvasLime = true;
    if (ink == lime) ink=black;
    println("Canvas is now lime");
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX4 && mouseX<canvasColourDropdownX4+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY3 && mouseY<canvasColourDropdownY3+canvasColourDropdownHeight/3) {
    click.play();
    click.rewind();
    canvasYellow = true;
    if (ink == yellow) ink=black;
    println("Canvas is now yellow");
  } else {
    dropdown1 = false;
  }
}



//Quit and Restart Buttons
void mainControlsPressed() {
  if (mouseX>quitButtonX  && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
    exit();
  }
  if (mouseX>restartX && mouseX<restartX+topRowWidth  && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    click.play();
    click.rewind();
    canvasColour = white;
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    drawOn = false;
    draw = false;
    sprayPaint = false;
    sprayPaintOn = false;
    eraserOn = false;
    eraser = false;
    lineArt1 = false;
    lineArt2 = false;
    circleOn = false;
    circle = false;
    squareOn = false;
    square = false;
    triangleOn = false;
    triangle = false;
    penThickness = 2;
    eraserThickness = 20;
    ink = black;
  }
}
