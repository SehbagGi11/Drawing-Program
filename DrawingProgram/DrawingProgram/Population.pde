//Global Variables
Boolean drawTool=false, drawLine = true, eraser=false, paper=false, drawCircle = false, drawTriangle=false, drawRectangle=false, volumeHeld=false;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float drawingDiameter;
float secondTextX, secondTextY, secondTextWidth, secondTextHeight;
float progressBarHeight, progressBarWidth, setTime, volume, volumeButton;
int strokeReset = 2, noStroke = 0, reset = 1, lineStroke;
int newTime;
color backgroundColour, toolColour, white = #FFFFFF, lgrey=#8B8B83, dgrey=#585858, resetColour = white, black = 0, quitButtonColour, GUI = #969EA5, blue=#0000FF, red=#FF0000, yellow=#FFE600, green=#2A8917, ygreen=#36FF00, bgreen=#4DAD94, bviolet=#5112C9, violet=#8B12C9, rviolet=#E012BB, rorange=#E03B12, orange=#E07D12, yorange=#E0AA12;
//
void population() {
  volumeButton=0.5;
  drawingSurfaceX = displayWidth*6/35;
  drawingSurfaceY = displayHeight*0;
  drawingSurfaceWidth = displayWidth*29/35;
  drawingSurfaceHeight = displayHeight*6/7;
  drawingDiameter = displayHeight*1/100;
  quitButtonX = displayWidth*9/10;
  quitButtonY = displayHeight*0;
  quitButtonWidth = displayWidth*1/10; // 2/20=1/10
  quitButtonHeight = displayHeight*1/20;
  secondTextX = displayWidth*4/35;
  secondTextY = displayWidth*9/35;
  secondTextWidth = displayWidth*1/35;
  secondTextHeight = displayWidth*1/35;
  fillButton = displayWidth*1/35;
  strokeWidth = displayWidth*1/37;
  strokeHeight = displayWidth*2/37;
  shapeWidth = displayWidth*1/37;
  shapeHeight = displayWidth*2/37;
  backgroundColour=white;
  toolColour=black;
  lineStroke=2;
  progressBarHeight=displayHeight*1/200;
  progressBarWidth=displayWidth*9/35;
}//End population

void populationDraw() {
  setTime =  float(mouseX-displayWidth*16/35) / float(displayWidth*9/35);
  newTime = int(setTime*song[currentSong].length());
  volume = float(mouseX-displayWidth*33/35)/35;
  if(volumeHeld==true){
    volumeButton = float(mouseX-displayWidth*30/35) / float(displayWidth*4/35); 
    song[currentSong].setGain(volume);
  }
  
}//End populationDraw
