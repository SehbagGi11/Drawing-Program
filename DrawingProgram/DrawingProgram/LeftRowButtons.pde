//Global Variables
String penText= "Pen", sprayPaintText= "Spray Paint";

void toolsDropdown() {
  if (dropdown2 == true && mouseX>drawingToolsX && mouseX<drawingToolsX+topRowWidth && mouseY>topRowY+topRowHeight && mouseY<(topRowY+topRowHeight)+topRowHeight) { //normal pen option
    fill(lightGray);
    border();
    rect(drawingToolsX, topRowY+topRowHeight, topRowWidth, topRowHeight); 
    reset();
    fill(darkBlue);
    penText();
    reset();
  } else if (dropdown2 == true) {
    border();
    rect(drawingToolsX, topRowY+topRowHeight, topRowWidth, topRowHeight); 
    reset();
    fill(darkBlue);
    penText();
    reset();
  }
  if (dropdown2 == true && mouseX>drawingToolsX && mouseX<drawingToolsX+topRowWidth && mouseY>topRowY+topRowHeight*2 && mouseY<(topRowY+topRowHeight*2)+topRowHeight) { //normal pen option
    fill(lightGray);
    border();
    rect(drawingToolsX, topRowY+topRowHeight*2, topRowWidth, topRowHeight); 
    reset();
    fill(darkBlue);
    sprayPaintText();
    reset();
  } else if (dropdown2 == true) {
    border();
    rect(drawingToolsX, topRowY+topRowHeight*2, topRowWidth, topRowHeight); 
    reset();
    fill(darkBlue);
    sprayPaintText();
    reset();
  }
}
void pen() {
  if (draw == true) {
    stroke(ink);
    strokeWeight(penThickness);
    line(mouseX, mouseY, pmouseX, pmouseY);
    reset();
  }
  //&& mouseX>canvasX  && mouseX<canvasX+canvasWidth  && mouseY>canvasY && mouseY<canvasY+canvasHeight //code doesn't work that well if the mouse is moving quickly(it draws outside of the canvas)
}

void sprayPaint() {
  if (sprayPaint == true) {
    angle += 5;
    float val = cos(radians(angle)) * 12.0;
    for (int a = 0; a < 360; a += 30) {
      float xoff = cos(radians(a)) * val;
      float yoff = sin(radians(a)) * val;
      stroke(ink);
      fill(ink);
      ellipse(mouseX + xoff, mouseY + yoff, val, val);
      reset();
    }
    stroke(ink);
    fill(ink);
    ellipse(mouseX, mouseY, val, val);
    reset();
  }
}

void canvasColourDropdown() { //will not have hoverover cause it would take too long
  if (dropdown1 == true) {
    border();
    rect(canvasColourDropdownX, canvasColourDropdownY, canvasColourDropdownWidth, canvasColourDropdownHeight);
    reset();
    //Colour Palette Row 1
    rect(canvasColourDropdownX, canvasColourDropdownY, canvasColourDropdownWidth/4, canvasColourDropdownHeight/3); //White, so no fill needed
    fill(black);
    rect(canvasColourDropdownX2, canvasColourDropdownY, canvasColourDropdownWidth/4, canvasColourDropdownHeight/3);
    reset();
    fill(gray);
    rect(canvasColourDropdownX3, canvasColourDropdownY, canvasColourDropdownWidth/4, canvasColourDropdownHeight/3);
    reset();
    fill(red);
    rect(canvasColourDropdownX4, canvasColourDropdownY, canvasColourDropdownWidth/4, canvasColourDropdownHeight/3);
    reset();
    //Colour Palette Row 2
    fill(blue2);
    rect(canvasColourDropdownX, canvasColourDropdownY2, canvasColourDropdownWidth/4, canvasColourDropdownHeight/3);
    reset();
    fill(purple);
    rect(canvasColourDropdownX2, canvasColourDropdownY2, canvasColourDropdownWidth/4, canvasColourDropdownHeight/3);
    reset();
    fill(pink);
    rect(canvasColourDropdownX3, canvasColourDropdownY2, canvasColourDropdownWidth/4, canvasColourDropdownHeight/3);
    reset();
    fill(orange);
    rect(canvasColourDropdownX4, canvasColourDropdownY2, canvasColourDropdownWidth/4, canvasColourDropdownHeight/3);
    reset();
    //Colour Palette Row 3
    fill(green);
    rect(canvasColourDropdownX, canvasColourDropdownY3, canvasColourDropdownWidth/4, canvasColourDropdownHeight/3);
    reset();
    fill(teal);
    rect(canvasColourDropdownX2, canvasColourDropdownY3, canvasColourDropdownWidth/4, canvasColourDropdownHeight/3);
    reset();
    fill(lime);
    rect(canvasColourDropdownX3, canvasColourDropdownY3, canvasColourDropdownWidth/4, canvasColourDropdownHeight/3);
    reset();
    fill(yellow);
    rect(canvasColourDropdownX4, canvasColourDropdownY3, canvasColourDropdownWidth/4, canvasColourDropdownHeight/3);
    reset();
  }
}

void canvasColour() {
  if (canvasWhite == true) {
    canvasColour = white;
    fill(canvasColour);
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    reset();
    canvasWhite = false;
    dropdown1 = false;
  }
  if (canvasBlack == true) {
    canvasColour = black;
    fill(canvasColour);
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    reset();
    canvasBlack = false;
    dropdown1 = false;
  }
  if (canvasGray == true) {
    canvasColour = gray;
    fill(canvasColour);
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    reset();
    canvasGray = false;
    dropdown1 = false;
  }
  if (canvasRed == true) {
    canvasColour = red;
    fill(canvasColour);
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    reset();
    canvasRed = false;
    dropdown1 = false;
  }
  if (canvasBlue == true) {
    canvasColour = blue2;
    fill(canvasColour);
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    reset();
    canvasBlue = false;
    dropdown1 = false;
  }
  if (canvasPurple == true) {
    canvasColour = purple;
    fill(canvasColour);
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    reset();
    canvasPurple = false;
    dropdown1 = false;
  }
  if (canvasPink == true) {
    canvasColour = pink;
    fill(canvasColour);
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    reset();
    canvasPink = false;
    dropdown1 = false;
  }
  if (canvasOrange == true) {
    canvasColour = orange;
    fill(canvasColour);
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    reset();
    canvasOrange = false;
    dropdown1 = false;
  }
  if (canvasGreen == true) {
    canvasColour = green;
    fill(canvasColour);
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    reset();
    canvasGreen = false;
    dropdown1 = false;
  }
  if (canvasTeal == true) {
    canvasColour = teal;
    fill(canvasColour);
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    reset();
    canvasTeal = false;
    dropdown1 = false;
  }
  if (canvasLime == true) {
    canvasColour = lime;
    fill(canvasColour);
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    reset();
    canvasLime = false;
    dropdown1 = false;
  }
  if (canvasYellow == true) {
    canvasColour = yellow;
    fill(canvasColour);
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    reset();
    canvasYellow = false;
    dropdown1 = false;
  }
}
