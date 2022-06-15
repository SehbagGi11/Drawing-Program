void variablePopulation() {
  ink = black;
  canvasColour = white;
  angle = 0;

  //Colours
  backgroundColour = #A8D0E6;
  salmon = #F76C6C;
  darkBlue = #24305E;
  blue = #6392bf;
  lightGray = #a5a5a5;
  //Colour Palette Colours
  gray = #838383;
  red = #c44645;
  blue2 = #6986d5;
  purple = #ba8fd0;
  pink = #dc99ad;
  orange = #e79775;
  green = #418b52;
  teal = #8bd4c0;
  lime = #b4f5a1;
  yellow = #fff99f;


  //Tool Sizes
  penThickness = 2;
  eraserThickness = 25;


  //Canvas
  canvasX = width*9/30;
  canvasY = height*2/15;
  canvasWidth = width*20/30;
  canvasHeight = height*11/15;


  //Quit Button
  quitButtonX = width*57/60;
  quitButtonY = height*1/45;
  quitButtonWidth = width*1/30;
  quitButtonHeight = height*1/20;


  //Line Art
  pic = loadImage ("../Images/totoro.PNG"); //Dimensions: 660 Width, 962 Height
  float imageWidthRatio = 660.0/660.0; 
  float imageHeightRatio = 962.0/660.0;
  imageX = canvasX+ width*1/5;
  imageY = canvasY;
  imageWidth = (canvasHeight*imageWidthRatio)*14/20;
  imageHeight = (canvasHeight*imageHeightRatio)*14/20;
  pic2 = loadImage ("../Images/pooh.png"); //Dimensions: 801 Width, 1024 Height
  float imageWidthRatio2 = 801.0/801.0; 
  float imageHeightRatio2 = 1024.0/801.0;
  imageX2 = canvasX+ width*1/5;
  imageY2 = canvasY+ height*1/50;
  imageWidth2 = (canvasHeight*imageWidthRatio2)*15/20;
  imageHeight2 = (canvasHeight*imageHeightRatio2)*15/20; 


  //Top Row Buttons
  topRowY = height*1/30;
  topRowWidth = width*7/60;
  topRowHeight = height*2/30;
  restartX = width*47/60;
  lineArt2X = width*38/60;
  lineArtX = width*29/60;
  eraserButtonX = width*20/60;
  drawingToolsX = width*11/60;
  backgroundColourX = width*2/60;
  //Drop Down Menus
  canvasColourDropdownX = backgroundColourX;
  canvasColourDropdownY = topRowY+topRowHeight;
  canvasColourDropdownWidth = width*13/60;
  canvasColourDropdownHeight = height*6/30;
  canvasColourDropdownX2 = canvasColourDropdownX+canvasColourDropdownWidth*1/4;
  canvasColourDropdownX3 = canvasColourDropdownX+canvasColourDropdownWidth*2/4;
  canvasColourDropdownX4 = canvasColourDropdownX+canvasColourDropdownWidth*3/4;
  canvasColourDropdownY2 = canvasColourDropdownY+canvasColourDropdownHeight*1/3;
  canvasColourDropdownY3 = canvasColourDropdownY+canvasColourDropdownHeight*2/3;


  //Left Side Buttons
  leftRowX = width*1/30;
  leftRowWidth = width*6/30;
  leftRowHeight = height*4/30;
  leftRowChoicesWidth = leftRowWidth/5;
  leftRowChoicesHeight = leftRowHeight-leftRowHeight*2/5;
  //
  eraserSizesY = height*5/30;
  shapesY = height*11/30;
  brushSizesY = height*17/30;
  inkColoursY = height*23/30;
  colourChoicesWidth = leftRowWidth/6;
  colourChoicesHeight = leftRowChoicesHeight/2;
  //Enlarged Hover Over


  //Music Controls
  musicControlsY = height*27/30;
  musicControlsHeight = height*2/30;
  //
  //Images Below all have the Dimensions: 300 Width, 300 Height;
  playlistIcon = loadImage ("../Images/playlist1.png"); 
  playlistIcon2 = loadImage ("../Images/playlist2.png"); 
  loopIcon = loadImage ("../Images/loop1.png"); 
  loopIcon2 = loadImage ("../Images/loop2.png"); 
  pauseIcon = loadImage ("../Images/pause1.png"); 
  pauseIcon2 = loadImage ("../Images/pause2.png"); 
  playIcon = loadImage ("../Images/play1.png"); 
  playIcon2 = loadImage ("../Images/play2.png"); 
  rewindIcon = loadImage ("../Images/rewind1.png"); 
  rewindIcon2 = loadImage ("../Images/rewind2.png"); 
  //
  musicButtonWidth = width*4/90;
  float imageWidthRatio3 = 300.0/300.0; 
  float imageHeightRatio3 = 300.0/300.0;
  imageWidth3 = canvasHeight*imageWidthRatio3;
  imageHeight3 = canvasHeight*imageHeightRatio3;
  //
  playlistX = width*26/90;
  loopX = width*32/90;
  playPauseX = width*38/90;
  restartMusicX = width*83/90;
  //
  //Song 1-3 Buttons
  songWidth = width*11/90;
  song1X = width*44/90;
  song2X = width*57/90;
  song3X = width*70/90;
}
