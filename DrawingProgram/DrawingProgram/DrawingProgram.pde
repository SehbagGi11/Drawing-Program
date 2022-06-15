import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// Global Variables
Minim minim;
int numberOfSongs = 3;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs];
AudioPlayer click;
int currentSong = numberOfSongs - numberOfSongs;
//
color ink, black = #000000, white = #FFFFFF;
color backgroundColour, canvasColour, salmon, darkBlue, blue, lightGray;
color gray, red, blue2, purple, pink, orange, green, teal, lime, yellow;
PFont buttonFont;
float canvasX, canvasY, canvasWidth, canvasHeight, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight, canvasColourDropdownX, canvasColourDropdownY, canvasColourDropdownWidth, canvasColourDropdownHeight;
float topRowY, topRowWidth, topRowHeight, restartX, lineArtX, lineArt2X, eraserButtonX, drawingToolsX, backgroundColourX;
float canvasColourDropdownX2, canvasColourDropdownX3, canvasColourDropdownX4, canvasColourDropdownX5, canvasColourDropdownY2, canvasColourDropdownY3;
float leftRowX, leftRowWidth, leftRowHeight, leftRowChoicesWidth, leftRowChoicesHeight, eraserSizesY, shapesY, brushSizesY, inkColoursY, colourChoicesWidth, colourChoicesHeight;
float musicControlsY, musicControlsHeight, musicButtonWidth, playlistX, loopX, playPauseX, restartMusicX, song1X, song2X, song3X, songWidth;
float penThickness, eraserThickness, angle;
float imageX, imageY, imageWidth, imageHeight, imageX2, imageY2, imageWidth2, imageHeight2, imageWidth3, imageHeight3;
float song1name, song2name, song3name;
PImage pic, pic2, playlistIcon, playlistIcon2, loopIcon, loopIcon2, pauseIcon, pauseIcon2, playIcon, playIcon2, rewindIcon, rewindIcon2;
Boolean draw=false, drawOn=false, sprayPaint=false, sprayPaintOn=false, lineArt1= false, lineArt2= false, eraser=false, eraserOn=false, dropdown2=false, dropdown1=false, circleOn=false, circle=false, squareOn=false, square=false, triangleOn=false, triangle=false; 
Boolean canvasBlack=false, canvasWhite=false, canvasGray=false, canvasRed=false, canvasBlue=false, canvasPurple=false, canvasPink=false, canvasOrange=false, canvasGreen=false, canvasTeal=false, canvasLime=false, canvasYellow=false; //Canvas Background Colour 
Boolean song1On=false, song2On=false, song3On=false, playlistOn=false, loopOn=false;

void setup() {
  fullScreen(); //landscape
  minimSetup();
  variablePopulation();
  textSetup();
  canvas();
}

void draw() {
  pen();
  sprayPaint();
  eraser();
  circles();
  squares();
  triangles();
  canvasColour(); //if the ink is the same as the canvas colour you are changing it to, the ink will change to black (unless the background colour is being changed to black, then the ink will change to be white)
  boxes(); //prevents the drawing from getting out of the canvas, even when the mouse is moving quickly //canvas tab

  //Top Row Buttons
  quitButton();
  restartCanvas();
  lineArt();
  eraserButton();
  drawingTools();
  backgroundColour();

  //Left Row Buttons
  eraserSizes();
  shapes();
  brushSizes();
  inkColours();

  //Music Controls
  playlistLoop();
  playlistButton();
  loopButton();
  playPauseButton();
  songOptions();
  restartMusic();

  //Drop Down Menus and Enlarged Options //Placed at the end so that when open, the covers the other buttons/background
  toolsDropdown();
  canvasColourDropdown();
}

void mousePressed() {
  //Drawing On the Canvas
  canvasPressed();
  //Top Row
  topRowMousePressed();
  canvasColourPressed();
  mainControlsPressed(); //Quit and restart button
  //Left Row
  eraserSizesPressed();
  circlePressed();
  squarePressed();
  trianglePressed();
  brushSizesPressed();
  inkColourPressed();
  //Music
  playlistPressed();
  loopPressed();
  playlistLoop();
  playPausePressed();
  songsPressed();
  rewindMusicPressed();
}

void keyPressed() {
  if ( key == 'f' || key == 'F') song[currentSong].skip(10000); //10 seconds
  if ( key == 'b' || key == 'B') song[currentSong].skip(-10000); //10 secondsbb
}
