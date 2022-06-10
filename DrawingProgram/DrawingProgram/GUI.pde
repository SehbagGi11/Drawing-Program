//Global Variables
float fillButton, strokeWidth, strokeHeight, shapeWidth, shapeHeight;
//
void GUIDraw() {
//Background
fill(GUI);
strokeWeight(noStroke);
stroke(GUI);
rect(0, 0, displayWidth*6/35, displayHeight);
rect(0, displayHeight*6/7, displayWidth, displayHeight*1/5);
stroke(strokeReset);
fill(resetColour);
//
//Quit Button
if (mouseX>=quitButtonX && mouseX<=quitButtonX + quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) {
quitButtonColour = red;
} else {
quitButtonColour = black;
}//End Quit Button Hoverover
fill(quitButtonColour);
strokeWeight(noStroke);
rect(quitButtonX,quitButtonY, quitButtonWidth, quitButtonHeight);
stroke(reset);
fill(resetColour);
//
//Reset Button
fill(white);
rect(secondTextX, secondTextY, secondTextWidth, secondTextHeight);
fill(black); //Ink
//Draw colour buttons
strokeWeight(noStroke);
//row 1
if(mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+fillButton && mouseY>= displayWidth*1/35 && mouseY<=displayWidth*1/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(red);
rect(displayWidth*1/35, displayWidth*1/35, fillButton, fillButton);
strokeWeight(0);
if(mouseX>=displayWidth*2/35 && mouseX<=displayWidth*2/35+fillButton && mouseY>= displayWidth*1/35 && mouseY<=displayWidth*1/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(rorange);
rect(displayWidth*2/35, displayWidth*1/35, fillButton, fillButton);
strokeWeight(0);
if(mouseX>=displayWidth*3/35 && mouseX<=displayWidth*3/35+fillButton && mouseY>= displayWidth*1/35 && mouseY<=displayWidth*1/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(orange);
rect(displayWidth*3/35, displayWidth*1/35, fillButton, fillButton);
strokeWeight(0);
if(mouseX>=displayWidth*4/35 && mouseX<=displayWidth*4/35+fillButton && mouseY>= displayWidth*1/35 && mouseY<=displayWidth*1/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(yorange);
rect(displayWidth*4/35, displayWidth*1/35, fillButton, fillButton);
strokeWeight(0);
//row 2
if(mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+fillButton && mouseY>= displayWidth*2/35 && mouseY<=displayWidth*2/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(yellow);
rect(displayWidth*1/35, displayWidth*2/35, fillButton, fillButton);
strokeWeight(0);
if(mouseX>=displayWidth*2/35 && mouseX<=displayWidth*2/35+fillButton && mouseY>= displayWidth*2/35 && mouseY<=displayWidth*2/35+fillButton) {strokeWeight(2);} else {
 strokeWeight(0);}
fill(ygreen);
rect(displayWidth*2/35, displayWidth*2/35, fillButton, fillButton);
strokeWeight(0);
if(mouseX>=displayWidth*3/35 && mouseX<=displayWidth*3/35+fillButton && mouseY>= displayWidth*2/35 && mouseY<=displayWidth*2/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(green);
rect(displayWidth*3/35, displayWidth*2/35, fillButton, fillButton);
strokeWeight(0);
if(mouseX>=displayWidth*4/35 && mouseX<=displayWidth*4/35+fillButton && mouseY>= displayWidth*2/35 && mouseY<=displayWidth*2/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(bgreen);
rect(displayWidth*4/35, displayWidth*2/35, fillButton, fillButton);
strokeWeight(0);
//row 3
if(mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+fillButton && mouseY>= displayWidth*3/35 && mouseY<=displayWidth*3/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(blue);
rect(displayWidth*1/35, displayWidth*3/35, fillButton, fillButton);
strokeWeight(0);
if(mouseX>=displayWidth*2/35 && mouseX<=displayWidth*2/35+fillButton && mouseY>= displayWidth*3/35 && mouseY<=displayWidth*3/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(bviolet);
rect(displayWidth*2/35, displayWidth*3/35, fillButton, fillButton);
strokeWeight(0);
if(mouseX>=displayWidth*3/35 && mouseX<=displayWidth*3/35+fillButton && mouseY>= displayWidth*3/35 && mouseY<=displayWidth*3/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(violet);
rect(displayWidth*3/35, displayWidth*3/35, fillButton, fillButton);
strokeWeight(0);
if(mouseX>=displayWidth*4/35 && mouseX<=displayWidth*4/35+fillButton && mouseY>= displayWidth*4/35 && mouseY<=displayWidth*3/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(rviolet);
rect(displayWidth*4/35, displayWidth*3/35, fillButton, fillButton);
strokeWeight(0);
//row 4
if(mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+fillButton && mouseY>= displayWidth*4/35 && mouseY<=displayWidth*4/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(black);
rect(displayWidth*1/35, displayWidth*4/35, fillButton, fillButton);
strokeWeight(0);
if(mouseX>=displayWidth*2/35 && mouseX<=displayWidth*2/35+fillButton && mouseY>= displayWidth*4/35 && mouseY<=displayWidth*4/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(dgrey);
rect(displayWidth*2/35, displayWidth*4/35, fillButton, fillButton);
strokeWeight(0);
if(mouseX>=displayWidth*3/35 && mouseX<=displayWidth*3/35+fillButton && mouseY>= displayWidth*4/35 && mouseY<=displayWidth*4/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(white);
rect(displayWidth*3/35, displayWidth*4/35, fillButton, fillButton);
strokeWeight(0);
if(mouseX>=displayWidth*4/35 && mouseX<=displayWidth*4/35+fillButton && mouseY>= displayWidth*4/35 && mouseY<=displayWidth*4/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(backgroundColour);
rect(displayWidth*4/35, displayWidth*4/35, fillButton, fillButton);
strokeWeight(0);
//
strokeWeight(strokeReset);
//background fill buttons
strokeWeight(noStroke);
//row 1
if(mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+fillButton && mouseY>= displayWidth*6/35 && mouseY<=displayWidth*6/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(red);
rect(displayWidth*1/35, displayWidth*6/35, fillButton, fillButton);
strokeWeight(0);
if(mouseX>=displayWidth*2/35 && mouseX<=displayWidth*2/35+fillButton && mouseY>= displayWidth*6/35 && mouseY<=displayWidth*6/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(rorange);
rect(displayWidth*2/35, displayWidth*6/35, fillButton, fillButton);
strokeWeight(0);
if(mouseX>=displayWidth*3/35 && mouseX<=displayWidth*3/35+fillButton && mouseY>= displayWidth*6/35 && mouseY<=displayWidth*6/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(orange);
rect(displayWidth*3/35, displayWidth*6/35, fillButton, fillButton);
strokeWeight(0);
if(mouseX>=displayWidth*4/35 && mouseX<=displayWidth*4/35+fillButton && mouseY>= displayWidth*6/35 && mouseY<=displayWidth*6/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(yorange);
rect(displayWidth*4/35, displayWidth*6/35, fillButton, fillButton);
strokeWeight(0);
//row 2
if(mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+fillButton && mouseY>= displayWidth*7/35 && mouseY<=displayWidth*7/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(yellow);
rect(displayWidth*1/35, displayWidth*7/35, fillButton, fillButton);
strokeWeight(0);
if(mouseX>=displayWidth*2/35 && mouseX<=displayWidth*2/35+fillButton && mouseY>= displayWidth*7/35 && mouseY<=displayWidth*7/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(ygreen);
rect(displayWidth*2/35, displayWidth*7/35, fillButton, fillButton);
strokeWeight(0);
if(mouseX>=displayWidth*3/35 && mouseX<=displayWidth*3/35+fillButton && mouseY>= displayWidth*7/35 && mouseY<=displayWidth*7/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(green);
rect(displayWidth*3/35, displayWidth*7/35, fillButton, fillButton);
strokeWeight(0);
if(mouseX>=displayWidth*4/35 && mouseX<=displayWidth*4/35+fillButton && mouseY>= displayWidth*7/35 && mouseY<=displayWidth*7/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(bgreen);
rect(displayWidth*4/35, displayWidth*7/35, fillButton, fillButton);
strokeWeight(0);
//row 3
if(mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+fillButton && mouseY>= displayWidth*8/35 && mouseY<=displayWidth*8/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(blue);
rect(displayWidth*1/35, displayWidth*8/35, fillButton, fillButton);
strokeWeight(0);
if(mouseX>=displayWidth*2/35 && mouseX<=displayWidth*2/35+fillButton && mouseY>= displayWidth*8/35 && mouseY<=displayWidth*8/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(bviolet);
rect(displayWidth*2/35, displayWidth*8/35, fillButton, fillButton);
strokeWeight(0);
if(mouseX>=displayWidth*3/35 && mouseX<=displayWidth*3/35+fillButton && mouseY>= displayWidth*8/35 && mouseY<=displayWidth*8/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(violet);
rect(displayWidth*3/35, displayWidth*8/35, fillButton, fillButton);
strokeWeight(0);
if(mouseX>=displayWidth*4/35 && mouseX<=displayWidth*4/35+fillButton && mouseY>= displayWidth*8/35 && mouseY<=displayWidth*8/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(rviolet);
rect(displayWidth*4/35, displayWidth*8/35, fillButton, fillButton);
strokeWeight(0);
//row 4
if(mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+fillButton && mouseY>= displayWidth*9/35 && mouseY<=displayWidth*9/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(black);
rect(displayWidth*1/35, displayWidth*9/35, fillButton, fillButton);
strokeWeight(0);
if(mouseX>=displayWidth*2/35 && mouseX<=displayWidth*2/35+fillButton && mouseY>= displayWidth*9/35 && mouseY<=displayWidth*9/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(dgrey);
rect(displayWidth*2/35, displayWidth*9/35, fillButton, fillButton);
strokeWeight(0);
if(mouseX>=displayWidth*3/35 && mouseX<=displayWidth*3/35+fillButton && mouseY>= displayWidth*9/35 && mouseY<=displayWidth*9/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(white);
rect(displayWidth*3/35, displayWidth*9/35, fillButton, fillButton);
strokeWeight(0);
if(mouseX>=displayWidth*4/35 && mouseX<=displayWidth*4/35+fillButton && mouseY>= displayWidth*9/35 && mouseY<=displayWidth*9/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(backgroundColour);
rect(displayWidth*4/35, displayWidth*9/35, fillButton, fillButton);
strokeWeight(0);
//
//Stroke buttons
if (mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+strokeWidth && mouseY>=displayWidth*11/35 && mouseY<=displayWidth*11/35+strokeHeight){ 
  strokeWeight(2);
  fill(yellow);
  rect(displayWidth*1/35, displayWidth*11/35, strokeWidth, strokeHeight);
} else {
  strokeWeight(0);
  fill(white);
  rect(displayWidth*1/35, displayWidth*11/35, strokeWidth, strokeHeight);
}
if (mouseX>=displayWidth*2/35 && mouseX<=displayWidth*2/35+strokeWidth && mouseY>=displayWidth*11/35 && mouseY<=displayWidth*11/35+strokeHeight){ 
  strokeWeight(2);
  fill(yellow);
  rect(displayWidth*2/35, displayWidth*11/35, strokeWidth, strokeHeight);
} else {
  strokeWeight(0);
  fill(white);
  rect(displayWidth*2/35, displayWidth*11/35, strokeWidth, strokeHeight);
}
if (mouseX>=displayWidth*3/35 && mouseX<=displayWidth*3/35+strokeWidth && mouseY>=displayWidth*11/35 && mouseY<=displayWidth*11/35+strokeHeight){ 
  strokeWeight(2);
  fill(yellow);
  rect(displayWidth*3/35, displayWidth*11/35, strokeWidth, strokeHeight);
} else {
  strokeWeight(0);
  fill(white);
  rect(displayWidth*3/35, displayWidth*11/35, strokeWidth, strokeHeight);
}
if (mouseX>=displayWidth*4/35 && mouseX<=displayWidth*4/35+strokeWidth && mouseY>=displayWidth*11/35 && mouseY<=displayWidth*11/35+strokeHeight){ 
  strokeWeight(2);
  fill(yellow);
  rect(displayWidth*4/35, displayWidth*11/35, strokeWidth, strokeHeight);
} else {
  strokeWeight(0);
  fill(white);
  rect(displayWidth*4/35, displayWidth*11/35, strokeWidth, strokeHeight);
}
//
//Shape buttons
if (mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+strokeWidth && mouseY>=displayWidth*514/1295 && mouseY<=displayWidth*514/1295+strokeHeight){ 
  strokeWeight(2);
  fill(yellow);
  rect(displayWidth*1/35, displayWidth*514/1295, strokeWidth, strokeHeight);
} else {
  strokeWeight(0);
  fill(white);
  rect(displayWidth*1/35, displayWidth*514/1295, strokeWidth, strokeHeight);
}

if (mouseX>=displayWidth*2/35 && mouseX<=displayWidth*2/35+strokeWidth && mouseY>=displayWidth*514/1295 && mouseY<=displayWidth*514/1295+strokeHeight){ 
  strokeWeight(2);
  fill(yellow);
  rect(displayWidth*2/35, displayWidth*514/1295, strokeWidth, strokeHeight);
} else {
  strokeWeight(0);
  fill(white);
  rect(displayWidth*2/35, displayWidth*514/1295, strokeWidth, strokeHeight);
}
if (mouseX>=displayWidth*3/35 && mouseX<=displayWidth*3/35+strokeWidth && mouseY>=displayWidth*514/1295 && mouseY<=displayWidth*514/1295+strokeHeight){ 
  strokeWeight(2);
  fill(yellow);
  rect(displayWidth*3/35, displayWidth*514/1295, strokeWidth, strokeHeight);
} else {
  strokeWeight(0);
  fill(white);
  rect(displayWidth*3/35, displayWidth*514/1295, strokeWidth, strokeHeight);
}
if (mouseX>=displayWidth*4/35 && mouseX<=displayWidth*4/35+strokeWidth && mouseY>=displayWidth*514/1295 && mouseY<=displayWidth*514/1295+strokeHeight){ 
  strokeWeight(2);
  fill(yellow);
  rect(displayWidth*4/35, displayWidth*514/1295, strokeWidth, strokeHeight);
} else {
  strokeWeight(0);
  fill(white);
  rect(displayWidth*4/35, displayWidth*514/1295, strokeWidth, strokeHeight);
}
//
strokeWeight(strokeReset);
fill(white);
//
if (paper==true) GUISetup();
//
//Music Progress Bar
rect(displayWidth*16/35, displayHeight*27/28, progressBarWidth, progressBarHeight);
fill(black);
rect(displayWidth*16/35, displayHeight*27/28,(float(song[currentSong].position())/float(song[currentSong].length()))*progressBarWidth, progressBarHeight);
fill(white);
ellipse(displayWidth*16/35+(float(song[currentSong].position())/float(song[currentSong].length()))*progressBarWidth, displayHeight*27/28+displayHeight*1/400, displayHeight*1/125,displayHeight*1/125);
//
//Volume Slider
rect(displayWidth*30/35, displayHeight*27/28, displayWidth*4/35, progressBarHeight);
fill(black);
if(volumeButton<=1 && volumeButton>=0)rect(displayWidth*30/35, displayHeight*27/28, (volumeButton*displayWidth*4/35), progressBarHeight);
if(volumeButton>=1 )rect(displayWidth*30/35, displayHeight*27/28, (displayWidth*4/35), progressBarHeight);
fill(white);
//
//Music Buttons
rect(displayWidth*17/35, displayHeight*50/56, fillButton, fillButton);
rect(displayWidth*37/70, displayHeight*50/56, fillButton, fillButton);
rect(displayWidth*23/35, displayHeight*50/56, fillButton, fillButton);
rect(displayWidth*43/70, displayHeight*50/56, fillButton, fillButton);
rect(displayWidth*20/35, displayHeight*50/56, fillButton, fillButton);
}//End GUIDraw
//
