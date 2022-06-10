void assign() {
  //Colours
  red = #F40000;
  orange = #F48100;
  yellow = #FFE932;
  green = #24C117;
  blue = #2D82F5;
  purple = #9D2DF5;
  pink = #FF3A88;
  brown = #74461C;
  black = #000000;
  grey = #646464;
  white = #FFFFFF;
  background = #CBCBCB;
  //Drawing Surface
  drawingSurfaceX = displayWidth*0;
  drawingSurfaceY = displayHeight*1/4;
  drawingSurfaceWidth = displayWidth;
  drawingSurfaceHeight = displayHeight*3/4;
  //GreySpace
  greySpaceX = displayWidth*0;
  greySpaceY = displayHeight*0;
  greySpaceWidth = displayWidth;
  greySpaceHeight = displayHeight*1/4;
  //Font
  font = createFont ("Jomolhari", 55);
  //Dropdown Menu Buttons
  menuButtonX = displayWidth*0;
  menuButtonY = displayHeight*0;
  menuButtonWidth = resetMenuButtonWidth = displayWidth*10/100;
  menuButtonHeight = displayHeight*10/100;
  resetButtonX = saveButtonX = exitButtonX = resetMenuButtonX = displayWidth*0;
  resetButtonY = resetMenuButtonY = displayHeight*10/100;
  saveButtonY = displayHeight*15/100;
  exitButtonY = displayHeight*20/100;
  resetButtonWidth = saveButtonWidth = exitButtonWidth = displayWidth*10/100;
  resetButtonHeight = saveButtonHeight = exitButtonHeight = displayHeight*5/100;
  resetMenuButtonHeight = displayHeight*15/100;
  //Dropdown Colour Buttons
  colourButtonX = displayWidth*10/100;
  colourButtonY = displayHeight*0;
  colourButtonWidth = resetColourButtonWidth = displayWidth*10/100;
  colourButtonHeight = displayHeight*10/100;
  redButtonX = greenButtonX = pinkButtonX = greyButtonX = resetColourButtonX = displayWidth*10/100;
  orangeButtonX = blueButtonX = brownButtonX = whiteButtonX = displayWidth*40/300;
  yellowButtonX = purpleButtonX = blackButtonX = randomButtonX = displayWidth*50/300;
  redButtonY = orangeButtonY = yellowButtonY = resetColourButtonY = displayHeight*10/100;
  greenButtonY = blueButtonY = purpleButtonY = displayHeight*55/400;
  pinkButtonY = brownButtonY = blackButtonY = displayHeight*70/400;
  greyButtonY = whiteButtonY = randomButtonY = displayHeight*85/400;
  redButtonWidth = orangeButtonWidth = yellowButtonWidth = greenButtonWidth = blueButtonWidth = purpleButtonWidth = pinkButtonWidth = brownButtonWidth = blackButtonWidth = greyButtonWidth = whiteButtonWidth = randomButtonWidth = colourButtonWidth*1/3;
  redButtonHeight = orangeButtonHeight = yellowButtonHeight = greenButtonHeight = blueButtonHeight = purpleButtonHeight = pinkButtonHeight = brownButtonHeight = blackButtonHeight = greyButtonHeight = whiteButtonHeight = randomButtonHeight = displayHeight*15/400;
  resetColourButtonHeight = displayHeight*15/100;
  randomImage = loadImage("colourSpectrumWave.png"); //1500 x 1500 Square
  //Dropdown Stroke Size Buttons
  strokeButtonX = displayWidth*20/100;
  strokeButtonY = displayHeight*0;
  strokeButtonWidth = displayWidth*10/100;
  strokeButtonHeight = displayHeight*10/100;
  thickButtonX = mediumButtonX = thinButtonX = resetStrokeButtonX = displayWidth*20/100;
  thickButtonY = resetStrokeButtonY = displayHeight*10/100;
  mediumButtonY = displayHeight*15/100;
  thinButtonY = displayHeight*20/100;
  thickButtonWidth = mediumButtonWidth = thinButtonWidth = resetStrokeButtonWidth = displayWidth*10/100;
  thickButtonHeight = mediumButtonHeight = thinButtonHeight = displayHeight*5/100;
  resetStrokeButtonHeight = displayHeight*15/100;
  // Dropdown Shape Buttons
  shapeButtonX = displayWidth*30/100;
  shapeButtonY = displayHeight*0;
  shapeButtonWidth = resetShapeButtonWidth = displayWidth*10/100;
  shapeButtonHeight = displayHeight*10/100;
  lineButtonX = circleButtonX = resetShapeButtonX = displayWidth*30/100;
  squareButtonX = triangleButtonX = displayWidth*35/100;
  lineButtonY = squareButtonY = resetShapeButtonY = displayHeight*10/100;
  circleButtonY = triangleButtonY = displayHeight*35/200;
  lineButtonWidth = circleButtonWidth = squareButtonWidth = triangleButtonWidth = displayWidth*5/100;
  lineButtonHeight = circleButtonHeight = squareButtonHeight = triangleButtonHeight = displayHeight*15/200;
  resetShapeButtonHeight = displayHeight*15/100;
  //Dropdown Eraser Buttons
  eraserButtonX = displayWidth*40/100;
  eraserButtonY = displayHeight*0;
  eraserButtonWidth = displayWidth*10/100;
  eraserButtonHeight = displayHeight*10/100;
  largeButtonX = medButtonX = smallButtonX = resetEraserButtonX = displayWidth*40/100;
  largeButtonY = resetEraserButtonY = displayHeight*10/100;
  medButtonY = displayHeight*15/100;
  smallButtonY = displayHeight*20/100;
  largeButtonWidth = medButtonWidth = smallButtonWidth = resetEraserButtonWidth = displayWidth*10/100;
  largeButtonHeight = medButtonHeight = smallButtonHeight = displayHeight*5/100;
  resetEraserButtonHeight = displayHeight*15/100;
  //Dropdown Background Buttons
  backgroundButtonX = displayWidth*50/100;
  backgroundButtonY = displayHeight*0;
  backgroundButtonWidth = resetBackgroundButtonWidth = displayWidth*10/100;
  backgroundButtonHeight = displayHeight*10/100;
  redFillButtonX = greenFillButtonX = pinkFillButtonX = greyFillButtonX = resetBackgroundButtonX = displayWidth*50/100;
  orangeFillButtonX = blueFillButtonX = brownFillButtonX = whiteFillButtonX = displayWidth*160/300;
  yellowFillButtonX = purpleFillButtonX = blackFillButtonX = randomFillButtonX = displayWidth*170/300;
  redFillButtonY = orangeFillButtonY = yellowFillButtonY = resetBackgroundButtonY = displayHeight*10/100;
  greenFillButtonY = blueFillButtonY = purpleFillButtonY = displayHeight*55/400;
  pinkFillButtonY = brownFillButtonY = blackFillButtonY = displayHeight*70/400;
  greyFillButtonY  = whiteFillButtonY = randomFillButtonY = displayHeight*85/400;
  redFillButtonWidth = orangeFillButtonWidth = yellowFillButtonWidth = greenFillButtonWidth = blueFillButtonWidth = purpleFillButtonWidth = pinkFillButtonWidth = brownFillButtonWidth = blackFillButtonWidth = greyFillButtonWidth = whiteFillButtonWidth = randomFillButtonWidth = backgroundButtonWidth*1/3;
  redFillButtonHeight = orangeFillButtonHeight = yellowFillButtonHeight = greenFillButtonHeight = blueFillButtonHeight = purpleFillButtonHeight = pinkFillButtonHeight = brownFillButtonHeight = blackFillButtonHeight = greyFillButtonHeight = whiteFillButtonHeight = randomFillButtonHeight = displayHeight*15/400;
  resetBackgroundButtonHeight = displayHeight*15/100;
  //Dropdown Music Buttons
  musicButtonX = displayWidth*60/100;
  musicButtonY = displayHeight*0;
  musicButtonWidth = resetMusicButtonWidth = displayWidth*30/100;
  musicButtonHeight = displayHeight*10/100;
  rewindButtonX = skipBButtonX = resetMusicButtonX = displayWidth*60/100;
  playButtonX = stopButtonX = displayWidth*70/100;
  nextButtonX = skipFButtonX = displayWidth*80/100;
  rewindButtonY = playButtonY = nextButtonY = resetMusicButtonY = displayHeight*10/100;
  skipBButtonY = stopButtonY = skipFButtonY = displayHeight*35/200;
  rewindButtonWidth = playButtonWidth = nextButtonWidth = skipBButtonWidth = stopButtonWidth = skipFButtonWidth = displayWidth*10/100;
  rewindButtonHeight = playButtonHeight = nextButtonHeight = skipBButtonHeight = stopButtonHeight = skipFButtonHeight = displayHeight*15/200;
  resetMusicButtonHeight = displayHeight*15/100;
  //Dropdown Mute Buttons
  muteButtonX = displayWidth*90/100;
  muteButtonY = displayHeight*0;
  muteButtonWidth = displayWidth*10/100;
  muteButtonHeight = displayHeight*10/100;
} //End Assign()
