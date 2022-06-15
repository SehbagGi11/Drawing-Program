//Global Variables
String restart= "Restart Canvas", eraserText= "Eraser", drawingToolsText= "Drawing Tools", lineArt1Text= "Line Art 1", lineArt2Text= "Line Art 2", canvasColourText= "Canvas Colour";


//Restart Canvas
void restartCanvas() {
  if (mouseX>restartX && mouseX<restartX+topRowWidth && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    fill(darkBlue);
    rect(restartX, topRowY, topRowWidth, topRowHeight);
    reset();
    restartButtonText();
  } else {
    border(); //found in canvas tab //the border that is used alot throughout the whole project
    fill(blue);
    rect(restartX, topRowY, topRowWidth, topRowHeight);
    reset();
    fill(darkBlue);
    restartButtonText();
    reset();
  }
} //End of Restart Canvas


//Line Art
void lineArt() { 
  if (mouseX>lineArtX && mouseX<lineArtX+topRowWidth && mouseY>topRowY && mouseY<topRowY+topRowHeight) { //Line Art 1 = totoro
    fill(darkBlue);
    rect(lineArtX, topRowY, topRowWidth, topRowHeight);
    reset();
    lineArt1Text();
  } else {
    border();
    fill(blue);
    rect(lineArtX, topRowY, topRowWidth, topRowHeight);
    reset();
    fill(darkBlue);
    lineArt1Text();
    reset();
  }
  if (mouseX>lineArt2X && mouseX<lineArt2X+topRowWidth && mouseY>topRowY && mouseY<topRowY+topRowHeight) { //Line Art 2 = pooh
    fill(darkBlue);
    rect(lineArt2X, topRowY, topRowWidth, topRowHeight);
    reset();
    lineArt2Text();
  } else {
    border();
    fill(blue);
    rect(lineArt2X, topRowY, topRowWidth, topRowHeight);
    reset();
    fill(darkBlue);
    lineArt2Text();
    reset();
  }
  if (lineArt1 == true && lineArt2 == false) image(pic, imageX, imageY, imageWidth, imageHeight);
  if (lineArt1 == false && lineArt2 == true) image(pic2, imageX2, imageY2, imageWidth2, imageHeight2);
} //End of Line Art


//Eraser
void eraserButton() { 
  if (mouseX>eraserButtonX && mouseX<eraserButtonX+topRowWidth  && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    fill(darkBlue);
    rect(eraserButtonX, topRowY, topRowWidth, topRowHeight);
    reset();
    eraserButtonText();
    reset();
  } else {
    border();
    fill(blue);
    rect(eraserButtonX, topRowY, topRowWidth, topRowHeight);
    reset();
    fill(darkBlue);
    eraserButtonText();
    reset();
  }
} 
void eraser() {
  if (eraser == true) {
    strokeWeight(eraserThickness);
    stroke(canvasColour);
    line(mouseX, mouseY, pmouseX, pmouseY);
    reset();
  }
} //End of Eraser


//Drawing Tools (Pen, Spray Paint, and hopefully Paint Bucket (flood fill)
void drawingTools() {
  if (mouseX>drawingToolsX && mouseX<drawingToolsX+topRowWidth  && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    fill(darkBlue);
    rect(drawingToolsX, topRowY, topRowWidth, topRowHeight);
    reset();
    drawingToolsText();
  } else {
    border();
    fill(blue);
    rect(drawingToolsX, topRowY, topRowWidth, topRowHeight);
    reset();
    fill(darkBlue);
    drawingToolsText();
    reset();
  }
} //End of Drawing Tools


//Background Colour // Changes the colour of the canvas
void backgroundColour() {
  if (mouseX>backgroundColourX && mouseX<backgroundColourX+topRowWidth  && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    fill(darkBlue);
    rect(backgroundColourX, topRowY, topRowWidth, topRowHeight);
    reset();
    canvasColourText();
  } else {
    border();
    fill(blue);
    rect(backgroundColourX, topRowY, topRowWidth, topRowHeight);
    reset();
    fill(darkBlue);
    canvasColourText();
    reset();
  }
} //End of Background Colour
