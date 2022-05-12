//Global Variables
Boolean drawB1=false;
float canvasX, canvasY, canvasWidth, canvasHeight;
//
void setup() {
  //
  //Mandatory: Wrong displayOrientation should break app, feedback to console and CANVAS
  size(1800, 1400); //fullScreen, displayWidth, displayHeight
  //
  //Population
  canvasX = width*0/4; //displayWidth
  canvasY = height*0/5; //displayHeight
  canvasWidth = width*3/4; //displayWidth
  canvasHeight = height*4/5; //displayHeight
  //
  rect(canvasX, canvasY, canvasWidth, canvasHeight);
}//End setup
//
void draw() {
  if ( drawB1==true ) line( mouseX, mouseY, pmouseX, pmouseY ) ;//End Line Draw
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  if (mouseX>=canvasX && mouseY<=canvasX+canvasWidth && mouseY>=canvasY && mouseY<=canvasY+canvasHeight) {
    if (drawB1 == false) {
      drawB1 = true;
    } else {
      drawB1 = false;
    }//End draw Boolean
  }//Button is paper (Drawing surface/canvas)
}//End mousePressed
//
//End MAIN
