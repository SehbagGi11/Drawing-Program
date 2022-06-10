//Global Variables
//
void setup() {
  //Manditory: Mistaken display orientation should break app, feedback to console CANVAS
  frameRate(144);
  fullScreen(); //displayWidth, displayHeight
  population();
  musicSetup();
  textSetup();
  GUISetup();
}//End setup
//
void draw() {
  populationDraw();
  musicDraw();
  drawingTools();
  GUIDraw();
  textDraw();
  println(volumeButton);
}//End draw
//
void keyPressed() {
  musicKeyPressed();
}//End keyPressed
//
void mousePressed() {
musicMousePressed();
buttonFunctions();
}//End mousePressed
//
void mouseReleased(){
drawTool=false;
volumeHeld=false;
}
//End MAIN
