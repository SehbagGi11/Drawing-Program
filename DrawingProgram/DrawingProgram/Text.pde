void textSetup() {
  buttonFont = createFont ("BanglaSangamMN", 20);
}


//Top Row Buttons
void quitButtonText() {
  textAlign (CENTER, TOP);
  textFont(buttonFont, 35);
  text(quit, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
}

void restartButtonText() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont, 20);
  text(restart, restartX, topRowY, topRowWidth, topRowHeight);
}

void lineArt1Text() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont, 20);
  text(lineArt1Text, lineArtX, topRowY, topRowWidth, topRowHeight);
}
void lineArt2Text() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont, 20);
  text(lineArt2Text, lineArt2X, topRowY, topRowWidth, topRowHeight);
}

void eraserButtonText() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont, 20);
  text(eraserText, eraserButtonX, topRowY, topRowWidth, topRowHeight);
}

void drawingToolsText() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont, 20);
  text(drawingToolsText, drawingToolsX, topRowY, topRowWidth, topRowHeight);
}
void penText() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont, 20);
  text(penText, drawingToolsX, topRowY+topRowHeight, topRowWidth, topRowHeight);
}
void sprayPaintText() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont, 20);
  text(sprayPaintText, drawingToolsX, topRowY+topRowHeight*2, topRowWidth, topRowHeight);
}

void canvasColourText() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont, 20);
  text(canvasColourText, backgroundColourX, topRowY, topRowWidth, topRowHeight);
}


//Left Row Buttons
void eraserSizesText() {
  textAlign (LEFT, CENTER);
  textFont(buttonFont, 20);
  text(eraserSizes, leftRowX+leftRowWidth/15, eraserSizesY, leftRowWidth, leftRowHeight*2/5);
}

void shapesButtonText() {
  textAlign (LEFT, CENTER);
  textFont(buttonFont, 20);
  text(shapes, leftRowX+leftRowWidth/15, shapesY, leftRowWidth, leftRowHeight*2/5);
}

void brushSizesText() {
  textAlign (LEFT, CENTER);
  textFont(buttonFont, 20);
  text(brushSizes, leftRowX+leftRowWidth/15, brushSizesY, leftRowWidth, leftRowHeight*2/5);
}

void inkColourText() {
  textAlign (LEFT, CENTER);
  textFont(buttonFont, 20);
  text(inkColour, leftRowX+leftRowWidth/15, inkColoursY, leftRowWidth, leftRowHeight*2/5);
}


//Music Controls
void song1Text() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont, 15);
  text(song1Text, song1X, musicControlsY, songWidth, musicControlsHeight);
}
void song2Text() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont, 20);
  text(song2Text, song2X, musicControlsY, songWidth, musicControlsHeight);
}
void song3Text() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont, 20);
  text(song3Text, song3X, musicControlsY, songWidth, musicControlsHeight);
}
