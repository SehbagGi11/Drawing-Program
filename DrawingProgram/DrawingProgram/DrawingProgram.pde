//Libraries
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float greySpaceX, greySpaceY, greySpaceWidth, greySpaceHeight;
color background;
Boolean draw = false;
//
void setup() {
  fullScreen();
  assign();
  //Background
  //background(background);
  //Drawing Surface
  stroke(black);
  strokeWeight(1);
  fill(white);
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  //
  colourButtonSetup();
  strokeButtonSetup();
  shapeButtonSetup();
  backgroundButtonSetup();
  musicButtonSetup();
  //
} //End Setup()

void draw() {
  fill(background);
  stroke(black);
  strokeWeight(1);
  rect(greySpaceX, greySpaceY, greySpaceWidth, greySpaceHeight);
  strokeWeight(strokeSize);
  stroke(sketchColour);
  fill(white);
  //
  menuButtonDraw();
  colourButtonDraw();
  strokeButtonDraw();
  shapeButtonDraw();
  eraserButtonDraw();
  backgroundButtonDraw();
  musicButtonDraw();
  muteButtonDraw();
} //End Draw()

void mousePressed() {
  if ( mouseX > drawingSurfaceX && mouseY > drawingSurfaceY && mouseX < drawingSurfaceX+drawingSurfaceWidth && mouseY < drawingSurfaceY+drawingSurfaceHeight ) {
    if ( draw == false ) {
      draw = true;
    } else {
      draw = false;
    } //End Draw Boolean
  } //End Line Draw
  menuButtonMousePressed();
  resetButtonMousePressed();
  saveButtonMousePressed();
  exitButtonMousePressed();
  colourButtonMousePressed();
  redButtonMousePressed();
  orangeButtonMousePressed();
  yellowButtonMousePressed();
  greenButtonMousePressed();
  blueButtonMousePressed();
  purpleButtonMousePressed();
  pinkButtonMousePressed();
  brownButtonMousePressed();
  blackButtonMousePressed();
  greyButtonMousePressed();
  whiteButtonMousePressed();
  randomButtonMousePressed();
  strokeButtonMousePressed();
  thickButtonMousePressed();
  mediumButtonMousePressed();
  thinButtonMousePressed();
  shapeButtonMousePressed();
  lineButtonMousePressed();
  circleButtonMousePressed();
  squareButtonMousePressed();
  triangleButtonMousePressed();
  eraserButtonMousePressed();
  backgroundButtonMousePressed();
  stroke(black);
  strokeWeight(1);
  redFillButtonMousePressed();
  orangeFillButtonMousePressed();
  yellowFillButtonMousePressed();
  greenFillButtonMousePressed();
  blueFillButtonMousePressed();
  purpleFillButtonMousePressed();
  pinkFillButtonMousePressed();
  brownFillButtonMousePressed();
  blackFillButtonMousePressed();
  greyFillButtonMousePressed();
  whiteFillButtonMousePressed();
  randomFillButtonMousePressed();
  strokeWeight(strokeSize);
  stroke(sketchColour);
  largeButtonMousePressed();
  medButtonMousePressed();
  smallButtonMousePressed();
  musicButtonMousePressed();
  rewindButtonMousePressed();
  playButtonMousePressed();
  nextButtonMousePressed();
  skipBButtonMousePressed();
  stopButtonMousePressed();
  skipFButtonMousePressed();
  muteButtonMousePressed();
} //End MousePressed()

void keyPressed() {

} //End KeyPressed()
